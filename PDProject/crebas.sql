/*==============================================================*/
/* Database name:  SCMDB                                        */
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     2014/8/11 22:37:07                           */
/*==============================================================*/


use SCMDB
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TDEPTGROUP') and o.name = 'FK_TDEPTGRO_REFERENCE_TDEPARTM')
alter table dbo.TDEPTGROUP
   drop constraint FK_TDEPTGRO_REFERENCE_TDEPARTM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TDEPTGROUP') and o.name = 'FK_TDEPTGRO_REFERENCE_TUSER')
alter table dbo.TDEPTGROUP
   drop constraint FK_TDEPTGRO_REFERENCE_TUSER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TGOODS') and o.name = 'FK_TGOODS_REFERENCE_TCATEGORY')
alter table dbo.TGOODS
   drop constraint FK_TGOODS_REFERENCE_TCATEGORY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TGOODS') and o.name = 'FK_TGOODS_REFERENCE_TCATEGORY2ND')
alter table dbo.TGOODS
   drop constraint FK_TGOODS_REFERENCE_TCATEGORY2ND
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TGOODS') and o.name = 'FK_TGOODS_REFERENCE_TDEPARTM')
alter table dbo.TGOODS
   drop constraint FK_TGOODS_REFERENCE_TDEPARTM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TGROUPFUNCTION') and o.name = 'FK_TGROUPFU_REFERENCE_TFUNCTIO')
alter table dbo.TGROUPFUNCTION
   drop constraint FK_TGROUPFU_REFERENCE_TFUNCTIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TGROUPFUNCTION') and o.name = 'FK_TGROUPFU_REFERENCE_TUSERGRO')
alter table dbo.TGROUPFUNCTION
   drop constraint FK_TGROUPFU_REFERENCE_TUSERGRO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TUSER') and o.name = 'FK_TUSER_REFERENCE_TUSERGRO')
alter table dbo.TUSER
   drop constraint FK_TUSER_REFERENCE_TUSERGRO
go

alter table dbo.TCATEGORY
   drop constraint PK_TCATEGORY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TCATEGORY')
            and   type = 'U')
   drop table dbo.TCATEGORY
go

alter table dbo.TCATEGORY2ND
   drop constraint PK_TCATEGORY2ND
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TCATEGORY2ND')
            and   type = 'U')
   drop table dbo.TCATEGORY2ND
go

alter table dbo.TDEPARTMENT
   drop constraint PK_TDEPARTMENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TDEPARTMENT')
            and   type = 'U')
   drop table dbo.TDEPARTMENT
go

alter table dbo.TDEPTGROUP
   drop constraint AK_KEY_1_TDEPTGRO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TDEPTGROUP')
            and   type = 'U')
   drop table dbo.TDEPTGROUP
go

alter table dbo.TFUNCTION
   drop constraint PK_TFUNCTION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TFUNCTION')
            and   type = 'U')
   drop table dbo.TFUNCTION
go

alter table dbo.TGOODS
   drop constraint AK_KEY_2_TGOODS
go

alter table dbo.TGOODS
   drop constraint PK_TGOODS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TGOODS')
            and   type = 'U')
   drop table dbo.TGOODS
go

alter table dbo.TGROUPFUNCTION
   drop constraint AK_KEY_1_TGROUPFU
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TGROUPFUNCTION')
            and   type = 'U')
   drop table dbo.TGROUPFUNCTION
go

alter table dbo.TUSER
   drop constraint PK_TUSER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TUSER')
            and   type = 'U')
   drop table dbo.TUSER
go

alter table dbo.TUSERGROUP
   drop constraint PK_TUSERGROUP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TUSERGROUP')
            and   type = 'U')
   drop table dbo.TUSERGROUP
go

/*==============================================================*/
/* Table: TCATEGORY                                             */
/*==============================================================*/
create table TCATEGORY (
   ID                   numeric              identity,
   CATEGORYCODE         nvarchar(20)         not null,
   CATEGORYNAME         nvarchar(50)         not null,
   REMARK               nvarchar(500)        null,
   STATUS               numeric(1)           not null default 0,
   TYPE                 numeric(1)           not null default 0,
   constraint PK_TCATEGORY primary key (ID)
)
go

/*==============================================================*/
/* Table: TCATEGORY2ND                                          */
/*==============================================================*/
create table TCATEGORY2ND (
   ID                   numeric              identity,
   CATEGORYCODE         nvarchar(20)         not null,
   CATEGORYNAME         nvarchar(50)         not null,
   REMARK               nvarchar(500)        null,
   STATUS               numeric(1)           not null default 0,
   TYPE                 numeric(1)           not null default 0,
   constraint PK_TCATEGORY2ND primary key (ID)
)
go

/*==============================================================*/
/* Table: TDEPARTMENT                                           */
/*==============================================================*/
create table TDEPARTMENT (
   ID                   numeric              identity,
   DEPTCODE             nvarchar(20)         not null,
   DEPTNAME             nvarchar(50)         not null,
   STATUS               numeric(1)           not null default 0,
   REMARK               nvarchar(500)        null,
   TYPE                 numeric(1)           not null default 0,
   constraint PK_TDEPARTMENT primary key (ID)
)
go

/*==============================================================*/
/* Table: TDEPTGROUP                                            */
/*==============================================================*/
create table TDEPTGROUP (
   USERID               numeric              not null,
   DEPTID               numeric              not null,
   "READ"               bit                  not null default 0,
   MODIFY               bit                  not null default 0,
   "CREATE"             bit                  not null default 0,
   "DELETE"             bit                  not null default 0,
   AUDIT                bit                  not null default 0,
   constraint AK_KEY_1_TDEPTGRO unique (USERID, DEPTID)
)
go

/*==============================================================*/
/* Table: TFUNCTION                                             */
/*==============================================================*/
create table TFUNCTION (
   FUNCTIONCODE         nvarchar(20)         not null,
   FUNCTIONNAME         nvarchar(50)         not null,
   STAUTS               numeric(1)           not null default 0,
   FUNCTIONPATH         nvarchar(100)        null,
   TYPE                 numeric(1)           not null default 0,
   constraint PK_TFUNCTION primary key (FUNCTIONCODE)
)
go

/*==============================================================*/
/* Table: TGOODS                                                */
/*==============================================================*/
create table TGOODS (
   ID                   numeric              not null,
   GOODSCODE            nvarchar(20)         not null,
   GOODSNAME            nvarchar(100)        not null,
   CATEGORYID           numeric              not null,
   CATEGORYID2ND        numeric              not null,
   DEPTID               numeric              not null,
   STATUS               numeric(1)           not null default 0,
   TAXRATE              numeric(5,2)         not null default 0,
   constraint PK_TGOODS primary key (ID),
   constraint AK_KEY_2_TGOODS unique (GOODSCODE)
)
go

/*==============================================================*/
/* Table: TGOODSPACKAGE                                         */
/*==============================================================*/
create table dbo.TGOODSPACKAGE (
   GOODSID              numeric              not null,
   UNIT                 nvarchar(10)         null,
   SPEC                 nvarchar(50)         null,
   BARCODE              nvarchar(20)         null,
   QTY                  numeric(6,2)         null,
   SPRICE               numeric(14,4)        null,
   PPRICE               numeric(14,4)        null,
   constraint PK_TGOODSPACKAGE primary key (GOODSID)
)
go

/*==============================================================*/
/* Table: TGROUPFUNCTION                                        */
/*==============================================================*/
create table TGROUPFUNCTION (
   GROUPID              numeric              not null,
   FUNCTIONCODE         nvarchar(20)         not null,
   "READ"               bit                  not null default 0,
   MODIFY               bit                  not null default 0,
   "CREATE"             bit                  not null default 0,
   "DELETE"             bit                  not null default 0,
   AUDIT                bit                  not null default 0,
   constraint AK_KEY_1_TGROUPFU unique (GROUPID, FUNCTIONCODE)
)
go

/*==============================================================*/
/* Table: TUSER                                                 */
/*==============================================================*/
create table TUSER (
   ID                   numeric              not null,
   USERCODE             nvarchar(20)         not null,
   USERNAME             nvarchar(50)         not null,
   UPASSWORD            nvarchar(20)         null,
   REMARK               nvarchar(500)        null,
   STATUS               numeric(1)           not null default 0,
   USERGROUPID          numeric              null,
   TYPE                 numeric(1)           not null default 0,
   constraint PK_TUSER primary key (ID)
)
go

/*==============================================================*/
/* Table: TUSERGROUP                                            */
/*==============================================================*/
create table TUSERGROUP (
   ID                   numeric              identity,
   GROUPCODE            nvarchar(20)         not null,
   GROUPNAME            nvarchar(50)         not null,
   TYPE                 numeric(1)           not null,
   STATUS               numeric(1)           not null default 0,
   REMARK               nvarchar(500)        null,
   constraint PK_TUSERGROUP primary key (ID)
)
go

alter table TDEPTGROUP
   add constraint FK_TDEPTGRO_REFERENCE_TUSER foreign key (USERID)
      references TUSER (ID)
go

alter table TDEPTGROUP
   add constraint FK_TDEPTGRO_REFERENCE_TDEPARTM foreign key (DEPTID)
      references TDEPARTMENT (ID)
go

alter table TGOODS
   add constraint FK_TGOODS_REFERENCE_TCATEGORY foreign key (CATEGORYID)
      references TCATEGORY (ID)
go

alter table TGOODS
   add constraint FK_TGOODS_REFERENCE_TCATEGORY2ND foreign key (CATEGORYID2ND)
      references TCATEGORY2ND (ID)
go

alter table TGOODS
   add constraint FK_TGOODS_REFERENCE_TDEPARTM foreign key (DEPTID)
      references TDEPARTMENT (ID)
go

alter table dbo.TGOODSPACKAGE
   add constraint FK_TGOODSPA_REFERENCE_TGOODS foreign key (GOODSID)
      references TGOODS (ID)
go

alter table TGROUPFUNCTION
   add constraint FK_TGROUPFU_REFERENCE_TUSERGRO foreign key (GROUPID)
      references TUSERGROUP (ID)
go

alter table TGROUPFUNCTION
   add constraint FK_TGROUPFU_REFERENCE_TFUNCTIO foreign key (FUNCTIONCODE)
      references TFUNCTION (FUNCTIONCODE)
go

alter table TUSER
   add constraint FK_TUSER_REFERENCE_TUSERGRO foreign key (USERGROUPID)
      references TUSERGROUP (ID)
go

