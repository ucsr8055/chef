# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ucsr8055"
client_key               "#{current_dir}/ucsr8055.pem"
chef_server_url          "https://moni/organizations/aveva"
validation_client_name	"aveva-validator"
validation_key		"aveva-validator.pem"
cache_type		"BasicFile"
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
