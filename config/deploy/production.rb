set :stage, :production
server "159.203.126.221", user: "rails", roles: %w{app web}
# server "74.208.166.108", user: "spree", roles: %w{app web}
# server "45.55.168.68", user: "spree", roles: %w{app web}
# set :tmp_dir, "/home/spree/tmp"
# set :default_env, { rvm_bin_path: "/usr/local/rvm/rubies/ruby-2.2.1/bin/ruby" }
# server "haproxy438.aws-us-east-1-portal.5.dblayer.com:10438",
#   user: 'admin',
#   roles: %w{db},
#   ssl_mode: "require"
  
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value