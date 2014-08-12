/*==============================================================*/
/* Database name:  SCMDB                                        */
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     2014/8/12 22:01:44                           */
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
   where r.fkeyid = object_id('dbo.TGOODSREQUISITION') and o.name = 'FK_TGOODSRE_REFERENCE_TSUPPLIE')
alter table dbo.TGOODSREQUISITION
   drop constraint FK_TGOODSRE_REFERENCE_TSUPPLIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TGOODSREQUISITIONBODY') and o.name = 'FK_TGOODSRE_REFERENCE_TCATEGOR')
alter table dbo.TGOODSREQUISITIONBODY
   drop constraint FK_TGOODSRE_REFERENCE_TCATEGOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TGOODSREQUISITIONBODY') and o.name = 'FK_TGOODSRE_REFERENCE_TGOODSRE')
alter table dbo.TGOODSREQUISITIONBODY
   drop constraint FK_TGOODSRE_REFERENCE_TGOODSRE
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
   where r.fkeyid = object_id('dbo.TSUPCATEGORY') and o.name = 'FK_TSUPCATE_REFERENCE_TBRAND')
alter table dbo.TSUPCATEGORY
   drop constraint FK_TSUPCATE_REFERENCE_TBRAND
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TSUPCATEGORY') and o.name = 'FK_TSUPCATE_REFERENCE_TCATEGOR')
alter table dbo.TSUPCATEGORY
   drop constraint FK_TSUPCATE_REFERENCE_TCATEGOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TSUPCATEGORY') and o.name = 'FK_TSUPCATE_REFERENCE_TSUPPLIE')
alter table dbo.TSUPCATEGORY
   drop constraint FK_TSUPCATE_REFERENCE_TSUPPLIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TSUPGOODS') and o.name = 'FK_TSUPGOOD_REFERENCE_TGOODS')
alter table dbo.TSUPGOODS
   drop constraint FK_TSUPGOOD_REFERENCE_TGOODS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TSUPGOODS') and o.name = 'FK_TSUPGOOD_REFERENCE_TSUPPLIE')
alter table dbo.TSUPGOODS
   drop constraint FK_TSUPGOOD_REFERENCE_TSUPPLIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TSUPREQCATEGORY') and o.name = 'FK_TSUPREQC_REFERENCE_TCATEGOR')
alter table dbo.TSUPREQCATEGORY
   drop constraint FK_TSUPREQC_REFERENCE_TCATEGOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TSUPREQCATEGORY') and o.name = 'FK_TSUPREQC_REFERENCE_TSUPREQU')
alter table dbo.TSUPREQCATEGORY
   drop constraint FK_TSUPREQC_REFERENCE_TSUPREQU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.TUSER') and o.name = 'FK_TUSER_REFERENCE_TUSERGRO')
alter table dbo.TUSER
   drop constraint FK_TUSER_REFERENCE_TUSERGRO
go

alter table dbo.TBRAND
   drop constraint PK_TBRAND
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TBRAND')
            and   type = 'U')
   drop table dbo.TBRAND
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
   drop constraint AK_TDEPTGROUP
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
   drop constraint AK_TGOODS
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

alter table dbo.TGOODSPACKAGE
   drop constraint PK_TGOODSPACKAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TGOODSPACKAGE')
            and   type = 'U')
   drop table dbo.TGOODSPACKAGE
go

alter table dbo.TGOODSREQUISITION
   drop constraint AK_TGOODSREQUISITION
go

alter table dbo.TGOODSREQUISITION
   drop constraint PK_TGOODSREQUISITION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TGOODSREQUISITION')
            and   type = 'U')
   drop table dbo.TGOODSREQUISITION
go

alter table dbo.TGOODSREQUISITIONBODY
   drop constraint PK_TGOODSREQUISITIONBODY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TGOODSREQUISITIONBODY')
            and   type = 'U')
   drop table dbo.TGOODSREQUISITIONBODY
go

alter table dbo.TGROUPFUNCTION
   drop constraint AK_TGROUPFUNCTION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TGROUPFUNCTION')
            and   type = 'U')
   drop table dbo.TGROUPFUNCTION
go

alter table dbo.TSUPCATEGORY
   drop constraint AK_TSUPCATEGORY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TSUPCATEGORY')
            and   type = 'U')
   drop table dbo.TSUPCATEGORY
go

alter table dbo.TSUPGOODS
   drop constraint AK_TSUPGOODS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TSUPGOODS')
            and   type = 'U')
   drop table dbo.TSUPGOODS
go

alter table dbo.TSUPGOODSREQPACKAGE
   drop constraint AK_TSUPGOODSREQPACKAGE
go

alter table dbo.TSUPGOODSREQPACKAGE
   drop constraint PK_TSUPGOODSREQPACKAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TSUPGOODSREQPACKAGE')
            and   type = 'U')
   drop table dbo.TSUPGOODSREQPACKAGE
go

alter table dbo.TSUPPLIER
   drop constraint PK_TSUPPLIER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TSUPPLIER')
            and   type = 'U')
   drop table dbo.TSUPPLIER
go

alter table dbo.TSUPREQCATEGORY
   drop constraint AK_TSUPREQCATEGORY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TSUPREQCATEGORY')
            and   type = 'U')
   drop table dbo.TSUPREQCATEGORY
go

alter table dbo.TSUPREQUISITION
   drop constraint PK_TSUPREQUISITION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.TSUPREQUISITION')
            and   type = 'U')
   drop table dbo.TSUPREQUISITION
go

alter table dbo.TUSER
   drop constraint AK_TUSER
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
/* Table: TBRAND                                                */
/*==============================================================*/
create table TBRAND (
   ID                   numeric              identity,
   BRANDNAME            nvarchar(50)         not null,
   constraint PK_TBRAND primary key (ID)
)
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
   DEPTTYPE             numeric(1)           not null default 0,
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
   constraint AK_TDEPTGROUP unique (USERID, DEPTID)
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
   constraint AK_TGOODS unique (GOODSCODE)
)
go

/*==============================================================*/
/* Table: TGOODSPACKAGE                                         */
/*==============================================================*/
create table TGOODSPACKAGE (
   GOODSID              numeric              identity,
   UNIT                 nvarchar(10)         null,
   SPEC                 nvarchar(50)         null,
   BARCODE              nvarchar(20)         null,
   QTY                  decimal(6,2)         null,
   SPRICE               decimal(14,4)        null,
   PPRICE               decimal(14,4)        null,
   constraint PK_TGOODSPACKAGE primary key (GOODSID)
)
go

/*==============================================================*/
/* Table: TGOODSREQUISITION                                     */
/*==============================================================*/
create table TGOODSREQUISITION (
   ID                   numeric              not null,
   REQNO                nvarchar(20)         not null,
   SUPID                numeric              not null,
   SUPNAME              nvarchar(100)        not null,
   GOODSCOUNT           numeric(5)           not null default 0,
   REMARK               nvarchar(500)        null,
   REQDATE              datetime             not null,
   AUDITDATE            datetime             null,
   AUDITUSERCODE        nvarchar(20)         null,
   AUDITUSERNAM         nvarchar(50)         null,
   STATUS               numeric(1)           not null default 0,
   REQTYPE              numeric(1)           not null default 0,
   constraint PK_TGOODSREQUISITION primary key (ID),
   constraint AK_TGOODSREQUISITION unique (REQNO)
)
go

/*==============================================================*/
/* Table: TGOODSREQUISITIONBODY                                 */
/*==============================================================*/
create table TGOODSREQUISITIONBODY (
   ID                   numeric              not null,
   REQNO                nvarchar(20)         not null,
   GOODSNAME            nvarchar(100)        not null,
   SUPGOODSCODE         nvarchar(50)         not null,
   TAXRATE              numeric(5,2)         not null default 0,
   CATEGORYID           numeric              not null,
   CATEGORYCODE         nvarchar(20)         not null,
   CATEGORYNAME         nvarchar(50)         not null,
   constraint PK_TGOODSREQUISITIONBODY primary key (ID),
   constraint AK_TGOODSREQUISITIONBODY unique (REQNO, SUPGOODSCODE)
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
   constraint AK_TGROUPFUNCTION unique (GROUPID, FUNCTIONCODE)
)
go

/*==============================================================*/
/* Table: TSUPCATEGORY                                          */
/*==============================================================*/
create table TSUPCATEGORY (
   SUPID                numeric              null,
   CATEGORYID           numeric              null,
   BRANDID              numeric              not null default 0,
   REMARK               nvarchar(500)        null,
   constraint AK_TSUPCATEGORY unique (SUPID, CATEGORYID)
)
go

/*==============================================================*/
/* Table: TSUPGOODS                                             */
/*==============================================================*/
create table TSUPGOODS (
   SUPID                numeric              null,
   GOODSID              numeric              null,
   SUPGOODSCODE         nvarchar(50)         null,
   STATUS               numeric(1)           not null default 0,
   constraint AK_TSUPGOODS unique (SUPID, GOODSID)
)
go

/*==============================================================*/
/* Table: TSUPGOODSREQPACKAGE                                   */
/*==============================================================*/
create table TSUPGOODSREQPACKAGE (
   ID                   numeric              not null,
   REQNO                nvarchar(20)         not null,
   SUPGOODSCODE         nvarchar(50)         not null,
   UNIT                 nvarchar(10)         not null,
   SPEC                 nvarchar(50)         not null,
   BARCODE              nvarchar(20)         null,
   QTY                  numeric(6,2)         not null,
   SPRICE               decimal(14,4)        not null default 0,
   PPRICE               decimal(14,4)        not null default 0,
   constraint PK_TSUPGOODSREQPACKAGE primary key (REQNO, SUPGOODSCODE, ID),
   constraint AK_TSUPGOODSREQPACKAGE unique (UNIT)
)
go

/*==============================================================*/
/* Table: TSUPPLIER                                             */
/*==============================================================*/
create table TSUPPLIER (
   ID                   numeric              identity,
   SUPCODE              nvarchar(20)         not null,
   SUPNAME              nvarchar(100)        not null,
   REGCAPITAL           numeric(10)          not null default 0,
   BANK                 nvarchar(500)        null,
   LEGALPERSON          nvarchar(100)        null,
   CONTACTPERSON        nvarchar(20)         null,
   TEL                  nvarchar(50)         not null,
   TEL2ND               nvarchar(50)         null,
   EMAIL                nvarchar(50)         null,
   ADDRESS              nvarchar(200)        null,
   SPASSWORD            nvarchar(20)         not null,
   STATUS               numeric(1)           not null default 0,
   LEVEL                numeric(2)           not null default 0,
   constraint PK_TSUPPLIER primary key (ID)
)
go

/*==============================================================*/
/* Table: TSUPREQCATEGORY                                       */
/*==============================================================*/
create table TSUPREQCATEGORY (
   REQID                numeric              not null,
   CATEGORYID           numeric              not null,
   REMARK               nvarchar(500)        null,
   BRAND                nvarchar(500)        not null,
   constraint AK_TSUPREQCATEGORY unique (REQID, CATEGORYID)
)
go

/*==============================================================*/
/* Table: TSUPREQUISITION                                       */
/*==============================================================*/
create table TSUPREQUISITION (
   ID                   numeric              identity,
   SUPNAME              nvarchar(100)        not null,
   REGCAPITAL           numeric(10)          not null,
   BANK                 nvarchar(500)        not null,
   LEGALPERSON          nvarchar(100)        not null,
   CONTACTPERSON        nvarchar(20)         not null,
   TEL                  nvarchar(50)         not null,
   EMAIL                nvarchar(50)         null,
   ADDRESS              nvarchar(200)        null,
   REMARK               nvarchar(500)        null,
   REQTYPE              numeric(1)           not null default 0,
   STATUS               numeric(1)           not null default 0,
   REQDATE              datetime             null,
   AUDITDATE            datetime             null,
   AUDITUSERCODE        nvarchar(20)         null,
   AUDITUSERNAME        nvarchar(50)         null,
   constraint PK_TSUPREQUISITION primary key (ID)
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
   USERTYPE             numeric(1)           not null default 0,
   constraint PK_TUSER primary key (ID),
   constraint AK_TUSER unique (USERCODE)
)
go

/*==============================================================*/
/* Table: TUSERGROUP                                            */
/*==============================================================*/
create table TUSERGROUP (
   ID                   numeric              identity,
   GROUPCODE            nvarchar(20)         not null,
   GROUPNAME            nvarchar(50)         not null,
   GROUPTYPE            numeric(1)           not null,
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

alter table TGOODSPACKAGE
   add constraint FK_TGOODSPA_REFERENCE_TGOODS foreign key (GOODSID)
      references TGOODS (ID)
go

alter table TGOODSREQUISITION
   add constraint FK_TGOODSRE_REFERENCE_TSUPPLIE foreign key (SUPID)
      references TSUPPLIER (ID)
go

alter table TGOODSREQUISITIONBODY
   add constraint FK_TGOODSRE_REFERENCE_TGOODSRE foreign key (REQNO)
      references TGOODSREQUISITION (REQNO)
go

alter table TGOODSREQUISITIONBODY
   add constraint FK_TGOODSRE_REFERENCE_TCATEGOR foreign key (CATEGORYID)
      references TCATEGORY (ID)
go

alter table TGROUPFUNCTION
   add constraint FK_TGROUPFU_REFERENCE_TUSERGRO foreign key (GROUPID)
      references TUSERGROUP (ID)
go

alter table TGROUPFUNCTION
   add constraint FK_TGROUPFU_REFERENCE_TFUNCTIO foreign key (FUNCTIONCODE)
      references TFUNCTION (FUNCTIONCODE)
go

alter table TSUPCATEGORY
   add constraint FK_TSUPCATE_REFERENCE_TSUPPLIE foreign key (SUPID)
      references TSUPPLIER (ID)
go

alter table TSUPCATEGORY
   add constraint FK_TSUPCATE_REFERENCE_TCATEGOR foreign key (CATEGORYID)
      references TCATEGORY (ID)
go

alter table TSUPCATEGORY
   add constraint FK_TSUPCATE_REFERENCE_TBRAND foreign key (BRANDID)
      references TBRAND (ID)
go

alter table TSUPGOODS
   add constraint FK_TSUPGOOD_REFERENCE_TSUPPLIE foreign key (SUPID)
      references TSUPPLIER (ID)
go

alter table TSUPGOODS
   add constraint FK_TSUPGOOD_REFERENCE_TGOODS foreign key (GOODSID)
      references TGOODS (ID)
go

alter table TSUPGOODSREQPACKAGE
   add constraint FK_TSUPGOOD_REFERENCE_TGOODSRE foreign key (REQNO, SUPGOODSCODE)
      references TGOODSREQUISITIONBODY (REQNO, SUPGOODSCODE)
go

alter table TSUPREQCATEGORY
   add constraint FK_TSUPREQC_REFERENCE_TSUPREQU foreign key (REQID)
      references TSUPREQUISITION (ID)
go

alter table TSUPREQCATEGORY
   add constraint FK_TSUPREQC_REFERENCE_TCATEGOR foreign key (CATEGORYID)
      references TCATEGORY (ID)
go

alter table TUSER
   add constraint FK_TUSER_REFERENCE_TUSERGRO foreign key (USERGROUPID)
      references TUSERGROUP (ID)
go

