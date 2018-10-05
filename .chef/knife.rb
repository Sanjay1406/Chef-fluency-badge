# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "sanjay"
client_key               "#{current_dir}/sanjay.pem"
chef_server_url          "https://samcricketersmailbox-bb1a42832.mylabserver.com/organizations/westpac"
cookbook_path            ["#{current_dir}/../cookbooks"]
