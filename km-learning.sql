-- ----------------------------
-- Table structure for global_task
-- 系统全局表
-- 用于存放任务信息
-- ----------------------------
drop table if exists `global_task`;
create table `global_task` (
  `id` 					int(11) 		unsigned 	not null 	auto_increment 		comment '主键ID',
  `app_id` 				int(11) 		unsigned 	not null  						comment '应用系统ID',
  `flag`				tinyint(1) 		unsigned 	not null 	default 0 			comment '任务标识;例如: 日报类型0.学生处理 1教师处理',
  `type` 				int(11) 		unsigned 	not null 						comment '任务类型 0.日报表 1.课程  2.课程检查',
  `object_id` 			int(11) 		unsigned 	null 							comment '任务对像ID',
  `name` 				varchar(255) 				null 	 						comment '任务名',
  `description` 		varchar(255) 				null 	 						comment '任务描述',
  `begin_time` 			int(11) 		unsigned 	not null 						comment '要求开始时间',
  `end_time` 			int(11) 		unsigned 	not null 						comment '要求结束时间',
  `real_begin_time` 	int(11) 		unsigned 	null							comment '实际开始时间',
  `real_end_time` 		int(11) 		unsigned 	null							comment '实际结束时间',
  `status` 				tinyint(1) 		unsigned 	not null 	default 0 			comment '任务状态0.未处理 1.处理中 2.完成',
  `is_public` 			tinyint(1) 		unsigned 	not null 	default 0 			comment '共享任务 0.否 1.是',
  `fi_user_id` 			int(11) 		unsigned 	null							comment '任务完成人ID',
  `fi_user_name` 		varchar(64)  				null 							comment '任务完成人姓名',
  `user_id` 			int(11) 		unsigned 	not null 						comment '任务创建人ID',
  `user_name` 			varchar(64)  				not null 						comment '任务创建人姓名',
  `create_time` 		int(11) 		unsigned 	not null 						comment '创建时间',
  `update_time` 		int(11) 		unsigned  	null  							comment '更新时间',
  `delete_time` 		int(11) 		unsigned  	null  							comment '删除时间',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='全局任务表';

-- ----------------------------
-- Table structure for global_task_user
-- 系统全局表
-- 用于存放任务用户信息
-- ----------------------------
drop table if exists `global_task_user`;
create table `global_task_user` (
  `id` 					int(11) 		unsigned 	not null 	auto_increment 	comment '主键ID',
  `app_id` 				int(11) 		unsigned 	not null  							comment '应用系统ID',
  `task_id` 			int(11) 		unsigned 	not null 							comment '任务ID',
  `user_id` 			int(11) 		unsigned 	not null 							comment '任务所属人ID',
  `user_name` 			varchar(64)  				not null 							comment '任务所属人姓名',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='全局任务用户信息表';


-- -------------------------
-- Table structure for leg_course
-- E-Learning系统业务表
-- 用于存放E-Learning课程
-- ----------------------------
drop table if exists `leg_course`;
create table `leg_course` (
  `id` 						int(11) 			unsigned 	not null 	auto_increment 	comment '主键ID',
  `title` 					varchar(255) 					not null 					comment '课程标题',
  `category_id` 			int(11) 			unsigned 	not null   					comment '分类ID',
  `type` 					tinyint(1) 			unsigned 	not null   					comment '课程类型（0.线上 1.线下 2.线上线下结合）',
  `cover` 					varchar(255) 					null 	 					comment '课程图片',
  `duration` 				int(11) 			unsigned 	not null 	default 0 		comment '课程时长',
  `is_publish`  			tinyint(1) 			unsigned	not null 	default 0 		comment '发布状态 0:草图 1.发布',
  `status`  				tinyint(1) 			unsigned	not null 	default 1 		comment '可用状态 0:禁用 1.可用',
  `rel_user_id` 			int(11) 			unsigned 	null 						comment '发布人ID',
  `rel_user_name` 			varchar(64) 	 				null 						comment '发布人姓名',
  `view_num` 				int(11) 			unsigned 	not null 	default 0 		comment '查看次数',
  `stu_num` 				int(11) 			unsigned 	not null 	default 0 		comment '学员数',
  `lesson_num` 				int(11) 			unsigned 	not null 	default 0 		comment '课时数',
  `note_num` 				int(11) 			unsigned 	not null 	default 0 		comment '课程笔记数量',
  `rev_time` 				int(11) 			unsigned 	null 						comment '检查时间',
  `rev_num` 				int(11) 			unsigned 	not null 	default 0 		comment '检查次数',
  `rev_user_id` 			int(11) 			unsigned 	null 						comment '检查人ID',
  `rev_user_name` 			varchar(64) 	 				null 						comment '检查人姓名',
  `rev_status`  			tinyint(1) 			unsigned	not null 	default 0 		comment '检查状态 0:首次发布 1.待检查 2.已检查',
  `rev_cycle` 				int(11) 			unsigned 	not null 	default 0		comment '检查周期（单位为天）',
  `tch_cost` 				int(11) 			unsigned 	not null 	default 0 		comment '教师教学时间（单位为小时）',
  `stu_cost` 				int(11) 			unsigned 	not null 	default 0 		comment '学员学习时间（单位为小时）',
  `user_id` 				int(11) 			unsigned 	not null 					comment '创建人ID',
  `user_name` 				varchar(64) 	 				null 						comment '创建人姓名',
  `create_time` 			int(11) 			unsigned 	not null 					comment '创建时间',
  `update_time` 			int(11) 			unsigned 	null   						comment '更新时间',
  `delete_time` 			int(11) 			unsigned 	null  						comment '删除时间',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='课程表';

-- ----------------------------
-- Table structure for leg_course_ext
-- E-Learning系统业务表
-- 用于存放E-Learning课程扩展属性
-- ----------------------------

drop table if exists `leg_course_ext`;
create table `leg_course_ext` (
  `course_id` 		int(11) 	unsigned 		not null 		comment '课程ID',
  `description` 	text 						null 			comment '课程简介',
  `goals` 			text 						null 			comment '课程目标',
  `audiences` 		text 						null 			comment '适合人群'
) engine=InnoDB default charset=utf8 comment='课程扩展属性';

-- -------------------------
-- Table structure for leg_course_allot
-- E-Learning系统业务表
-- 用于存放E-Learning课程分配方式
-- ----------------------------
drop table if exists `leg_course_allot`;
create table `leg_course_allot` (
  `id` 						int(11) 		unsigned 	not null 	auto_increment 		comment '主键ID',
  `course_id` 				int(11) 		unsigned 	not null   						comment '课程ID',
  `assign_type` 			tinyint(1) 		unsigned 	not null   						comment '分配方式(0.指派式 1.申请式 2.全开放)',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='课程分配方式';

-- ----------------------------
-- Table structure for leg_course_tch
-- E-Learning系统业务表
-- 用于存放E-Learning课程教师对应关系
-- ----------------------------
drop table if exists `leg_course_tch`;
create table `leg_course_tch` (
  `id` 					int(11) 		unsigned 		not null 	auto_increment 		comment '主键ID',
  `course_id` 			int(11) 		unsigned 		not null 						comment '课程ID',
  `user_id` 			int(11) 		unsigned 		not null 						comment '教师ID',
  `user_name` 			varchar(64)  					not null 						comment '教师姓名',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='课程管理人对应关系表';

-- ----------------------------

-- Table structure for leg_course_rev
-- E-Learning系统业务表
-- 用于存放E-Learning课程检查记录
-- ----------------------------
drop table if exists `leg_course_rev`;
create table `leg_course_rev` (
  `id` 					int(11) 		unsigned 		not null 	auto_increment	comment '主键ID',
  `course_id` 			int(11) 		unsigned 		not null 	default 0 		comment '课程ID',
  `description` 		text 							null 						comment '检查描述',
  `user_id` 			int(11) 		unsigned 		not null 					comment '检查人ID',
  `user_name` 			varchar(64) 	 				null 						comment '检查人姓名',
  `create_time` 		int(11) 		unsigned 		not null 					comment '检查日期',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='课程检查记录表';

-- ----------------------------
-- Table structure for leg_lesson
-- E-Learning系统业务表
-- 用于存放E-Learning课程课时
-- ----------------------------
drop table if exists `leg_lesson`;
create table `leg_lesson` (
  `id` 					int(11) 		unsigned 	not null 	auto_increment 	comment '主键ID',
  `course_id` 			int(11) 		unsigned 	not null 					comment '课程ID',
  `title` 				varchar(255) 				not null 					comment '课时标题',
  `number` 				int(11) 		unsigned 	not null 	default 1		comment '课时编号',
  `type` 				tinyint(2) 					not null 	default 0 		comment '课时类型 0.网络资源 1.图文 2.视频 3.音频 4.下载资料 5.讨论 6.考试 7.作业 8.练习',
  `ast_type` 			tinyint(2) 					null 						comment '资源来源(1.本地上传 2.资源库选择 3.课程文件选择 4.网络资源)',
  `duration` 			int(11) 		unsigned 	null		default 0 		comment '课时时长',
  `cond_type` 			tinyint(2) 					not null 	default 0 		comment '完成条件 0.学习到最后 1.学习时长',
  `std_duration`		int(11) 		unsigned 	null		default 0 		comment '学习时长(cond_type=1时)',
  `attach_num` 			int(11) 		unsigned 	not null 	default 0 		comment '附件数量',
  `stu_num` 			int(11) 		unsigned 	not null 	default 0 		comment '学生数量',
  `view_num` 			int(11) 		unsigned 	not null 	default 0 		comment '查看次数',
  `status`  			tinyint(1)		unsigned	not null 	default 1 		comment '课时状态 0:关闭 1:正常',
  `user_id` 			int(11) 		unsigned 	not null 					comment '创建人ID',
  `user_name` 			varchar(64)  				not null 					comment '创建人姓名',
  `create_time` 		int(11) 		unsigned 	not null 					comment '创建时间',
  `update_time` 		int(11) 		unsigned 	null  						comment '更新时间',
  `delete_time` 		int(11) 		unsigned 	null  						comment '软删除时间',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='课程课时';

-- ----------------------------
-- Table structure for leg_lesson_asset
-- E-Learning系统业务表
-- 用于存放E-Learning课时资源
-- ----------------------------
drop table if exists `leg_lesson_asset`;
create table `leg_lesson_asset` (
  `id` 					int(11) 		unsigned 	not null 	auto_increment 	comment '主键ID',
  `course_id` 			int(11) 		unsigned 	not null 					comment '课程ID',
  `lesson_id` 			int(11) 		unsigned 	not null 					comment '课时ID',
  `ast_id` 				int(11) 		unsigned 	null 	 					comment '资源ID',
  `ast_name` 			varchar(255) 				null 						comment '资源文件名称',
  `ast_url` 			varchar(255) 				null 						comment '资源URL',
  `content` 			text 						null						comment '课时正文(type=1写入URL;type=2时写入内容)',
  `ast_duration` 		int(11) 		unsigned 	null		default 0 		comment '资源时长',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='课时资源';

-- ----------------------------
-- Table structure for leg_course_member
-- E-Learning系统业务表
-- 用于存放E-Learning课程学员
-- ----------------------------
drop table if exists `leg_course_member`;
create table `leg_course_member` (
  `id` 					int(11) 		unsigned 		not null 	auto_increment	comment '主键ID',
  `task_id` 			int(11) 		unsigned 		not null 	default 0 		comment '全局Task ID',
  `course_id` 			int(11) 		unsigned 		not null 	default 0 		comment '课程ID',
  `description` 		varchar(1024) 					not null 	default '' 		comment '描述信息',
  `stu_id` 				int(11) 		unsigned 		not null 					comment '学员ID',
  `stu_name` 			varchar(64)  					not null 					comment '学员姓名',
  `note_num` 			int(11) 		unsigned 		not null 	default 0 		comment '笔记数量',
  `note_time` 			int(11) 		unsigned  		null 						comment '最新的笔记更新时间',
  `status`  			tinyint(1) 		unsigned		not null 	default 0 		comment '状态 0:未学习 1.正在学习 2.学习完成 3.教师关闭',
  `learn_num` 			int(11) 		unsigned 		not null 	default 0 		comment '已学课时数量',
  `learn_time` 			int(11) 		unsigned 		null 						comment '最后学习时间',
  `view_time` 			int(11)  		unsigned 		null 						comment '最后查看时间',
  `finish_time` 		int(11) 		unsigned 		null 	 					comment '完成课程时间',
  `user_id` 			int(11) 		unsigned 		not null 					comment '创建人ID',
  `user_name`			varchar(64)  					not null 					comment '创建人姓名',
  `create_time` 		int(11) 		unsigned 		not null 					comment '创建时间',
  `update_time` 		int(11) 		unsigned  		null  						comment '更新时间',
  `delete_time` 		int(11) 		unsigned  		null  						comment '删除时间',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='课程学员列表';


-- ----------------------------
-- Table structure for leg_lesson_learn
-- E-Learning系统业务表
-- 用于存放E-Learning课时学习记录
-- ----------------------------
drop table if exists `leg_lesson_learn`;
create table `leg_lesson_learn` (
  `id` 					int(11) 		unsigned 	not null 	auto_increment 	comment '主键ID',
  `task_id` 			int(11) 		unsigned 	not null 	default 0 		comment '全局Task ID',
  `course_id` 			int(11) 		unsigned 	not null 					comment '课程ID',
  `lesson_id` 			int(11) 		unsigned 	not null 					comment '课时ID',
  `start_time` 			int(11) 		unsigned 	not null  	default 0 		comment '学习开始时间',
  `end_time` 			int(11) 		unsigned   	not null  	default 0 		comment '学习结束时间: 学习完成时间',
  `learn_duration`		int(11) 		unsigned 	not null 	default 0 		comment '学习时长: 学习完成之后不再计算',
  `watch_duration`		int(11) 		unsigned 	not null 	default 0 		comment '观看时长:可以一直累计学习时间',
  `view_num` 			int(11) 		unsigned 	not null 	default 0 		comment '观看次数',
  `status` 				tinyint  		unsigned	not null 	default 0  		comment '状态 0:未学习 1.正在学习 2.学习完成',
  `user_id` 			int(11) 		unsigned 	not null 					comment '学员ID',
  `user_name` 			varchar(64)  				not null 					comment '学员姓名',
  `create_time` 		int(11) 		unsigned 	not null 					comment '创建时间',
  `update_time` 		int(11) 		unsigned 	null  						comment '更新时间',
  `delete_time` 		int(11) 		unsigned 	null  						comment '删除时间',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='课程课时学习记录';

-- ----------------------------
-- Table structure for leg_tch_stu
-- E-Learning系统业务表
-- 用于存放E-Learning教师学员
-- ----------------------------
drop table if exists `leg_tch_stu`;
create table `leg_tch_stu` (
  `id` 					int(11) 		unsigned 		not null 	auto_increment	comment '主键ID',
  `tch_id` 				int(11) 		unsigned 		not null 	default 0 		comment '教师ID',
  `tch_name` 			varchar(64)  					not null 					comment '教师姓名',
  `stu_id` 				int(11) 		unsigned 		not null 	default 0 		comment '学生ID',
  `stu_name` 			varchar(64)  					not null 					comment '学生姓名',
  `user_id` 			int(11) 		unsigned 		not null 					comment '创建人ID',
  `user_name` 			varchar(64)  					not null 					comment '创建人姓名',
  `create_time` 		int(11) 		unsigned 		not null 					comment '创建时间',
  `update_time` 		int(11) 		unsigned  		null  						comment '更新时间',
  `delete_time` 		int(11) 		unsigned  		null  						comment '删除时间',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='教师学生对应表';

-- ----------------------------
-- Table structure for leg_course_comment
-- E-Learning系统业务表
-- 用于存放E-Learning课程评价信息
-- ----------------------------
drop table if exists `leg_course_comment`;
create table `leg_course_comment` (
  `id` 				int(11) 		unsigned 	not null 	auto_increment 	comment '主键ID',
  `pid` 			int(11) 		unsigned	not null 	default 0 		comment '回复ID',
  `course_id` 		int(11) 		unsigned 	not null 	default 0 		comment '被评价的课程ID',
  `title` 			varchar(255) 				null 						comment '评价标题',
  `content` 		text 						null						comment '评论内容',
  `score` 			tinyint(1) 		unsigned 	not null 	default 0 		comment '评分（0-5分）',
  `is_display`  	tinyint(1) 		unsigned	not null 	default 1 		comment '是否显示 0.否 1.是',
  `metas` 			text 						null						comment '评价元信息',
  `user_id` 		int(11) 		unsigned 	not null 					comment '评价人ID',
  `user_name` 		varchar(64)  				not null 					comment '评价人',
  `create_time` 	int(11) 		unsigned 	not null 					comment '创建时间',
  `update_time` 	int(11) 		unsigned  	null  						comment '更新时间',
  `delete_time` 	int(11) 		unsigned  	null  						comment '删除时间',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='课程评价信息';


-- ----------------------------
-- Table structure for leg_daily
-- E-Learning系统业务表
-- 用于存放E-Learning用户日报表
-- ----------------------------
drop table if exists `leg_daily`;
create table `leg_daily` (
  `id` 					int(11) 		unsigned 	not null 	auto_increment 	comment '主键ID',
  `content` 			text 						null						comment '填写内容',
  `tch_id` 				int(11) 		unsigned 	null						comment '审核教师ID',
  `tch_name` 			varchar(64)  				null						comment '审核教师姓名',
  `comment` 			text 						null						comment '填写内容',
  `metas` 				text 						null						comment '评价元信息',
  `status` 				tinyint(1) 		unsigned 	not null 	default 0 		comment '状态 0.未检查 1.未通过 2.通过',
  `user_id` 			int(11) 		unsigned 	not null 					comment '创建人ID',
  `user_name` 			varchar(64)  				not null 					comment '创建人姓名',
  `create_time` 		int(11) 		unsigned 	not null 					comment '创建时间',
  `update_time` 		int(11) 		unsigned  	null  						comment '更新时间',
  `delete_time` 		int(11) 		unsigned  	null  						comment '删除时间',
  primary key (`id`)
) engine=InnoDB default charset=utf8 comment='用户日报表';








