#
# Table structure for table 'static_sex'
#
CREATE TABLE static_sex (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	sys_language_uid int(11) DEFAULT '0' NOT NULL,
	l10n_parent int(11) DEFAULT '0' NOT NULL,
	l10n_diffsource mediumtext,
	title varchar(255) DEFAULT '' NOT NULL,
	title_de tinytext,
	description text,
	description_de text,
	iso5218 char(1) DEFAULT '' NOT NULL,
	active_entry char(1) DEFAULT '' NOT NULL,
	cdc char(1) DEFAULT '' NOT NULL,
	ecml char(1) DEFAULT '' NOT NULL,
	naaccr char(1) DEFAULT '' NOT NULL,
	usa_census char(1) DEFAULT '' NOT NULL,
	hl7 char(1) DEFAULT '' NOT NULL,
	x12 char(1) DEFAULT '' NOT NULL,
	astm_e1633 char(2) DEFAULT '' NOT NULL,
	dcm varchar(6) DEFAULT '' NOT NULL,
	zims varchar(255) DEFAULT '' NOT NULL,
	obis char(1) DEFAULT '' NOT NULL,
	ubif varchar(255) DEFAULT '' NOT NULL,
	ubif_short tinytext,
	
	PRIMARY KEY (uid),
	KEY parent (pid)
);