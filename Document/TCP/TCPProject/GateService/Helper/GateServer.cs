﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using BaseDAL.Model;
using Common.Network.Core;

namespace GateService.Helper
{
    public class GateServer
    {
        #region Events
        public event Common.Network.Core.NetTcpServer.Start onStart;
        public event Common.Network.Core.NetTcpServer.Stop onStop;
        public event Common.Network.Core.NetTcpServer.ReceiveData onReceiveData;
        public event Common.Network.Core.NetTcpServer.SendData onSendData;
        public event Common.Network.Core.NetTcpServer.Error onError;

        #endregion

        #region Variables

        private TimeSpan _connectorInterval, _writeInterval;
        private NetTcpServer tcpServer;
        private int connectCount = 0;
        private NetTcpClient tcpClient;
        private int prt;
        #endregion

        #region Properties
        /// <summary>
        /// Connect interval
        /// </summary>		
        public TimeSpan connectorInterval
        {
            get
            {
                if (null == _connectorInterval)
                    _connectorInterval = new TimeSpan(0, 0, 15);

                return _connectorInterval;
            }
            set
            {
                _connectorInterval = value;
            }
        }

        /// <summary>
        /// Write Interval
        /// </summary>		 
        public TimeSpan writeInterval
        {
            get
            {
                if (null == _writeInterval)
                    _writeInterval = new TimeSpan(0, 0, 5);

                return _writeInterval;
            }
            set
            {
                _writeInterval = value;
            }
        }

        #endregion

        #region Methods
        public GateServer(int port, int bufferSize)
        {
            prepare();

            tcpServer = new NetTcpServer(port, bufferSize);

            tcpServer.onReceiveData += TcpServer_onReceiveData;
            tcpServer.onSendData += TcpServer_onSendData;
            tcpServer.onStop += TcpServer_onStop;
            tcpServer.onStart += TcpServer_onStart;
        }

        /// <summary>
        /// Prepare
        /// </summary>
        private void prepare()
        {
            prt = Convert.ToInt32(ConfigurationManager.AppSettings["port"]);

        }

        /// <summary>
        /// On Start Tcp Server 
        /// </summary>
        /// <param name="sender"></param>
        private void TcpServer_onStart(NetTcpServer sender)
        {
            if (null != onStart)
            {
                onStart(sender);
            }
        }
        /// <summary>
        /// On Stop Tcp Server
        /// </summary>
        /// <param name="sender"></param>
        private void TcpServer_onStop(NetTcpServer sender)
        {
            if (null != onStop)
            {
                onStop(sender);
            }
        }
        
        /// <summary>
        /// On Send Data Tcp Server
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="client"></param>
        /// <param name="data"></param>
        private void TcpServer_onSendData(NetTcpServer sender, NetTcpClient client, BaseDAL.Model.CommandResult data)
        {
            if (null != onSendData)
                onSendData(sender, client, data);
        }

        /// <summary>
        /// On Receive Data Tcp Server
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="client"></param>
        /// <param name="data"></param>
        private void TcpServer_onReceiveData(NetTcpServer sender, NetTcpClient client, BaseDAL.Model.CommandResult data)
        {
            if (null != onReceiveData)
            {
                onReceiveData(sender, client, data);

                parseData(client, data);

            }
        }

        /// <summary>
        /// Parse Data Tcp server
        /// </summary>
        /// <param name="client"></param>
        /// <param name="data"></param>
        public void parseData(NetTcpClient client, CommandResult data)
        {
            try
            {
                //data = "idDevice|command"   :: 1|[53011] or 1|[54011]


                if ((null != client) && (null != data) && !data.message.isNullOrEmptyOrWhiteSpaceOrLen())
                {
                    DataTable res = data.model as DataTable;
                    string[] words = Encoding.UTF8.GetString(data.model as byte[]).Split('|');

                    int id = Convert.ToInt32(words[0]);

                    Common.BLL.Entity.XGate.gatedevice gateDeviceModel =
                        new Common.BLL.Entity.XGate.gatedevice()
                        {
                            id = id
                        };

                    Common.BLL.Logic.XGate.gatedevice lGateDevice =
                        new Common.BLL.Logic.XGate.gatedevice(Common.Enum.EDatabase.xGate);


                    CommandResult result = lGateDevice.read(gateDeviceModel, "id");

                    DataTable resultTable = result.model as DataTable;

                    if (resultTable.Rows.Count > 0)
                    {
                        string IpAddress = resultTable.Rows[0]["ip"].ToString();

                        tcpClient = new NetTcpClient(IpAddress, prt, 1024);

                        tcpClient.connect();

                        try
                        {
                            tcpClient.write(words[1]);
                            tcpClient.flush();
                        }
                        catch (Exception ex)
                        {
                            string s = ex.Message;
                        }
                        tcpClient.disconnect();

                    }
                }
            }
            catch (Exception ex)
            {
                LoggerExtensionSQL.logMain(ex);
            }
        }

        /// <summary>
        /// Start Tcp Server
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void start()
        {
            tcpServer.start();
        }

        /// <summary>
        /// Stop Tcp Server
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void stop()
        {
            tcpServer.stop();
        }

        #endregion
    }
}