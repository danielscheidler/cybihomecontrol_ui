echo "Geben Sie das DB-Passwort für root an"
read databasePasswd

echo "Geben Sie den DB-Host an"
read databaseHost

echo "Geben Sie den Datenbanknamen an"
read databaseName

now=$(date +"%Y_%m_%d")
filename="installation_sql_$now.sql"

echo  > $filename

####################################################
# Export aller Tabellen (einzeln)
#
# -d wird verwendet um Datenexport zu vermeiden
#    (nur Strukturen=DDL exportieren)
####################################################

mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName action_log                    | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName colors                        | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName dbcombos                      | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName default_combo_values          | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName fixtexte                      | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName form_insert_validation        | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_alarm             | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_alarmgeber_art    | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_alarm_geber       | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_alarm_items       | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_art               | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_condition         | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_config            | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_cron              | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
# mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_cronview        | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_cron_items        | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_cron_pause        | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_etagen             | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_modes             | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_noframe           | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_regeln            | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_regeln_items      | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
#mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_regel_item_view  | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_sender            | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_sensor            | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_sensor_arten      | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_sensor_log        | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_shortcut          | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
#mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_shortcutview     | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_shortcut_items    | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_term              | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_term_trigger_type | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_term_type         | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName homecontrol_zimmer            | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName kopftexte                     | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName links                         | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName log                           | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName lookupwerte                   | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName menu                          | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName pageconfig                    | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName programm_gruppen              | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName public_vars                   | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName run_links                     | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName site-enter                    | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName smileys                       | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName tags                          | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName update_log                    | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump -d  --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName user                          | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName userstatus                    | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename
mysqldump     --compatible=mysql40 --skip-comments --skip-set-charset --skip-tz-utc -u root -p$databasePasswd -h $databaseHost $databaseName user_groups                   | sed -e 's/TYPE=MyISAM/ /g' | sed -e 's/TYPE=InnoDB/ /g' >> $filename


# Auto-Increment f�r leere Tabellen korrigieren
echo "ALTER TABLE action_log MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"                 >> $filename
echo "ALTER TABLE form_insert_validation MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"     >> $filename
echo "ALTER TABLE homecontrol_alarm MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"          >> $filename
echo "ALTER TABLE homecontrol_alarm_geber MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"    >> $filename
echo "ALTER TABLE homecontrol_alarm_items MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"    >> $filename
echo "ALTER TABLE homecontrol_config MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"         >> $filename
echo "ALTER TABLE homecontrol_cron MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"           >> $filename
echo "ALTER TABLE homecontrol_cron_items MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"     >> $filename
#echo "ALTER TABLE homecontrol_cron_pause MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"     >> $filename
echo "ALTER TABLE homecontrol_etagen MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"         >> $filename
echo "ALTER TABLE homecontrol_noframe MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"        >> $filename
echo "ALTER TABLE homecontrol_regeln MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"         >> $filename
echo "ALTER TABLE homecontrol_regeln_items MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"   >> $filename
echo "ALTER TABLE homecontrol_sender MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"         >> $filename
echo "ALTER TABLE homecontrol_sensor MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"         >> $filename
#echo "ALTER TABLE homecontrol_sensor_log MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"     >> $filename
echo "ALTER TABLE homecontrol_shortcut MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"       >> $filename
echo "ALTER TABLE homecontrol_shortcut_items MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;" >> $filename
echo "ALTER TABLE homecontrol_term MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"           >> $filename
echo "ALTER TABLE homecontrol_zimmer MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"         >> $filename
echo "ALTER TABLE update_log MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;"                 >> $filename


########################################################
#
# Manuelle Inserts 
# - Standard-Admin User
# - PageConfig
#
########################################################

# Admin User
echo "INSERT INTO user (id, Vorname, Nachname, Name, Geburtstag, Strasse, Plz, Ort, Email, Telefon, Fax, Handy, Icq, Aim, Homepage, User, Pw, Nation, Status, user_group_id, Newsletter, Signatur, Lastlogin, Posts, Beschreibung, pic, pnnotify, autoforumnotify, geaendert, emailJN, icqJN, telefonJN, Level, EP, Gold, Holz, Erz, Felsen, Wasser, Nahrung, aktiv, activationString, angelegt, clan_id, rasse_id)             VALUES (1, 'Admini', 'Istrator', 'Admini Istrator', '0000-00-00', '-', '-', '-', '', '-', '', '-', '', NULL, '', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'admin', 1, 'true', '', '2016-09-05 11:20:17', 0, NULL, 'unknown.jpg', 'Y', 'Y', '2016-09-05 09:20:17', 'N', 'N', 'N', 0, 0, 0, 0, 0, 0, 0, 0, 'J', NULL, '0000-00-00', NULL, 1);" 		>> $filename
echo "ALTER TABLE user MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;" >> $filename


# PageConfig
echo "INSERT INTO pageconfig VALUES" >> $filename
echo "(1, 'pagetitel', 'Haussteuerung', 0, '2015-09-28 00:34:39', NULL)," >> $filename
echo "(2, 'pageowner', 'SEITENINHABER', 0, '2013-01-08 02:32:07', NULL)," >> $filename
echo "(3, 'background_pic', '', 0, '2008-09-18 15:19:00', NULL)," >> $filename
echo "(4, 'banner_pic', 'pics/banner/13.jpg', 0, '2008-11-13 23:20:50', NULL)," >> $filename
echo "(5, 'sessiontime', '0', 0, '0000-00-00 00:00:00', NULL)," >> $filename
echo "(6, 'logging_aktiv', 'true', 0, '0000-00-00 00:00:00', NULL)," >> $filename
echo "(7, 'debugoutput_aktiv', 'false', 0, '2008-10-25 11:37:21', NULL)," >> $filename
echo "(8, 'classes_autoupdate', 'false', 0, '0000-00-00 00:00:00', NULL)," >> $filename
echo "(9, 'pagedeveloper', 'Daniel Scheidler\r\n\r\n[fett]Email:[/fett]    support@smarthomeyourself.de\r\n', 0, '2013-01-08 02:39:44', NULL)," >> $filename
echo "(10, 'pagedesigner', 'Daniel Scheidler', 0, '2013-01-08 02:40:04', NULL)," >> $filename
echo "(11, 'background_repeat', 'repeat', 0, '0000-00-00 00:00:00', NULL)," >> $filename
echo "(12, 'hauptmenu_button_image', 'pics/hauptmenu_button.jpg', 0, '0000-00-00 00:00:00', NULL)," >> $filename
echo "(13, 'max_rowcount_for_dbtable', '25', 0, '2008-10-14 23:14:17', NULL)," >> $filename
echo "(14, 'hauptmenu_button_image_hover', 'pics/hauptmenu_button_hover.jpg', 0, '2008-10-20 07:18:56', NULL)," >> $filename
echo "(15, 'suchbegriffe', 'Haussteuerung, Arduino, Funk', 0, '2012-10-29 12:13:48', NULL)," >> $filename
echo "(16, 'arduino_url', '192.168.1.12/rawCmd', 0, '2014-09-10 21:15:01', NULL)," >> $filename
echo "(17, 'google_maps_API_key', '', 0, '2013-01-08 02:41:58', NULL)," >> $filename
echo "(18, 'NotifyTargetMail', '', 0, '2015-08-30 23:10:27', 'Benachrichtigungs-Email')," >> $filename
echo "(19, 'KontaktformularTargetMail', '', 0, '2013-01-08 02:33:52', NULL)," >> $filename
echo "(20, 'timezoneadditional', '2', 0, '0000-00-00 00:00:00', NULL)," >> $filename
echo "(21, 'loginForSwitchNeed', 'J', 0, '2016-09-06 16:56:48', 'Login zum schalten ben&ouml;tigt')," >> $filename
echo "(22, 'abwesendSimulation', 'N', 0, '2016-08-10 20:53:28', 'Anwesenheits-Simulation')," >> $filename
echo "(23, 'abwesendMotion', 'N', 0, '2015-08-26 22:46:27', 'Kamera-Bewegungserkennung')," >> $filename
echo "(24, 'anwesendMotion', 'N', 0, '2016-08-10 20:50:02', 'Kamera-Bewegungserkennung')," >> $filename
echo "(25, 'sessionDauer', '6000', 0, '2015-08-29 17:06:18', 'Zeit bis zum erneuten Login in Sekunden')," >> $filename
echo "(26, 'motionDauer', '9', 0, '2015-09-28 00:37:09', 'Tage die Bewegungs-Bilder behalten')," >> $filename
echo "(27, 'sensorlogDauer', '60', 0, '2015-08-28 07:03:00', 'Tage die Sensor-Log Daten behalten')," >> $filename
echo "(28, 'abwesendAlarm', 'N', 0, '2016-08-10 20:50:09', NULL)," >> $filename
echo "(29, 'currentMode', '2', 0, '2015-10-11 17:18:53', NULL)," >> $filename
echo "(30, 'timelineDuration', '3', 0, '2015-09-28 00:33:59', 'Wie viele Tage sollen in der Timeline angezeigt werden?')," >> $filename
echo "(31, 'loginForTimelinePauseNeed', 'J', 0, '2016-05-31 09:22:58', 'Gibt an, ob zum pausieren in der Timeline ein Login notwendig ist.')," >> $filename
echo "(32, 'btSwitchActive', 'J', 0, '2016-09-02 22:37:16', 'Gibt an, ob ein BT-Switch eingesetzt wird.')," >> $filename
echo "(33, 'loginExternOnly', 'J', 0, '0000-00-00 00:00:00', 'Login zum schalten nur bei abweichender IP Range notwendig')," >> $filename
echo "(34, 'switchButtonsOnIconActive', 'J', 0, '0000-00-00 00:00:00', 'Buttons in der Steuerung direkt sichtbar?');" >> $filename

echo "ALTER TABLE pageconfig MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;" >> $filename


########################################################
#
# Views anlegen
#
########################################################

# Cron View
########################################################
# 0 (f�r Sonntag) bis 6 (f�r Samstag)
#echo "drop view if exists homecontrol_cronview;"                                                >> $filename
echo "create view homecontrol_cronview as "                                                     >> $filename
echo "SELECT 'Montag'  wochentag, 1 tagnr, hc.* FROM homecontrol_cron hc WHERE montag = 'J'"  >> $filename
echo "union SELECT 'Dienstag', 2, hc1.* FROM homecontrol_cron hc1 WHERE dienstag = 'J'"       >> $filename
echo "union SELECT 'Mittwoch', 3, hc2.* FROM homecontrol_cron hc2 WHERE mittwoch = 'J'"       >> $filename
echo "union SELECT 'Donnerstag', 4, hc3.* FROM homecontrol_cron hc3 WHERE donnerstag = 'J'"   >> $filename
echo "union SELECT 'Freitag', 5, hc4.* FROM homecontrol_cron hc4 WHERE freitag = 'J'"         >> $filename
echo "union SELECT 'Samstag', 6, hc5.* FROM homecontrol_cron hc5 WHERE samstag = 'J'"         >> $filename
echo "union SELECT 'Sonntag', 0, hc6.* FROM homecontrol_cron hc6 WHERE sonntag = 'J';"         >> $filename


# Regel View
########################################################
#echo "drop view if exists homecontrol_regel_item_view;"                                         >> $filename
echo "create view homecontrol_regel_item_view as"                                               >> $filename
echo "SELECT CONCAT( r.id,  '-', i.id ) id, r.id regel_id, r.name name, r.beschreibung beschreibung, i.config_id config_id, i.art_id art_id, i.zimmer_id zimmer_id, i.etagen_id etagen_id, i.on_off on_off"         >> $filename
echo "FROM homecontrol_regeln r, homecontrol_regeln_items i"                                    >> $filename
echo "WHERE r.id = i.regel_id;"                                                                  >> $filename


# Shortcut View
########################################################
#echo "drop view if exists homecontrol_shortcutview;"                                                                         >> $filename
echo "create view homecontrol_shortcutview as "                                                                              >> $filename
echo "select concat(s.id,'-', c.id) id,"                                                                                     >> $filename
echo "       s.id shortcut_id, s.name shortcut_name, s.beschreibung beschreibung,"                                           >> $filename
echo "       i.id item_id, i.art_id art, c.zimmer, z.etage_id, i.funkwahl, i.on_off,"                                        >> $filename
echo "       c.id config_id, c.name name, c.funk_id, c.funk_id2, c.x, c.y, a.pic, c.geaendert geaendert"                     >> $filename
echo "from homecontrol_shortcut s, "                                                                                         >> $filename
echo "     homecontrol_shortcut_items i, "                                                                                   >> $filename
echo "     homecontrol_config c  LEFT JOIN "                                                                                 >> $filename
echo "     homecontrol_zimmer z ON z.id = c.zimmer  LEFT JOIN "                                                              >> $filename
echo "     homecontrol_art a ON c.control_art = a.id "                                                                       >> $filename
echo "WHERE i.shortcut_id = s.id"                                                                                            >> $filename
echo "  AND (        (c.id = i.config_id OR i.config_id is null)"                                                            >> $filename
echo "          AND  (c.control_art = i.art_id OR i.art_id is null)"                                                         >> $filename
echo "          AND  (c.zimmer = i.zimmer_id OR i.zimmer_id is null)"                                                        >> $filename
echo "          AND  (c.etage = i.etagen_id OR i.etagen_id is null)"                                                         >> $filename
echo "     )"                                                                                                                >> $filename
echo "  AND ("                                                                                                               >> $filename
echo "    ("                                                                                                                 >> $filename
echo "        (i.config_id IS NULL AND i.zimmer_id IS NOT NULL)"                                                             >> $filename
echo "        AND NOT EXISTS( "                                                                                              >> $filename
echo "            SELECT 'X' FROM homecontrol_shortcut_items iZ WHERE iZ.shortcut_id = s.id AND iZ.config_id = c.id"         >> $filename
echo "        )"                                                                                                             >> $filename
echo "    ) OR (i.config_id IS NOT NULL OR i.zimmer_id IS NULL)"                                                             >> $filename
echo "  )"                                                                                                                   >> $filename
echo "  AND ("                                                                                                               >> $filename
echo "    ("                                                                                                                 >> $filename
echo "        (i.config_id IS NULL AND i.etagen_id IS NOT NULL)"                                                             >> $filename
echo "        AND NOT EXISTS( "                                                                                              >> $filename
echo "            SELECT 'X' FROM homecontrol_shortcut_items iZ WHERE iZ.shortcut_id = s.id AND (iZ.config_id = c.id OR iZ.zimmer_id = i.zimmer_id)"         >> $filename
echo "        )"                                                                                                             >> $filename
echo "    ) OR (i.config_id IS NOT NULL OR i.zimmer_id IS NOT NULL OR i.etagen_id IS NULL)"                                  >> $filename
echo "  );"                                                                                                                   >> $filename

echo "Datenbank-Export beendet";
echo $filename