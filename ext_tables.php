<?php
if (!defined ('TYPO3_MODE')) {
	die ('Access denied.');
}
$TCA['static_sex'] = array (
	'ctrl' => array (
		'title'     => 'LLL:EXT:mdb_static_sex/locallang_db.xml:tx_mdbstaticsex_sex',
		'readOnly' => 1, // Prevents the table from being altered
		//'adminOnly' => 1, // Only admin, if any
		'rootLevel' => 1,
		'is_static' => 1,
		'label'     => 'title',	
		'tstamp'    => 'tstamp',
		'crdate'    => 'crdate',
		'cruser_id' => 'cruser_id',
		'languageField'            => 'sys_language_uid',	
		'transOrigPointerField'    => 'l10n_parent',	
		'transOrigDiffSourceField' => 'l10n_diffsource',	
		'default_sortby' => 'ORDER BY crdate',
		'dynamicConfigFile' => t3lib_extMgm::extPath('mdb_static_sex').'tca.php',
		'iconfile'          => t3lib_extMgm::extRelPath('mdb_static_sex').'icon_tx_mdbstaticsex_sex.png',
	),
);
?>