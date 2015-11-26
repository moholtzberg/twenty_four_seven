source 'https://rubygems.org'
source 'https://rails-assets.org'

gem 'rails', '4.2.2'
gem 'sqlite3'
gem 'sass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'paperclip'
gem 'aws-sdk', '< 2.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'unicorn'
gem 'browser'
# gem 'font-awesome-sass'

group :production do
  gem "pg"
  gem 'therubyracer',  platforms: :ruby
  gem 'rails_12factor'
end

group :development do 
  gem 'capistrano-rails', '~> 1.1.3'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  # gem 'capistrano3-unicorn'
  gem 'better_errors'
  gem "binding_of_caller"
  # gem 'debugger'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

gem 'newrelic_rpm'

gem 'whenever', :require => false
# gem 'sendgrid-ruby'
gem 'mailgun-ruby', '~>1.0.3', require: 'mailgun'
gem 'business_time'
gem 'premailer-rails'

spree_version = '3-0-stable'
master = 'master'

gem 'spree',                        github: 'spree/spree',                                  branch: spree_version
gem 'spree_gateway',                github: 'spree/spree_gateway',                          branch: spree_version
gem 'spree_auth_devise',            github: 'spree/spree_auth_devise',                      branch: spree_version

gem 'spree_print_invoice',          github: 'spree-contrib/spree_print_invoice',            branch: spree_version
gem 'spree_sitemap',                github: 'spree-contrib/spree_sitemap',                  branch: spree_version
gem 'spree_active_shipping',        github: 'spree-contrib/spree_active_shipping',          branch: spree_version
# gem 'spree_editor',                 github: 'spree-contrib/spree_editor',                   branch: spree_version
gem 'spree_comments',               github: 'spree-contrib/spree_comments',                 branch: spree_version
gem 'spree_related_products',       github: 'spree-contrib/spree_related_products',         branch: spree_version
# gem 'spree_paypal_express',         github: 'simontseng/better_spree_paypal_express',    branch: spree_version
gem 'spree_static_content',         github: 'spree-contrib/spree_static_content',           branch: spree_version
gem 'spree_digital',                github: 'spree-contrib/spree_digital',                  branch: spree_version
# gem 'spree_drop_ship',              github: 'spree-contrib/spree_drop_ship',                branch: spree_version 

# gem 'spree_google_base',            github: 'jumph4x/spree-google-base',                    branch: '3-0-rc'
gem 'spree_shipstation',            github: 'moholtzberg/spree_shipstation',                branch: spree_version

# gem 'spree_multi_domain',            github: 'spree-contrib/spree-multi-domain',              branch: spree_version
# gem 'spree_email_to_friend',         github: 'spree-contrib/spree_email_to_friend',           branch: spree_version
# gem 'spree_mail_settings',           github: 'spree-contrib/spree_mail_settings',             branch: spree_version

# gem 'spree_vouchers',                github: 'spree-contrib/spree_vouchers',                  branch: '2-4-beta'
# gem 'spree_store_credits',           github: 'spree-contrib/spree_store_credit_payment_method',branch: "2-3-stable"
# gem 'spree_price_books',             github: 'spree-contrib/spree_price_books',               branch: '2-4-stable'
# gem 'spree_social',                  github: 'spree-contrib/spree_social',                    branch: master
# gem 'spree_product_assembly',        github: 'spree-contrib/spree-product-assembly',          branch: master
# gem 'spree_reviews',                 github: 'pebra/spree_reviews',                           branch: spree_version
# gem "spree_address_book",            github: 'romul/spree_address_book',                      branch: spree_version
# gem 'spree_user_groups',             github: 'romul/spree_user_groups',                       branch: spree_version

# gem 'spree_google_base',             github: 'bpuklich/spree-google-base',                    branch: '2-4-stable'
# gem 'spree_add_to_cart_ajax',        github: 'nathandao/spree_add_to_cart_ajax',              branch: '2-4-stable'
# gem 'spree_reffiliate',              github: 'DynamoMTL/spree_reffiliate',                    branch: '2-4-stable'
# gem 'spree_subscriptions',           github: 'DynamoMTL/spree_subscriptions',                 branch: 'lola'
# gem 'spree-bank-transfer',           github: 'julien-bergner/spree_bank_transfer',            branch: '2-4-stable'
# gem 'spree_account_recurring',       github: 'gpongelli/spree-account-recurring',             branch: '2-4-stable'

# gem 'spree_advanced_admin_ui',       github: 'moholtzberg/spree_advanced_admin_ui',           branch: master
# gem 'spree_env_ribbon',              github: 'moholtzberg/spree_env_ribbon',                  branch: master
# gem 'spree_one_page_checkout',       github: 'moholtzberg/spree_one_page_checkout'
# gem 'spree_ajax_add_to_cart',        github: 'moholtzberg/spree_ajax_add_to_cart',            branch: spree_version

# gem 'spree_sale_prices',             github: 'moholtzberg/spree_sale_prices',                 branch: spree_version
# gem 'spree_sale_prices',            path: '../spree_sale_prices'
# gem 'spree_terms',                   path: '../spree_terms'
# gem 'spree_advanced_admin_ui',       path: '../spree_advanced_admin_ui'
# gem 'spree_volume_pricing',          github: 'spree-contrib/spree_volume_pricing',           branch: spree_version
gem 'spree_msrp',                   github: 'moholtzberg/spree_msrp',                       branch: spree_version
gem 'spree_product_documents',      github: 'moholtzberg/spree_product_documents',          branch: master
gem 'spree_error_pages',            github: 'moholtzberg/spree_error_pages',                branch: master
# gem 'spree_messages',                github: 'moholtzberg/spree_messages',                   branch: master
gem 'spree_credit_lines',           github: 'moholtzberg/spree_credit_lines',               branch: master
# gem 'spree_po_number',               path: '../spree_po_number'
# gem 'spree_user_prices',             path: '../spree_user_prices'
# gem 'spree_messages',                path: '../spree_messages'
# gem 'spree_credit_lines',            path: '../spree_credit_lines'
# gem 'spree_copiersflorida_theme',    path: '../spree_copiersflorida_theme'
# gem 'spree_filter_by_taxon',         path: '../spree_filter_by_taxon'
# gem 'spree_copiersflorida_theme',   github: 'moholtzberg/spree_copiersflorida_theme',       branch: master