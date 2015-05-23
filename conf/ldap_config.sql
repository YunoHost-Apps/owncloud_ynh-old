REPLACE INTO oc_appconfig (appid, configkey, configvalue) VALUES
('files_external', 'enabled', 'yes'),
('files_external', 'installed_version', '0.2.3'),
('files_external', 'ocsid', '166048'),
('files_external', 'types', 'filesystem'),
('user_ldap', 'enabled', 'yes'),
('user_ldap', 'installed_version', '0.5.0'),
('user_ldap', 'ocsid', '166061'),
('user_ldap', 'types', 'authentication'),
('user_ldap', 'ldap_uuid_attribute', 'auto'),
('user_ldap', 'ldap_host', 'localhost'),
('user_ldap', 'ldap_port', '389'),
('user_ldap', 'ldap_base', 'dc=yunohost,dc=org'),
('user_ldap', 'ldap_base_users', 'dc=yunohost,dc=org'),
('user_ldap', 'ldap_base_groups', 'dc=yunohost,dc=org'),
('user_ldap', 'ldap_tls', '0'),
('user_ldap', 'ldap_display_name', 'cn'),
('user_ldap', 'ldap_userlist_filter', 'objectClass=mailAccount'),
('user_ldap', 'ldap_group_filter', 'objectClass=posixGroup'),
('user_ldap', 'ldap_group_display_name', 'cn'),
('user_ldap', 'ldap_group_member_assoc_attribute', 'uniqueMember'),
('user_ldap', 'ldap_login_filter', '(&(|(objectclass=mailAccount))(uid=%uid))'),
('user_ldap', 'ldap_quota_attr', 'mailQuota'),
('user_ldap', 'ldap_quota_def', ''),
('user_ldap', 'ldap_email_attr', 'mail'),
('user_ldap', 'ldap_cache_ttl', '600'),
('user_ldap', 'ldap_configuration_active', '1'),
('user_ldap', 'home_folder_naming_rule', ''),
('user_ldap', 'ldap_backup_host', ''),
('user_ldap', 'ldap_dn', ''),
('user_ldap', 'ldap_agent_password', ''),
('user_ldap', 'ldap_backup_port', ''),
('user_ldap', 'ldap_nocase', ''),
('user_ldap', 'ldap_turn_off_cert_check', ''),
('user_ldap', 'ldap_override_main_server', ''),
('user_ldap', 'ldap_attributes_for_user_search', ''),
('user_ldap', 'ldap_attributes_for_group_search', ''),
('user_ldap', 'ldap_expert_username_attr', 'uid'),
('user_ldap', 'ldap_expert_uuid_attr', '');

CREATE TABLE IF NOT EXISTS `oc_ldap_group_mapping` (
  `ldap_dn` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `owncloud_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `directory_uuid` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ldap_dn`),
  UNIQUE KEY `owncloud_name_groups` (`owncloud_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `oc_ldap_group_members` (
  `owncloudname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `owncloudusers` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`owncloudname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `oc_ldap_user_mapping` (
  `ldap_dn` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `owncloud_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `directory_uuid` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`owncloud_name`),
  UNIQUE KEY `ldap_dn_users` (`ldap_dn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
