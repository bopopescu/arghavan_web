using System;
using System.Data;
using BaseDAL.Model;

namespace Common.BLL.Entity.XGate
{
	[Serializable]
	public class gateoption : BaseBLL.Entity.BaseByViewId
	{
		
		[BaseBLL.Base.Field(nullable=false,sqlDBType=System.Data.SqlDbType.Int,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create)]
		public System.Int32 id
		{
			get;
			set;
		}
//
	// Genereted Property of gateoption_gatedevice
	//
	#region Relation - gateoption_gatedevice (Has-Many relation)
		private System.Data.DataTable _get_gateoption_gatedevice_gateoption_id;
		public System.Data.DataTable getgateoption_gatedevice_gateoption_id
		{
			get
			{
				if ((_get_gateoption_gatedevice_gateoption_id == null) && (AutoLoadForeignKeys))
					loadgateoption_gatedevice_gateoption_id ();

				return _get_gateoption_gatedevice_gateoption_id;
			}
			set
			{
				_get_gateoption_gatedevice_gateoption_id	= value;
			}
		}

		public void loadgateoption_gatedevice_gateoption_id (int pageIndex = -1, int pageSize = 100)
		{
			CommandResult	opResult;

			BLL.Logic.XGate.gateoption_gatedevice	logic	= new BLL.Logic.XGate.gateoption_gatedevice ("XGate");
			if (pageIndex == -1)
				opResult	= logic.allData ("gateoption_id = @gateoption_id", "", false, true, new KeyValuePair ("@gateoption_id", id));
			else
				opResult	= logic.allByPaging ( pageIndex, pageSize, "gateoption_id = @gateoption_id", "", false, true, new KeyValuePair ("@gateoption_id", id));

			if (opResult.status == BaseDAL.Base.EnumCommandStatus.success)
				_get_gateoption_gatedevice_gateoption_id	= opResult.model as System.Data.DataTable;
		}
	#endregion

		[BaseBLL.Base.Field(nullable=true,sqlDBType=System.Data.SqlDbType.UniqueIdentifier,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create)]
		public Nullable<System.Guid> viewId
		{
			get;
			set;
		}

		[BaseBLL.Base.Field(nullable=false,sqlDBType=System.Data.SqlDbType.Date,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create)]
		public System.DateTime startDate
		{
			get;
			set;
		}

		[BaseBLL.Base.Field(nullable=false,sqlDBType=System.Data.SqlDbType.Date,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create)]
		public System.DateTime endDate
		{
			get;
			set;
		}

		[BaseBLL.Base.Field(nullable=false,sqlDBType=System.Data.SqlDbType.Int,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create,foreignLogicType=typeof (BLL.Logic.XGate.gatezone),foreignField="id")]
		public System.Int32 genzonew_id
		{
			get;
			set;
		}
//
	// Genereted Property of genzonew_id
	//
	#region Referenced Property - gatezone
		BLL.Entity.XGate.gatezone _gatezone_genzonew_id;
		public BLL.Entity.XGate.gatezone gatezone_genzonew_id
		{
			get
			{
				if ((null == _gatezone_genzonew_id) && (AutoLoadForeignKeys))
					load_gatezone_genzonew_id ();
				return _gatezone_genzonew_id;
			}
			set
			{
				_gatezone_genzonew_id	= value;
			}
		}

		public void load_gatezone_genzonew_id ()
		{ 
			BLL.Entity.XGate.gatezone	entity;
			BLL.Logic.XGate.gatezone	logic;

			entity	= new BLL.Entity.XGate.gatezone () { id = genzonew_id };
			logic	= new BLL.Logic.XGate.gatezone ("XGate");
			logic.read (entity);

			_gatezone_genzonew_id	= entity;
		}
	#endregion

		[BaseBLL.Base.Field(nullable=false,sqlDBType=System.Data.SqlDbType.Int,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create,foreignLogicType=typeof (BLL.Logic.XGate.gatezone),foreignField="id")]
		public System.Int32 genzonem_id
		{
			get;
			set;
		}
//
	// Genereted Property of genzonem_id
	//
	#region Referenced Property - gatezone
		BLL.Entity.XGate.gatezone _gatezone_genzonem_id;
		public BLL.Entity.XGate.gatezone gatezone_genzonem_id
		{
			get
			{
				if ((null == _gatezone_genzonem_id) && (AutoLoadForeignKeys))
					load_gatezone_genzonem_id ();
				return _gatezone_genzonem_id;
			}
			set
			{
				_gatezone_genzonem_id	= value;
			}
		}

		public void load_gatezone_genzonem_id ()
		{ 
			BLL.Entity.XGate.gatezone	entity;
			BLL.Logic.XGate.gatezone	logic;

			entity	= new BLL.Entity.XGate.gatezone () { id = genzonem_id };
			logic	= new BLL.Logic.XGate.gatezone ("XGate");
			logic.read (entity);

			_gatezone_genzonem_id	= entity;
		}
	#endregion

		[BaseBLL.Base.Field(nullable=true,sqlDBType=System.Data.SqlDbType.TinyInt,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create)]
		public Nullable<System.Byte> emergency
		{
			get;
			set;
		}

		[BaseBLL.Base.Field(nullable=false,sqlDBType=System.Data.SqlDbType.Int,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create)]
		public System.Int32 port
		{
			get;
			set;
		}

		[BaseBLL.Base.Field(nullable=true,sqlDBType=System.Data.SqlDbType.Int,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create,foreignLogicType=typeof (BLL.Logic.XGate.gateoperator),foreignField="id")]
		public Nullable<System.Int32> created_id
		{
			get;
			set;
		}
//
	// Genereted Property of created_id
	//
	#region Referenced Property - gateoperator
		BLL.Entity.XGate.gateoperator _gateoperator_created_id;
		public BLL.Entity.XGate.gateoperator gateoperator_created_id
		{
			get
			{
				if ((null == _gateoperator_created_id) && (created_id.HasValue) && (AutoLoadForeignKeys))
					load_gateoperator_created_id ();
				return _gateoperator_created_id;
			}
			set
			{
				_gateoperator_created_id	= value;
			}
		}

		public void load_gateoperator_created_id ()
		{ 
			BLL.Entity.XGate.gateoperator	entity;
			BLL.Logic.XGate.gateoperator	logic;

			entity	= new BLL.Entity.XGate.gateoperator () { id = created_id.Value };
			logic	= new BLL.Logic.XGate.gateoperator ("XGate");
			logic.read (entity);

			_gateoperator_created_id	= entity;
		}
	#endregion

		[BaseBLL.Base.Field(nullable=true,sqlDBType=System.Data.SqlDbType.DateTime,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create)]
		public Nullable<System.DateTime> created_at
		{
			get;
			set;
		}

		[BaseBLL.Base.Field(nullable=true,sqlDBType=System.Data.SqlDbType.Int,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create,foreignLogicType=typeof (BLL.Logic.XGate.gateoperator),foreignField="id")]
		public Nullable<System.Int32> updated_id
		{
			get;
			set;
		}
//
	// Genereted Property of updated_id
	//
	#region Referenced Property - gateoperator
		BLL.Entity.XGate.gateoperator _gateoperator_updated_id;
		public BLL.Entity.XGate.gateoperator gateoperator_updated_id
		{
			get
			{
				if ((null == _gateoperator_updated_id) && (updated_id.HasValue) && (AutoLoadForeignKeys))
					load_gateoperator_updated_id ();
				return _gateoperator_updated_id;
			}
			set
			{
				_gateoperator_updated_id	= value;
			}
		}

		public void load_gateoperator_updated_id ()
		{ 
			BLL.Entity.XGate.gateoperator	entity;
			BLL.Logic.XGate.gateoperator	logic;

			entity	= new BLL.Entity.XGate.gateoperator () { id = updated_id.Value };
			logic	= new BLL.Logic.XGate.gateoperator ("XGate");
			logic.read (entity);

			_gateoperator_updated_id	= entity;
		}
	#endregion

		[BaseBLL.Base.Field(nullable=true,sqlDBType=System.Data.SqlDbType.DateTime,primary=false,usage=BaseBLL.Base.EnumUsage.read | BaseBLL.Base.EnumUsage.update | BaseBLL.Base.EnumUsage.create)]
		public Nullable<System.DateTime> updated_at
		{
			get;
			set;
		}
	}
}