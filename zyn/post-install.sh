#!/bin/bash
DBHOST="localhost"
DBUSER="zyn-retail"
RDBUSER="zyn-retail"
PASSWORD="password"
DBNAME="zyn_retail_development"
HOSTNAME="magebox-retail.zyn.ca"

echo "updating database for magebox hostname"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = '$HOSTNAME/' WHERE config_id IN (662,1417,1418);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = '$HOSTNAME/skin/' WHERE config_id IN (663,667);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = '$HOSTNAME/media/' WHERE config_id IN (664,668);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = '$HOSTNAME/js/' WHERE config_id IN (665,669);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value='' WHERE config_id in (681,2038,2034);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = '0' WHERE config_id IN (885,1580);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = '1' WHERE config_id IN (402,1249);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = '6BCyos4CJkH1A+C1mXj1Y5SsPmuhJo0iSuFIs2/KU6Y=' WHERE config_id IN (1246);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = 'AqdjtPDfRGQoRCtXr9Eo0A==' WHERE config_id IN (1247);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = 'EcXrM7mTow0veRCByN3Q8oJHZEn8ypWppzfofenIEXkoChh14AZDX1VeVp0otU0NfdEWT3G3S0w=' WHERE config_id IN (1248);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = 'development' WHERE config_id IN (1867);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = 'riH+FAva3ITgouhNEI6YBO1lf660oGdt' WHERE config_id IN (1869);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = 'o8dzs97RbiQsH/srTcUha82rhPBIEy0c' WHERE config_id IN (1870);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = 'disabled' WHERE config_id IN (1937);DELETE FROM core_config_data WHERE config_id IN (1368,1860,1861,538,1088,1609);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = '' WHERE config_id IN (694);"
mysql -h $DBHOST -u $DBUSER -p$PASSWORD $DBNAME -e "UPDATE $DBNAME.core_config_data SET value = 'disabled' WHERE config_id IN (1959);"

echo 'done';


