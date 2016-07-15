# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "eshwarg"
client_key               "#{current_dir}/eshwarg.pem"
validation_client_name   "eg"
validation_key           "#{current_dir}/eg.pem"
chef_server_url          "https://52.91.75.178/organizations/eg"
cookbook_path            ["#{current_dir}/../cookbooks"]
