#
# Table structure for table "static_sex"
#
DROP TABLE IF EXISTS static_sex;
CREATE TABLE static_sex (
  uid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL default '0',
  tstamp int(11) NOT NULL default '0',
  crdate int(11) NOT NULL default '0',
  cruser_id int(11) NOT NULL default '0',
  title varchar(255) default '',
  iso5218 char(1) default '',
  active_entry char(1) default '',
  cdc char(1) NOT NULL default '',
  ecml char(1) NOT NULL default '',
  naaccr char(1) default '',
  usa_census char(1) default '',
  hl7 char(1) NOT NULL default '',
  x12 char(1) NOT NULL default '',
  astm_e1633 char(2) NOT NULL default '',
  dcm varchar(6) NOT NULL default '',
  zims varchar(255) NOT NULL default '',
  obis char(1) NOT NULL default '',
  ubif varchar(255) NOT NULL default '',
  sys_language_uid int(11) NOT NULL default '0',
  l10n_parent int(11) NOT NULL default '0',
  l10n_diffsource mediumtext,
  ubif_short tinytext,
  description text,
  title_de tinytext,
  description_de text,
  PRIMARY KEY (uid),
  KEY parent (pid)
);


INSERT INTO tx_mdbstaticsex_sex VALUES ('1', '3', '1252063878', '1252055365', '1', 'Male', '1', '1', 'M', 'M', '1', '1', 'M', 'M', 'M', 'M', 'Male', 'M', 'Male', '0', '0', 'a:1:{s:4:"zims";N;}', 'm', '', NULL, 'Männlich');
INSERT INTO tx_mdbstaticsex_sex VALUES ('2', '3', '1252063878', '1252055475', '1', 'Female', '2', '2', 'F', 'F', '2', '2', 'F', 'F', 'F', 'F', 'Female', 'F', 'Female', '0', '0', 'a:1:{s:4:"zims";N;}', 'f', '', NULL, 'Weiblich');
INSERT INTO tx_mdbstaticsex_sex VALUES ('3', '3', '1253038146', '1252055711', '1', 'Unknown Sex', '0', '0', '', 'U', '0', '0', 'U', 'U', 'U', 'U', 'Undetermined', 'U', 'Unknown Sex', '0', '0', 'a:19:{s:16:"sys_language_uid";N;s:5:"title";N;s:8:"title_de";N;s:11:"description";N;s:14:"description_de";N;s:7:"iso5218";N;s:12:"active_entry";N;s:3:"cdc";N;s:4:"ecml";N;s:6:"naaccr";N;s:10:"usa_census";N;s:3:"hl7";N;s:3:"x12";N;s:10:"astm_e1633";N;s:3:"dcm";N;s:4:"zims";N;s:4:"obis";N;s:4:"ubif";N;s:10:"ubif_short";N;}', '?', '', NULL, 'Unbekannt, keine Information vorhanden (nicht aufgezeichnet oder nicht untersucht). Vergleiche „ambiguous“ und „indeterminate“');
INSERT INTO tx_mdbstaticsex_sex VALUES ('4', '3', '1252063878', '1252055810', '1', 'Hermaphrodite', '', '', '', '', '3', '', '', '', 'H', 'H', 'Hermaphrodite', 'H', 'Hermaphrodite', '0', '0', 'a:1:{s:4:"zims";N;}', 'h', 'In biological context, a hermaphrodite is an organism that has both male and female reproductive organs.[1]\r\nMany taxonomic groups of animals (mostly invertebrates), do not have separate sexes (genders). In these groups, hermaphroditism is a normal condition, enabling a form of sexual reproduction in which both partners can act as the "male" or "female". For example, the great majority of pulmonate and opisthobranch snails and slugs are hermaphrodites. Hermaphroditism is also found in some fish, and to a lesser degree in other vertebrates.', NULL, 'Ein Organismus kann zu bestimmten Zeiten im Erwachsenenalter männliche und weibliche Geschlechtsorgane haben. Es ist ein allgemeiner Begriff, der nicht unterscheidet ob dies simultan oder sequentiuell der Fall ist.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('5', '3', '1252063878', '1252055878', '1', 'Simultaneous Hermaphrodite', '', '', '', '', '', '', '', '', '', '', '', 'B', 'SimultaneousHermaphrodite', '0', '0', 'a:1:{s:4:"zims";N;}', 'sh', '', NULL, 'Ein Organismus, der im Erwachsenenalter gleichzeitig männliche und weibliche Geschlechtsorgane hat.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('6', '3', '1252063878', '1252055929', '1', 'Male changed to Female', '', '4', '', '', '', '', '', '', 'MC', 'MC', '', '', 'Male2Female', '0', '0', 'a:1:{s:4:"zims";N;}', 'mc', '', NULL, 'Der Organismus startet männlich und ändert das Geschlecht im Laufe des Lebens zu weiblich. (Sequentieller Hermaphrodit: Proterandrie, Vormännlichkeit, Erstmännlichkeit). Beispiele: Sägebarsche; viele Pflanzen; Menschen, die sich einer geschlechtsangleichenden Operation unterziehen. Dieser Begriff beschreibt nicht in welcher Phase sich das Individuum gerade befindet.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('7', '3', '1252063878', '1252055977', '1', 'Female changed to Male', '', '3', '', '', '', '', '', '', 'FC', 'FC', '', '', 'Female2Male', '0', '0', 'a:1:{s:4:"zims";N;}', 'fc', '', NULL, 'Der Organismus startet weiblich und das Geschlecht ändert sich im späteren Leben zu männlich. (Sequentieller Hermaphrodit: Proterogynie, Protogynie, Vorweiblichkeit, Erstweiblichkeit). Beispiel: Lippfische; manche Pflanzen; Menschen, die sich einer geschlechtsangleichenden Operation unterziehen. Dieser Begriff beschreibt nicht in welcher Phase sich das Individuum gerade befindet.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('8', '3', '1252063878', '1252056013', '1', 'Hermaphrodite Male Phase', '', '', '', '', '', '', '', '', '', '', '', '', 'HermaphroditeMalePhase', '0', '0', 'a:1:{s:4:"zims";N;}', 'hm', '', NULL, 'Sequentielle Hermaphroditen in der männlichen Phase.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('9', '3', '1252063878', '1252056036', '1', 'Hermaphrodite Female Phase', '', '', '', '', '', '', '', '', '', '', '', '', 'HermaphroditeFemalePhase', '0', '0', 'a:1:{s:4:"zims";N;}', 'hf', '', NULL, 'Sequentielle Hermaphroditen in der weiblichen Phase.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('10', '3', '1252063878', '1252056107', '1', 'HermaphroditeTransitional', '', '', '', '', '', '', '', '', '', '', '', 'T', 'Hermaphrodite Transitional', '0', '0', 'a:1:{s:4:"zims";N;}', 'ht', '', NULL, 'Sequentielle Hermaphroditen in der Übergangsphase.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('11', '3', '1252063878', '1252056229', '1', 'Indeterminate Sex', '9', '9', '', '', '9', '', 'U', 'X', '', '121103', 'Indeterminate', 'I', 'IndeterminateSex', '0', '0', 'a:1:{s:4:"zims";N;}', 'i', '', NULL, 'Der Organismus wurde untersucht, aber das Geschlecht konnte nicht festgestellt werden (beispielsweise im Larvenstadium). Vergleiche „ambiguous“ und „unknown“.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('12', '3', '1252063878', '1252056315', '1', 'Ambiguous Sex', '', '', '', '', '', '', '', '', 'A', '121104', '', '', 'AmbiguousSex', '0', '0', 'a:1:{s:4:"zims";N;}', 'a', '', NULL, 'Die Geschlechtsorgane wurden untersucht, aber das Geschlecht war zweideutig. Eingeschlossen sind dabei abweichende Geschlechtssituationen wie Gynandromorphismus (beispielsweise Insekten, deren eine Seite männlich ist und die andere weiblich). Vergleiche „indeterminate“ und „unknown“.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('13', '3', '1252063878', '1252056978', '1', 'Male Pseudohermaphrodite', '', '', '', '', '', '', '', '', 'MP', 'MP', '', '', '', '0', '0', 'a:1:{s:4:"zims";N;}', NULL, '', NULL, 'männlicher Pseudohermaphrodit.\r\n\r\nDie Codes „MP“ und „FP“ aus den Standards DICOM/ASTM wurden im UBIF-Standard nicht implementiert, da sie nur beim Menschen verwendet werden und eine politisch umstrittene Sichtweise ausdrücken.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('14', '3', '1252063878', '1252057000', '1', 'Female Pseudohermaphrodite', '', '', '', '', '', '', '', '', 'FP', 'FP', '', '', '', '0', '0', 'a:1:{s:4:"zims";N;}', NULL, '', NULL, 'weiblicher Pseudohermaphrodit.\r\n\r\nDie Codes „MP“ und „FP“ aus den Standards DICOM/ASTM wurden im UBIF-Standard nicht implementiert, da sie nur beim Menschen verwendet werden und eine politisch umstrittene Sichtweise ausdrücken.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('15', '3', '1252063878', '1252057086', '1', 'Other sex', '', '', 'O', '', '3', '', 'O', '', '', '121102', '', '', '', '0', '0', 'a:1:{s:4:"zims";N;}', NULL, '', NULL, 'Anderes Geschlecht.\r\n\r\nDer Code "other Sex" wurde im UBIF-Standard nicht implementiert.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('16', '3', '1252063878', '1252057820', '1', 'Mixed Sex Status', '', '', '', '', '', '', '', '', '', '', '', '', 'MixedSex', '0', '0', 'a:1:{s:4:"zims";N;}', 'x', '', NULL, 'Mehrere Individuen mit gemischten Geschlechtern (Die Situation kann bei Ansammlungen vorkommen.)');
INSERT INTO tx_mdbstaticsex_sex VALUES ('17', '3', '1252063878', '1252063136', '1', 'Transexual', '', '', '', '', '4', '', '', '', '', '', '', '', '', '0', '0', 'a:1:{s:4:"zims";N;}', '', 'Transsexualism is a condition in which an individual identifies with a physical sex different from the one they were born with. A medical diagnosis can be made if a person experiences discomfort as a result of a desire to be a member of the opposite sex, or if a person experiences impaired functioning or distress as a result of that gender identification.', 'Transsexuell', 'Transsexualität oder Transsexualismus ist laut ICD-10, der „Internationalen Klassifizierung von Krankheiten” der Weltgesundheitsorganisation (WHO), eine Form der Geschlechtsidentitätsstörung (vergleiche auch Transgender als nicht-klinischen Begriff). Sie liegt vor, wenn ein Mensch körperlich eindeutig dem männlichen oder weiblichen Geschlecht angehört, sich jedoch als Angehöriger des anderen Geschlechts empfindet und danach strebt, sich auch körperlich diesem Geschlecht so gut wie möglich anzunähern. Ob und inwieweit Transsexualismus als Krankheit bezeichnet werden sollte, ist allerdings umstritten.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('18', '3', '1252063878', '1252063652', '1', 'Non-sexed', '', '', '', '', '', '', '', 'N', '', '', '', '', '', '0', '0', 'a:1:{s:4:"zims";N;}', '', 'Gender is not known because observation or examination for such was not recorded or requested by the protocol.', 'Kein Geschlecht', 'Das Geschlecht ist nicht bekannt, da eine Beobachtung oder Untersuchung nicht aufgezeichnet wurde oder mangels Vorgabe nicht stattgefunden hat.');
INSERT INTO tx_mdbstaticsex_sex VALUES ('19', '3', '1252063963', '1252063963', '1', 'Asexual', '', '', '', '', '', '', '', '', '', '', 'Asexual', '', '', '0', '0', 'a:19:{s:16:"sys_language_uid";N;s:5:"title";N;s:8:"title_de";N;s:11:"description";N;s:14:"description_de";N;s:7:"iso5218";N;s:12:"active_entry";N;s:3:"cdc";N;s:4:"ecml";N;s:6:"naaccr";N;s:10:"usa_census";N;s:3:"hl7";N;s:3:"x12";N;s:10:"astm_e1633";N;s:3:"dcm";N;s:4:"zims";N;s:4:"obis";N;s:4:"ubif";N;s:10:"ubif_short";N;}', '', '', 'Asexuell', '');


