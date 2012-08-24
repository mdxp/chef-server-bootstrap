cron 'Compact Chef DB' do
  user 'root'
  hour '1'
  minute '0'
  command 'curl -H "Content-Type: application/json" -X POST http://localhost:5984/chef/_compact > /dev/null 2>&1'
end

cron 'Compact Chef Views' do
  user 'root'
  hour '1'
  minute '30'
  command 'bash -c \'for x in checksums clients cookbooks data_bags environments id_map nodes roles sandboxes users; do curl -H "Content-Type: application/json" -X POST http://localhost:5984/chef/_compact/$x ; done\' > /dev/null 2>&1'
end

cron 'Clean-up solr logs older than 7 days' do
  user 'root'
  hour '3'
  minute '0'
  command 'find /var/lib/chef/solr/jetty/logs/* -mtime +7 -exec rm {} \;'
end
