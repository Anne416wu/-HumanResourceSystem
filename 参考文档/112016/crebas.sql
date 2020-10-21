/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/3/21 19:16:11                           */
/*==============================================================*/


drop table if exists report_entity_age_info;

drop table if exists report_entity_bigdemand_info;

drop table if exists report_entity_culture_Info;

drop table if exists report_entity_hunt_info;

drop table if exists report_entity_industry_info;

drop table if exists report_entity_job_info;

drop table if exists report_entity_profession_info;

drop table if exists report_entity_sex_info;

drop table if exists report_entity_skill_Info;

drop table if exists report_entity_small_info;

drop table if exists report_entity_supply_info;

drop table if exists report_entity_survey;

drop table if exists report_entity_unit_info;

drop table if exists sys_entity_count;

drop table if exists sys_entity_dict;

drop table if exists sys_entity_function;

drop table if exists sys_entity_notice;

drop table if exists sys_entity_role;

drop table if exists sys_entity_user;

drop table if exists sys_map_role_function;

drop table if exists sys_map_survey_user;

drop table if exists sys_map_user_role;

/*==============================================================*/
/* Table: report_entity_age_info                                */
/*==============================================================*/
create table report_entity_age_info
(
   range_1_req_num      int comment '16~24����������',
   range_2_req_num      int comment '25~34����������',
   range_3_req_num      int comment '35~44����������',
   range_4_req_num      int comment '45��������������',
   no_request_req_num   int comment '��Ҫ����������',
   range_1_hunt_num     int comment '16~24����ְ����',
   range_2_hunt_num     int comment '25~34����ְ����',
   range_3_hunt_num     int comment '35~44����ְ����',
   range_4_hunt_num     int comment '45��������ְ����',
   no_request_hunt_num  int comment '��Ҫ����ְ����',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_age_info comment '��������';

/*==============================================================*/
/* Table: report_entity_bigdemand_info                          */
/*==============================================================*/
create table report_entity_bigdemand_info
(
   bigdemand_type       varchar(100) comment 'ְҵ���',
   career_id            int comment 'ְҵ����',
   bigdemand_demand     int comment '��������',
   bigdemand_hunt       int comment '��ְ����',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_bigdemand_info comment '��������ְҵ��';

/*==============================================================*/
/* Table: report_entity_culture_Info                            */
/*==============================================================*/
create table report_entity_culture_Info
(
   junior_high_school_req_num int comment '���м�������������',
   voc_req_num          int comment 'ְ����������',
   tec_req_num          int comment '��У��������',
   sec_req_num          int comment '��ר��������',
   college_req_num      int comment '��ר��������',
   university_req_num   int comment '��ѧ��������',
   master_req_num       int comment '˶ʿ��������',
   no_request_req_nmu   int comment '��Ҫ����������',
   junior_high_school_hunt_num int comment '���м�������ְ����',
   voc_hunt_num         int comment 'ְ����ְ����',
   tec_hunt_num         int comment '��У��ְ����',
   sec_hunt_num         int comment '��ר��ְ����',
   college_hunt_num     int comment '��ר��ְ����',
   university_hunt_num  int comment '��ѧ��ְ����',
   master_hunt_num      int comment '˶ʿ��ְ����',
   no_request_hunt_nmu  int comment '��Ҫ����ְ����',
   id                   int not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_culture_Info comment '�Ļ��̶ȷ����';

/*==============================================================*/
/* Table: report_entity_hunt_info                               */
/*==============================================================*/
create table report_entity_hunt_info
(
   hunt_id              varchar(100) comment '��ְ��id',
   grow_hunt_num        int comment '�³ɳ�ʧҵ������ְ����',
   emptounemp_hunt_num  int comment '��ҵתʧҵ��Ա��ְ����',
   other_hunt_num       int comment '����ʧҵ��Ա��ְ����',
   pract_hunt_num       int comment '��ҵ��Ա��ְ����',
   laid_off_hunt_num    int comment '�¸�ְ����ְ����',
   retiree_hunt_num     int comment '������Ա��ְ����',
   instructor_hunt_num  int comment '��ѧ��Ա��ְ����',
   city_hunt_num        int comment '����ũ����Ա��ְ����',
   outcity_hunt_num     int comment '�Ⲻ��Ա��ְ����',
   id                   varchar(100) not null,
   common_remarks       varchar(100)  comment '��ע',
   common_del_flag      varchar(100)  comment 'ɾ�����',
   common_create_user_id varchar(100)  comment '������id',
   common_modify_user_id varchar(100)  comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_hunt_info comment '��ְ��Ա';

/*==============================================================*/
/* Table: report_entity_industry_info                           */
/*==============================================================*/
create table report_entity_industry_info
(
   industry_one         int comment '��һ��ҵ��������',
   industry_two         int comment '�ڶ���ҵ��������',
   industry_three       int comment '������ҵ��������',
   status               int comment '״̬��Ϣ',
   id                   varchar(100) not null,
   common_remarks        varchar(100) comment '��ע',
   common_del_flag       varchar(100) comment 'ɾ�����',
   common_create_user_id  varchar(100) comment '������id',
   common_modify_user_id  varchar(100) comment '����޸���id',
   common_create_date    datetime comment '��������',
   common_modify_date    datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_industry_info comment '����ҵ���з���';

/*==============================================================*/
/* Table: report_entity_job_info                                */
/*==============================================================*/
create table report_entity_job_info
(
   per_cha_demand       int comment '��λ�����˵���������',
   per_cha_hunt         int comment '��λ�����˵���ְ����',
   pro_skill_demand     int comment 'רҵ������Ա����������',
   pro_skill_hunt       int comment 'רҵ������Ա����ְ����',
   staff_demand         int comment '������Ա���й���Ա����������',
   staff_hunt           int comment '������Ա���й���Ա����ְ����',
   bus_demand           int comment '��ҵ�ͷ�����Ա����������',
   bus_hunt             int comment '��ҵ�ͷ�����Ա����ְ����',
   product_demand       int comment 'ũ������ˮ��������Ա����������',
   product_hunt         int comment 'ũ������ˮ��������Ա����ְ����',
   tran_demand          int comment '���������豸��������������',
   tran_hunt            int comment '���������豸��������ְ����',
   other_hunt           int comment '����',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_job_info comment '������Ϣ��ְҵ����';

/*==============================================================*/
/* Table: report_entity_profession_info                         */
/*==============================================================*/
create table report_entity_profession_info
(
   farm                 int comment 'ũ������',
   mining               int comment '�ɿ�',
   create_              int comment '����',
   electric             int comment '����',
   structure            int comment '����',
   traffic              int comment '��ͨ',
   information          int comment '��Ϣ����',
   wholesale            int comment '����',
   room                 int comment 'ס��',
   financial            int comment '����',
   estate               int comment '���ز�',
   lease                int comment '����',
   research             int comment '����',
   water                int comment 'ˮ��',
   resident             int comment '�������',
   education            int comment '����',
   health               int comment '����',
   culture              int comment '�Ļ�',
   management           int comment '��������',
   international        int comment '������֯',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_profession_info comment '����ҵ���з���';

/*==============================================================*/
/* Table: report_entity_sex_info                                */
/*==============================================================*/
create table report_entity_sex_info
(
   male_req_num         int comment '������������',
   female_req_nmu       int comment 'Ů����������',
   no_request_req_num   int comment '��Ҫ����������',
   male_hunt_num        int comment '������ְ����',
   female_hunt_nmu      int comment 'Ů����ְ����',
   no_request_hunt_num  int comment '��Ҫ����ְ����',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_sex_info comment '�Ա���Ϣ�����';

/*==============================================================*/
/* Table: report_entity_skill_Info                              */
/*==============================================================*/
create table report_entity_skill_Info
(
   career_qual_five_req_num int comment 'ְҵ�ʸ��弶��������',
   career_qual_four_req_num int comment 'ְҵ�ʸ��ļ���������',
   career_qual_three_req_num int comment 'ְҵ�ʸ�������������',
   career_qual_two_req_num int comment 'ְҵ�ʸ������������',
   career_qual_one_req_num int comment 'ְҵ�ʸ�һ����������',
   pri_tech_career_req_num int comment '����רҵ����ְ����������',
   med_tech_career_req_num int comment '�м�רҵ����ְ����������',
   adv_tech_career_req_num int comment '�߼�רҵ����ְ����������',
   no_tech_career_req_num int comment '������ȼ���ְ����������',
   no_request_req_num   int comment '��Ҫ����������',
   career_qual_five_hunt_num int comment 'ְҵ�ʸ��弶��ְ����',
   career_qual_four_hunt_num int comment 'ְҵ�ʸ��ļ���ְ����',
   career_qual_three_hunt_num int comment 'ְҵ�ʸ�������ְ����',
   career_qual_two_hunt_num int comment 'ְҵ�ʸ������ְ����',
   career_qual_one_hunt_num int comment 'ְҵ�ʸ�һ����ְ����',
   pri_tech_career_hunt_num int comment '����רҵ����ְ����ְ����',
   med_tech_career_hunt_num int comment '�м�רҵ����ְ����ְ����',
   adv_tech_career_hunt_num int comment '�߼�רҵ����ְ����ְ����',
   no_tech_career_hunt_num int comment '������ȼ���ְ����ְ����',
   no_request_hunt_num  int comment '��Ҫ����ְ����',
   id                   varchar(100) not null,
   common_remarks       varchar(100)  comment '��ע',
   common_del_flag      varchar(100)  comment 'ɾ�����',
   common_create_user_id varchar(100)  comment '������id',
   common_modify_user_id varchar(100)  comment '����޸���id',
   common_create_date    datetime comment '��������',
   common_modify_date    datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_skill_Info comment '���ܵȼ������';

/*==============================================================*/
/* Table: report_entity_small_info                              */
/*==============================================================*/
create table report_entity_small_info
(
   career_id            int comment 'ְҵ����',
   smalldemand_type     varchar(100) comment 'ְҵ���',
   smalldemand_demand   int comment '��������',
   smalldemand_hunt     int comment '��ְ����',
   id                   int not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_small_info comment '����С��ְҵ��Ϣ�����';

/*==============================================================*/
/* Table: report_entity_supply_info                             */
/*==============================================================*/
create table report_entity_supply_info
(
   supply_quarter       varchar(100) comment '����',
   supply_demand        int comment '��������',
   supply_hunt          int comment '��ְ����',
   status               int comment '״̬��Ϣ',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_supply_info comment '����������Ϣ��';

/*==============================================================*/
/* Table: report_entity_survey                                  */
/*==============================================================*/
create table report_entity_survey
(
   id                   varchar(100) not null,
   survey_name          varchar(100) comment '���������',
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_survey comment '�����';

/*==============================================================*/
/* Table: report_entity_unit_info                               */
/*==============================================================*/
create table report_entity_unit_info
(
   state                int comment '������ҵ����',
   collective           int comment '������ҵ',
   cooperation          int comment '�ɷݺ���',
   joint                int comment '��Ӫ��ҵ',
   limited              int comment '����������ҵ',
   share                int comment '�ɷݺ�����ҵ',
   private              int comment '˽Ӫ��ҵ',
   other                int comment '������ҵ',
   hk                   int comment '�۰�̨��ҵ',
   "foreign"            int comment '����Ͷ����ҵ',
   self                 int comment '���徭Ӫ',
   id                   int not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table report_entity_unit_info comment '�����˵�λ���ʷ���';

/*==============================================================*/
/* Table: sys_entity_count                                      */
/*==============================================================*/
create table sys_entity_count
(
   sum                  int comment '����',
   average              int comment 'ƽ��ֵ',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   user_id              varchar(100) comment '�û�id',
   primary key (id)
);

alter table sys_entity_count comment 'ͳ�Ʊ�����ݵ�ͳ��';

/*==============================================================*/
/* Table: sys_entity_dict                                       */
/*==============================================================*/
create table sys_entity_dict
(
   value                varchar(100),
   "label"              varchar(100),
   type                 varchar(100),
   description          varchar(100),
   sort                 int,
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   primary key (id)
);

alter table sys_entity_dict comment '�ֵ��';

/*==============================================================*/
/* Table: sys_entity_function                                   */
/*==============================================================*/
create table sys_entity_function
(
   name                 varchar(100) comment '�û���',
   code                 varchar(100) comment '���ܴ��룬��Ϊ���ܵı�ʶ��',
   type                 varchar(100) comment '0 - ���ܷ��࣬���չ���ӹ���;1 - ���ܣ�������빦��ҳ',
   parent_id            varchar(100) comment '���������ķ���',
   url                  varchar(100) comment '����ǹ��ܣ�����������ҳ��ַ������Ϊ��',
   index_               varchar(100) comment '���򣬹����������϶��£���0��ʼ����(�൱�������е����)',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ����ǣ�0��������1��ɾ����2����ˣ�',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   enable               bool comment '�����Ƿ�����',
   icon                 varchar(100) comment 'ͼ��',
   primary key (id)
);

alter table sys_entity_function comment '���ܱ�';

/*==============================================================*/
/* Table: sys_entity_notice                                     */
/*==============================================================*/
create table sys_entity_notice
(
   infom_title          varchar(100) comment '֪ͨ����',
   inform_content       varchar(100) comment '֪ͨ����',
   release_time         datetime comment '����ʱ��',
   release_unit         varchar(100) comment '������λ',
   id                   varchar(100) not null,
   common_remarks        varchar(100) comment '��ע',
   common_del_flag       varchar(100) comment 'ɾ�����',
   common_create_user_id  varchar(100) comment '������id',
   common_modify_user_id  varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   primary key (id)
);

alter table sys_entity_notice comment '����֪ͨ��';

/*==============================================================*/
/* Table: sys_entity_role                                       */
/*==============================================================*/
create table sys_entity_role
(
   name                 varchar(100) comment '����',
   code                 varchar(100) comment '��ɫ��ʶ��',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   primary key (id)
);

alter table sys_entity_role comment '��ɫ��';

/*==============================================================*/
/* Table: sys_entity_user                                       */
/*==============================================================*/
create table sys_entity_user
(
   username             varchar(100) comment '�û���',
   password             varchar(100) comment '����',
   id                   varchar(100) not null comment 'id',
   type                 varchar(100) comment '0 - ����Ա��1 - ʡ��2 - �У�3 - ����',
   province             varchar(100) comment '�������ĸ�ʡ���洢�ֵ�id',
   city                 varchar(100) comment '�������ĸ��У��洢�ֵ�id',
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   real_name            varchar(100) comment '��ʵ����',
   nick_name            varchar(100) comment '�ǳ�',
   head_img             varchar(100) comment 'ͷ��',
   phone_number         varchar(100) comment '�ֻ���',
   email                varchar(100) comment '�����ַ',
   last_login_ip        varchar(100) comment '�ϴε�½ip',
   current_login_ip     varchar(100) comment '���ε�½ip',
   last_login_date      datetime comment '�ϴε�½ʱ��',
   current_login_date   datetime comment '���ε�½ʱ��',
   market_name          varchar(100) comment '������Դ�г���',
   contact_name         varchar(100) comment '��ϵ������',
   contact_phone        varchar(100) comment '��ϵ���ֻ�',
   contact_fax          varchar(100) comment '��ϵ�˴���',
   primary key (id)
);

alter table sys_entity_user comment '�û���';

/*==============================================================*/
/* Table: sys_map_role_function                                 */
/*==============================================================*/
create table sys_map_role_function
(
   role_id              varchar(100) comment '��ɫ��_id',
   id                   varchar(100) not null,
   common_remarks       varchar(100)  comment '��ע',
   common_del_flag      varchar(100)  comment 'ɾ����ǣ�0��������1��ɾ����2����ˣ�',
   common_create_user_id varchar(100)  comment '������id',
   common_modify_user_id varchar(100)  comment '����޸���id',
   common_create_date   datetime comment '��������',
   common_modify_date   datetime comment '����޸�����',
   function_id          varchar(100) comment '���ܱ�id',
   primary key (id)
);

alter table sys_map_role_function comment '��ɫ-���ܹ�����';

/*==============================================================*/
/* Table: sys_map_survey_user                                   */
/*==============================================================*/
create table sys_map_survey_user
(
   user_id              varchar(100) comment '�û�id',
   id                   varchar(100) not null,
   form_status          varchar(100) comment '�������״̬',
   survey_id            varchar(100) comment '����id',
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date     datetime  comment '��������',
   common_modify_date     datetime  comment '����޸�����',
   primary key (id)
);

alter table sys_map_survey_user comment '����-�û�������';

/*==============================================================*/
/* Table: sys_map_user_role                                     */
/*==============================================================*/
create table sys_map_user_role
(
   user_id              varchar(100) comment '�û�id',
   role_id              varchar(100) comment '��ɫid',
   id                   varchar(100) not null,
   common_remarks       varchar(100) comment '��ע',
   common_del_flag      varchar(100) comment 'ɾ�����',
   common_create_user_id varchar(100) comment '������id',
   common_modify_user_id varchar(100) comment '����޸���id',
   common_create_date    datetime comment '��������',
   common_modify_date    datetime comment '����޸�����',
   primary key (id)
);

alter table sys_map_user_role comment '�û�-��ɫ������';

