<?php
if (!defined ('TYPO3_MODE')) 	die ('Access denied.');

$TCA['static_sex'] = array (
	'ctrl' => $TCA['static_sex']['ctrl'],
	'interface' => array (
		'showRecordFieldList' => 'sys_language_uid,l10n_parent,l10n_diffsource,title,title_de,description,description_de,iso5218,active_entry,cdc,ecml,naaccr,usa_census,hl7,x12,astm_e1633,dcm,zims,obis,ubif,ubif_short'
	),
	'feInterface' => $TCA['static_sex']['feInterface'],
	'columns' => array (
		'sys_language_uid' => array (		
			'exclude' => 1,
			'label'  => 'LLL:EXT:lang/locallang_general.xml:LGL.language',
			'config' => array (
				'type'                => 'select',
				'foreign_table'       => 'sys_language',
				'foreign_table_where' => 'ORDER BY sys_language.title',
				'items' => array(
					array('LLL:EXT:lang/locallang_general.xml:LGL.allLanguages', -1),
					array('LLL:EXT:lang/locallang_general.xml:LGL.default_value', 0)
				)
			)
		),
		'l10n_parent' => array (		
			'displayCond' => 'FIELD:sys_language_uid:>:0',
			'exclude'     => 1,
			'label'       => 'LLL:EXT:lang/locallang_general.xml:LGL.l18n_parent',
			'config'      => array (
				'type'  => 'select',
				'items' => array (
					array('', 0),
				),
				'foreign_table'       => 'static_sex',
				'foreign_table_where' => 'AND static_sex.pid=###CURRENT_PID### AND static_sex.sys_language_uid IN (-1,0)',
			)
		),
		'l10n_diffsource' => array (		
			'config' => array (
				'type' => 'passthrough'
			)
		),
		'title' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.title',		
			'config' => array (
				'type' => 'input',	
				'size' => '30',	
				'eval' => 'required,trim',
			)
		),
		'title_de' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.title_de',		
			'config' => array (
				'type' => 'input',	
				'size' => '30',
			)
		),
		'description' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.description',		
			'config' => array (
				'type' => 'text',
				'cols' => '30',	
				'rows' => '5',
			)
		),
		'description_de' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.description_de',		
			'config' => array (
				'type' => 'text',
				'cols' => '30',	
				'rows' => '5',
			)
		),
		'iso5218' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.iso5218',		
			'config' => array (
				'type'     => 'input',
				'size'     => '2',
				'max'      => '1',
				'eval'     => 'int',
				'checkbox' => '',
				'range'    => array (
					'upper' => '9',
					'lower' => '0'
				),
				'default' => 0
			)
			
		),
		'active_entry' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.active_entry',		
			'config' => array (
				'type'     => 'input',
				'size'     => '2',
				'max'      => '1',
				'eval'     => 'int',
				'checkbox' => '',
				'range'    => array (
					'upper' => '9',
					'lower' => '0'
				),
				'default' => 0
			)
		),
		'cdc' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.cdc',		
			'config' => array (
				'type' => 'input',	
				'size' => '2',	
				'max' => '1',	
				'eval' => 'trim',
			)
		),
		'ecml' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.ecml',		
			'config' => array (
				'type' => 'input',	
				'size' => '2',	
				'max' => '1',	
				'eval' => 'trim',
			)
		),
		'naaccr' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.naaccr',		
			'config' => array (
				'type'     => 'input',
				'size'     => '2',
				'max'      => '1',
				'eval'     => 'int',
				'checkbox' => '',
				'range'    => array (
					'upper' => '9',
					'lower' => '0'
				),
				'default' => 0
			)
		),
		'usa_census' => array (		
			'exclude' => 1,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.usa_census',		
			'config' => array (
				'type'     => 'input',
				'size'     => '2',
				'max'      => '1',
				'eval'     => 'int',
				'checkbox' => '',
				'range'    => array (
					'upper' => '2',
					'lower' => '1'
				),
				'default' => 0
			)
		),
		'hl7' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.hl7',		
			'config' => array (
				'type' => 'input',	
				'size' => '2',	
				'max' => '1',	
				'eval' => 'trim',
			)
		),
		'x12' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.x12',		
			'config' => array (
				'type' => 'input',	
				'size' => '2',	
				'max' => '1',	
				'eval' => 'trim',
			)
		),
		'astm_e1633' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.astm_e1633',		
			'config' => array (
				'type' => 'input',	
				'size' => '3',	
				'max' => '2',	
				'eval' => 'trim',
			)
		),
		'dcm' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.dcm',		
			'config' => array (
				'type' => 'input',	
				'size' => '7',	
				'max' => '6',	
				'eval' => 'trim',
			)
		),
		'zims' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.zims',		
			'config' => array (
				'type' => 'input',	
				'size' => '14',	
				'max' => '13',	
				'eval' => 'trim',
			)
		),
		'obis' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.obis',		
			'config' => array (
				'type' => 'input',	
				'size' => '2',	
				'max' => '1',	
				'eval' => 'trim',
			)
		),
		'ubif' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.ubif',		
			'config' => array (
				'type' => 'input',	
				'size' => '30',	
				'max' => '30',	
				'eval' => 'trim',
			)
		),
		'ubif_short' => array (		
			'exclude' => 0,		
			'label' => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex.ubif_short',		
			'config' => array (
				'type' => 'input',	
				'size' => '3',
				'max' => '2',	
			)
		),
	),
	'types' => array (
		'0' => array('showitem' => 'sys_language_uid;;;;1-1-1, l10n_parent, l10n_diffsource, title;;;;2-2-2, title_de;;;;3-3-3, description, description_de, iso5218, active_entry, cdc, ecml, naaccr, usa_census, hl7, x12, astm_e1633, dcm, zims, obis, ubif, ubif_short')
	),
	'palettes' => array (
		'1' => array('showitem' => '')
	)
);
?>