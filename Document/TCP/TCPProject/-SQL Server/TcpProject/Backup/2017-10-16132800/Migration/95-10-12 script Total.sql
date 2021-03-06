USE [Test]
GO
/****** Object:  Table [dbo].[fodcolor]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fodcolor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nam] [nvarchar](50) NULL,
 CONSTRAINT [PK_fodcolor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[foddevice]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foddevice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[us] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[timepage] [int] NULL,
	[forgetcode] [bit] NULL,
	[cohort] [bit] NULL,
	[secondpass] [nvarchar](50) NULL,
	[self] [int] NULL,
	[recBreakfast] [bit] NULL,
	[message] [text] NULL,
	[suit] [bit] NULL,
	[progWeekday] [nvarchar](50) NULL,
	[enableLog] [bit] NULL,
	[nam] [nvarchar](50) NULL,
	[ip] [nvarchar](50) NULL,
	[iddevice] [int] NULL,
 CONSTRAINT [PK_fodoption] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fodlog]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fodlog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cdn] [nvarchar](50) NULL,
	[codeforget] [nvarchar](50) NULL,
	[us] [nvarchar](50) NULL,
	[nam] [nvarchar](1000) NULL,
	[foodstatus] [int] NULL,
	[food] [nvarchar](500) NULL,
	[color] [int] NULL,
	[kind] [int] NULL,
	[deviceId] [int] NULL,
	[selfId] [int] NULL,
	[datrecive] [nvarchar](100) NULL,
	[msgfoodid] [int] NULL,
	[date] [nvarchar](100) NULL,
 CONSTRAINT [PK_fodlog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fodmember]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fodmember](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nam] [nvarchar](50) NULL,
	[fam] [nvarchar](50) NULL,
	[us] [nvarchar](50) NOT NULL,
	[us2] [nvarchar](50) NULL,
	[ps] [nvarchar](50) NULL,
	[grp] [int] NULL,
	[contract] [nvarchar](250) NULL,
	[org] [nvarchar](250) NULL,
	[prf] [int] NULL,
	[suit] [nvarchar](50) NULL,
	[yer] [int] NULL,
	[cartnumber] [nvarchar](50) NULL,
	[cdn] [nvarchar](50) NULL,
	[cerdit3] [float] NULL,
	[cerdit2] [float] NULL,
	[cerdit] [float] NULL,
	[status] [int] NULL,
	[gen] [nvarchar](50) NULL,
	[pn] [nvarchar](50) NULL,
	[cm] [nvarchar](50) NULL,
	[cforgetcode] [int] NULL,
	[acc] [nvarchar](5) NULL,
	[subgrp] [int] NULL,
	[picn] [nvarchar](50) NULL,
	[info] [nvarchar](50) NULL,
	[vote] [nvarchar](50) NULL,
	[subpart] [int] NULL,
	[cert] [int] NULL,
	[breackfast] [int] NULL,
	[dinner] [int] NULL,
	[dayrecive] [nvarchar](20) NULL,
	[kindcart] [int] NULL,
	[comm] [nvarchar](4000) NULL,
	[bself] [int] NULL,
	[lself] [int] NULL,
	[dself] [int] NULL,
	[secondpass] [nvarchar](50) NULL,
	[foodcell] [nvarchar](50) NULL,
	[foodmail] [nvarchar](50) NULL,
	[expdate] [datetime] NULL,
	[expdatf] [nvarchar](50) NULL,
	[cf] [int] NULL,
 CONSTRAINT [PK_fodmember_1] PRIMARY KEY CLUSTERED 
(
	[us] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fodprogram]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fodprogram](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dat] [datetime] NULL,
	[pdat] [nvarchar](50) NULL,
	[day] [int] NULL,
	[price] [int] NULL,
	[dayprice] [int] NULL,
	[price2] [int] NULL,
	[dayprice2] [int] NULL,
	[price3] [int] NULL,
	[dayprice3] [int] NULL,
	[price4] [int] NULL,
	[dayprice4] [int] NULL,
	[vade] [int] NULL,
	[color] [int] NULL,
	[status] [int] NULL,
	[grp] [int] NULL,
	[foodid] [int] NULL,
	[drink] [nvarchar](500) NULL,
	[free] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fodrezerv]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fodrezerv](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[us] [nvarchar](50) NULL,
	[pdat] [nvarchar](50) NULL,
	[dat] [datetime] NULL,
	[programid] [int] NULL,
	[datselect] [nvarchar](50) NULL,
	[ipselect] [nvarchar](50) NULL,
	[foodstatus] [int] NULL,
	[kind] [int] NULL,
	[selfid] [int] NULL,
	[devicid] [int] NULL,
	[datrecive] [nvarchar](100) NULL,
	[codforget] [nvarchar](50) NULL,
	[vade] [int] NULL,
	[color] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fodself]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fodself](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number] [int] NULL,
	[nam] [nvarchar](50) NULL,
	[gen] [int] NULL,
	[count] [int] NULL,
	[address] [nvarchar](50) NULL,
	[comm] [nvarchar](50) NULL,
	[status] [int] NULL,
	[c1] [int] NULL,
 CONSTRAINT [PK_fodself] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fodselfgrp]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fodselfgrp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[grp] [int] NULL,
	[idself] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fodselfprog]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fodselfprog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idp] [int] NULL,
	[idself] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[foduserfood]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foduserfood](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nam] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gitdevice]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gitdevice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ipmain] [nvarchar](50) NOT NULL,
	[ipforegin] [nvarchar](50) NOT NULL,
	[namedevice] [nvarchar](50) NOT NULL,
	[active] [bit] NOT NULL,
	[zoon] [nvarchar](50) NOT NULL,
	[direction] [int] NOT NULL,
	[gen] [int] NOT NULL,
	[netStatus] [bit] NOT NULL,
	[timpssage] [int] NOT NULL,
	[timserver] [int] NOT NULL,
 CONSTRAINT [PK_gitdevice] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giterror]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giterror](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[error] [text] NOT NULL,
	[ip] [nvarchar](50) NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_giterror] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gitlog]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gitlog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [nvarchar](50) NOT NULL,
	[nam] [nvarchar](50) NOT NULL,
	[pic] [nvarchar](50) NULL,
	[direction] [int] NOT NULL,
	[tim] [smalldatetime] NOT NULL,
	[dat] [datetime] NOT NULL,
	[deviceId] [int] NOT NULL,
	[typepass] [int] NULL,
	[commentId] [int] NOT NULL,
 CONSTRAINT [PK_gitlog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gitlogOperator]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gitlogOperator](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ip] [nvarchar](50) NOT NULL,
	[us] [nvarchar](50) NOT NULL,
	[tim] [smalldatetime] NULL,
	[dat] [datetime] NOT NULL,
	[msgopId] [int] NOT NULL,
	[descript] [nvarchar](1000) NULL,
 CONSTRAINT [PK_gitlogOperator] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gitmessage]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gitmessage](
	[id] [int] NOT NULL,
	[message] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_gitmessage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gitmsgOperator]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gitmsgOperator](
	[id] [int] NOT NULL,
	[messageUser] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_gitmegOperator] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gitoperator]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gitoperator](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nam] [nvarchar](50) NOT NULL,
	[fam] [nvarchar](50) NOT NULL,
	[us] [nvarchar](50) NOT NULL,
	[pass] [nvarchar](50) NOT NULL,
	[timshowpic] [int] NOT NULL,
	[recordcount] [int] NOT NULL,
	[datcreate] [datetime] NOT NULL,
 CONSTRAINT [PK_gitoperator] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gitoption]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gitoption](
	[datstartsuit] [datetime] NOT NULL,
	[pdatstartsuit] [nvarchar](50) NULL,
	[datendsuit] [datetime] NOT NULL,
	[pdatendsuit] [nvarchar](50) NULL,
	[genzoonw] [int] NOT NULL,
	[genzoonm] [int] NOT NULL,
	[emergency] [int] NOT NULL,
	[port] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gitpermit]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gitpermit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[deviceId] [int] NOT NULL,
	[operatorId] [int] NOT NULL,
 CONSTRAINT [PK_gitpermit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gituser]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gituser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [nvarchar](50) NOT NULL,
	[cdn] [nvarchar](50) NOT NULL,
	[nam] [nvarchar](50) NOT NULL,
	[fam] [nvarchar](50) NOT NULL,
	[gen] [int] NOT NULL,
	[suitmem] [int] NOT NULL,
	[suitname] [nvarchar](50) NOT NULL,
	[pic] [nvarchar](50) NULL,
	[startdat] [datetime] NOT NULL,
	[pstartdat] [nvarchar](50) NULL,
	[enddat] [datetime] NOT NULL,
	[penddat] [nvarchar](50) NULL,
	[active] [bit] NOT NULL,
	[typepass] [int] NULL,
	[type] [int] NOT NULL,
	[comment] [nvarchar](1000) NULL,
 CONSTRAINT [PK_gituser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HC.direction]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HC.direction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [int] NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HC.direction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbcatalog]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbcatalog](
	[stu_id] [numeric](18, 0) NOT NULL,
	[pass] [nvarchar](20) NULL,
	[nam] [nvarchar](35) NULL,
	[fam] [nvarchar](35) NULL,
	[acc] [nvarchar](3) NULL,
	[yer] [nvarchar](4) NULL,
	[trm] [nvarchar](2) NULL,
	[part] [nvarchar](30) NULL,
	[cert] [numeric](10, 0) NULL,
	[unvn] [numeric](10, 0) NULL,
	[major] [numeric](10, 0) NULL,
	[gen] [nvarchar](5) NULL,
	[stk] [nvarchar](50) NULL,
	[trns] [nvarchar](50) NULL,
	[trnk] [nvarchar](50) NULL,
	[info] [nvarchar](3) NULL,
	[vote] [nvarchar](3) NULL,
	[oldsport] [nvarchar](3) NULL,
	[mentalhealth] [nvarchar](3) NULL,
	[physicalhealth] [nvarchar](3) NULL,
	[zam] [nvarchar](3) NULL,
	[picn] [nvarchar](50) NULL,
	[pshn1] [nvarchar](50) NULL,
	[pshn2] [nvarchar](50) NULL,
	[pzmn1] [nvarchar](50) NULL,
	[pzmn2] [nvarchar](50) NULL,
	[pzmnd1] [nvarchar](50) NULL,
	[pzmnd2] [nvarchar](50) NULL,
	[pghez] [nvarchar](50) NULL,
	[pcodm] [nvarchar](50) NULL,
	[suit] [nvarchar](3) NULL,
	[suitmem] [nvarchar](3) NULL,
	[bomi] [nvarchar](3) NULL,
	[c_vah] [nvarchar](50) NULL,
	[c_vaht] [nvarchar](50) NULL,
	[c_fin] [nvarchar](3) NULL,
	[c_ctrm] [nvarchar](50) NULL,
	[ave] [nvarchar](50) NULL,
	[ave2] [float] NULL,
	[ave5] [nvarchar](50) NULL,
	[ave4] [nvarchar](50) NULL,
	[ave3] [nvarchar](50) NULL,
	[thl] [nvarchar](3) NULL,
	[thld] [nvarchar](50) NULL,
	[datf] [nvarchar](50) NULL,
	[dat] [nvarchar](50) NULL,
	[edat] [datetime] NULL,
	[sdat] [datetime] NULL,
	[getdat] [datetime] NULL,
	[nbook] [nvarchar](50) NULL,
	[firstdat] [datetime] NULL,
	[btyp] [nvarchar](50) NULL,
	[shp] [nvarchar](50) NULL,
	[shr] [nvarchar](50) NULL,
	[baygani] [nvarchar](50) NULL,
	[usbaygani] [nvarchar](50) NULL,
	[datbaygani] [datetime] NULL,
	[account] [nvarchar](50) NULL,
	[nbank] [nvarchar](50) NULL,
	[cbank] [nvarchar](50) NULL,
	[c_suit] [nvarchar](50) NULL,
	[baykind] [nvarchar](50) NULL,
	[us] [nvarchar](50) NULL,
	[ps] [nvarchar](50) NULL,
	[namsrp] [nvarchar](50) NULL,
	[nesbat] [nvarchar](50) NULL,
	[celsrp] [nvarchar](50) NULL,
	[adressrp] [nvarchar](1500) NULL,
	[stusign] [nvarchar](50) NULL,
	[parsign] [nvarchar](50) NULL,
	[idostansrp] [int] NULL,
	[idcitysrp] [int] NULL,
	[codpsrp] [nvarchar](50) NULL,
	[sport] [nvarchar](3) NULL,
	[state] [int] NULL,
	[discipline] [nvarchar](2500) NULL,
	[datchang] [datetime] NULL,
	[pdatchang] [nvarchar](50) NULL,
	[intro] [int] NULL,
	[cod1394] [int] NULL,
	[timcod] [nvarchar](50) NULL,
	[ipcod] [nvarchar](50) NULL,
	[modir] [nvarchar](50) NULL,
	[nogi] [bigint] NULL,
	[birthday] [datetime] NULL,
	[father] [nvarchar](50) NULL,
	[melliat] [nvarchar](50) NULL,
	[cdn] [nvarchar](50) NULL,
	[gozarname] [nvarchar](50) NULL,
	[sanjeshaddress] [nvarchar](max) NULL,
	[idostan] [int] NULL,
	[idcity] [int] NULL,
	[failor] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tboptaghzieh]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tboptaghzieh](
	[st1] [nvarchar](5) NULL,
	[st2] [nvarchar](5) NULL,
	[st3] [nvarchar](5) NULL,
	[status] [nvarchar](5) NULL,
	[azad] [nvarchar](5) NULL,
	[enseraf] [nvarchar](5) NULL,
	[rezdays] [int] NULL,
	[privateself] [nvarchar](5) NULL,
	[v1t1] [nvarchar](5) NULL,
	[v1t2] [nvarchar](5) NULL,
	[v1t3] [nvarchar](5) NULL,
	[v1t4] [nvarchar](5) NULL,
	[v1t5] [nvarchar](5) NULL,
	[v1t6] [nvarchar](5) NULL,
	[v2t1] [nvarchar](5) NULL,
	[v2t2] [nvarchar](5) NULL,
	[v2t3] [nvarchar](5) NULL,
	[v2t4] [nvarchar](5) NULL,
	[v2t5] [nvarchar](5) NULL,
	[v2t6] [nvarchar](5) NULL,
	[v3t1] [nvarchar](5) NULL,
	[v3t2] [nvarchar](5) NULL,
	[v3t3] [nvarchar](5) NULL,
	[v3t4] [nvarchar](5) NULL,
	[v3t5] [nvarchar](5) NULL,
	[v3t6] [nvarchar](5) NULL,
	[message1] [nvarchar](4000) NULL,
	[message2] [nvarchar](4000) NULL,
	[message3] [nvarchar](4000) NULL,
	[message4] [nvarchar](4000) NULL,
	[message5] [nvarchar](4000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbreqguest]    Script Date: 02/01/2017 02:33:41 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbreqguest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [nvarchar](50) NOT NULL,
	[nam] [nvarchar](50) NOT NULL,
	[fam] [nvarchar](50) NOT NULL,
	[kind] [int] NOT NULL,
	[stuguest] [nvarchar](50) NULL,
	[namguest] [nvarchar](50) NULL,
	[cdnguest] [nvarchar](50) NULL,
	[nesbat] [nvarchar](50) NULL,
	[dats] [datetime] NULL,
	[pdats] [nvarchar](50) NULL,
	[datf] [datetime] NULL,
	[pdatf] [nvarchar](50) NULL,
	[cday] [int] NULL,
	[nesbatdet] [nvarchar](50) NULL,
	[status] [int] NULL,
	[dat] [datetime] NULL,
	[pdat] [nvarchar](50) NULL,
	[suitx] [int] NULL,
	[modirnam] [nvarchar](50) NULL,
	[commodir] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbreqguest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[gitlogOperator]  WITH CHECK ADD  CONSTRAINT [FK_gitlogOperator_gitmegOperator] FOREIGN KEY([msgopId])
REFERENCES [dbo].[gitmsgOperator] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[gitlogOperator] CHECK CONSTRAINT [FK_gitlogOperator_gitmegOperator]
GO
ALTER TABLE [dbo].[gitpermit]  WITH CHECK ADD  CONSTRAINT [FK_gitpermit_gitdevice] FOREIGN KEY([deviceId])
REFERENCES [dbo].[gitdevice] ([id])
GO
ALTER TABLE [dbo].[gitpermit] CHECK CONSTRAINT [FK_gitpermit_gitdevice]
GO
ALTER TABLE [dbo].[gitpermit]  WITH CHECK ADD  CONSTRAINT [FK_gitpermit_gitoperator] FOREIGN KEY([operatorId])
REFERENCES [dbo].[gitoperator] ([id])
GO
ALTER TABLE [dbo].[gitpermit] CHECK CONSTRAINT [FK_gitpermit_gitoperator]
GO
