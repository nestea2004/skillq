
DROP TABLE IF EXISTS `skq_character_info`;
CREATE TABLE `skq_character_info` (
  `keyRowID` int(16) NOT NULL,
  `characterID` int(16) NOT NULL,
  `characterName` varchar(128) CHARACTER SET latin1 NOT NULL,
  `display` smallint(1) NOT NULL DEFAULT '1',
  `dob` timestamp NULL DEFAULT NULL,
  `corporationID` int(16) DEFAULT NULL,
  `allianceID` int(16) DEFAULT NULL,
  `race` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `bloodline` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `ancestry` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `skillsTrained` int(16) DEFAULT NULL,
  `skillPoints` int(16) DEFAULT NULL,
  `cloneSkillPoints` int(16) DEFAULT NULL,
  `balance` decimal(32,2) DEFAULT NULL,
  `cachedUntil` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastChecked` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `queueFinishes` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `walletCachedUntil` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subFlag` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyRowID`,`characterID`),
  KEY `keyRowID` (`keyRowID`),
  KEY `characterID` (`characterID`),
  KEY `display` (`display`),
  KEY `cachedUntil` (`cachedUntil`),
  KEY `walletCachedUntil` (`walletCachedUntil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

