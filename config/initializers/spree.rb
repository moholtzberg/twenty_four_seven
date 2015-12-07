Spree.config do |config|
  require 'spree/app_configuration_decorator'
  attachment_config = {

    # storage: :file_system,
    # s3_headers: { 
    #   "Cache-Control" => "max-age=31557600" 
    # },
    # s3_protocol:    "https",
    # bucket:         SECRET["AWS"]["S3"]["BUCKET_NAME"],

    styles: {
      mini:     "48x48>",
      small:    "120x120>",
      product:  "240x240>",
      large:    "600x600>"
    },
    # path:          ':app/public/:class/:id/:style/:basename.:extension',
    # default_url:   ':app/public/:class/:id/:style/:basename.:extension',
    default_style: "product"
  }
  
  attachment_config.each do |key, value|
    Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
  end

  puts "=============================================================="
  puts "=============================================================="
  puts "==  AWS ACCESS KEY ID       >>>>>>>>>>>> #{SECRET["AWS"]["ACCESS_KEY_ID"]}"
  puts "==  AWS SECRET ACCESS KEY   >>>>>>>>>>>> #{SECRET["AWS"]["SECRET_ACCESS_KEY"]}"
  puts "==  AWS S3 BUCKET NAME      >>>>>>>>>>>> #{SECRET["AWS"]["S3"]["BUCKET_NAME"]}"
  puts "=============================================================="
  puts "=============================================================="
  
  config.company = true
  config.checkout_zone = "North America"
  config.default_country_id = 232
  config.shipping_instructions = true
  config.max_level_in_taxons_menu = 3
  
  # config.override_actionmailer_config = true
  # config.mails_from = "no-reply@copiersflorida.com"
  
  # if Rails.env.production?
    # config.shipstation_username = "#{SECRET["SHIPSTATION"]["USER"]}"
    # config.shipstation_password = "#{SECRET["SHIPSTATION"]["PASS"]}"
  # else
    # config.shipstation_username = "#{SECRET["SHIPSTATION"]["USER"]}"
    # config.shipstation_password = "#{SECRET["SHIPSTATION"]["PASS"]}"
  # end

  config.shipstation_weight_units = "Ounces" # Grams, Ounces or Pounds

  # choose which number to send shipstation, use :shipment or :order, default is :shipment
  config.shipstation_number = :shipment

  # if you prefer to send notifications via shipstation
  config.send_shipped_email = false
  config.allowed_document_content_types = %w(application/pdf application/zip)
  
end

Spree.user_class = "Spree::User"
Spree::Api::Config[:requires_authentication] = false
Spree::Auth::Config[:registration_step] = false;

Spree::Image.attachment_definitions[:attachment][:url]        = '/spree/products/:id/:style/:basename.:extension'
Spree::Image.attachment_definitions[:attachment][:path]       = 'public/spree/products/:id/:style/:basename.:extension'

Spree::Taxon.attachment_definitions[:url]                     = '/spree/taxons/:id/:style/:basename.:extension'
Spree::Taxon.attachment_definitions[:path]                    = 'public/spree/taxons/:id/:style/:basename.:extension'

Spree::Config[:allowed_document_content_types] =  %w(application/pdf application/zip)
Spree::Document.attachment_definitions[:attachment][:url]     = '/spree/documents/:id/:basename.:extension'
Spree::Document.attachment_definitions[:attachment][:path]    = 'public/spree/documents/:id/:basename.:extension'



# Spree::Image.where(:id => [0..10]).each_with_index do |img, idx| 
#   puts "doing stuff #{idx}"
#   # prod.images.each do |image| 
#     # prod = Spree::Product.find(img.viewable_id).nil? ? nil : Spree::Product.find(img.viewable_id)
#     # puts "[[[[[[[[[[[[[[[[[[[[[[[[[[--------------  #{img.product.inspect} --------]]]]]]]]]]]]]]]]]]]]]]]]]]"
#     # if Spree::Product.find_by_id(img.viewable_id)
#     #   prod = Spree::Product.find_by_id(img.viewable_id)
#     # else
#     #   prod = nil
#     # end
#     # if img.nil?
#     #   "puts +++++++++++++++++++++++++++++++ images are nil\n\r"
#     # end
#     # prod = Spree::Product.find_by_id(img.viewable_id)
#     unless img.nil?
#       ["mini", "small", "product", "large", "original"].each do |style|
#         base_dir = "public/spree/products"
#         puts "Base Dir-----------#{base_dir}"
#         if File.exists?("#{base_dir}/#{img.id}")
#           dir = "#{base_dir}/#{img.id}"
#           puts "------------------#{base_dir}/#{img.id} Exists"
#         else
#           Dir.mkdir("#{base_dir}/#{img.id}")
#           puts "------------------#{base_dir}/#{img.id} Created"
#           dir = "#{base_dir}/#{img.id}"
#         end
#         # dir = File.exists?("#{base_dir}/#{prod.id}") ? "#{base_dir}/#{prod.id}" : Dir.mkdir("#{base_dir}/#{prod.id}")
#         if File.exists?("#{dir}/#{style}")
#           style_dir = "#{dir}/#{style}"
#           puts "------------------#{dir}/#{style} Exists"
#         else
#           Dir.mkdir("#{dir}/#{style}")
#           puts "------------------#{dir}/#{style} Created"
#           style_dir = "#{dir}/#{style}"
#         end
#         #style_dir = File.exists?("#{dir}/#{style}") ? "#{dir}/#{style}" : Dir.mkdir("#{dir}/#{style}")
#         file_name = open("#{style_dir}/#{img.attachment_file_name}", "wb")
#         puts "---------------------#{file_name}"
#         # url = "74.208.166.108/spree/products/451/product/MPS3537mc_img.jpg"
#         url = "https://s3.amazonaws.com/copiersflorida/spree/spree/images/#{img.id}/#{style}/#{img.attachment_file_name}"
#         # url = "https://s3.amazonaws.com/copiersflorida/spree/spree/images/10/#{style}/kyocera_m3540idn.jpg"
#         # url = "https://s3.amazonaws.com/copiersflorida/spree/spree/images/451/product/MPS3537mc_img.jpg"
#         puts "---------------------#{url}"
#        begin 
#          read_file = open(url).read
#          file_name.write(read_file)
#          puts "\n\r ****************#{img.id} images copied"
#        rescue => e
#           puts " ++++++++++++++++++++ Houston we have problem #{img.id} ---  #{e.inspect}"
#         else
#           puts "+++++++++++++++++++++ failed to open #{url}"
#         end
#       end
#     else
#       puts "\n\r #{img.id} has no product/images \n\r"
#     end 
#   # end 
# end

# Spree::Document.where(:id => [0..1000]).each_with_index do |img, idx| 
#   unless img.nil?
#       base_dir = "public/spree/documents"
#       if !File.exists?(base_dir)
#         Dir.mkdir(base_dir)
#       end
#       puts "Base Dir-----------#{base_dir}"
#       if File.exists?("#{base_dir}/#{img.id}")
#         dir = "#{base_dir}/#{img.id}"
#         puts "------------------#{base_dir}/#{img.id} Exists"
#       else
#         Dir.mkdir("#{base_dir}/#{img.id}")
#         puts "------------------#{base_dir}/#{img.id} Created"
#         dir = "#{base_dir}/#{img.id}"
#       end
#       file_name = open("#{dir}/#{img.attachment_file_name}", "wb")
#       puts "---------------------#{file_name}"
#       url = "https://s3.amazonaws.com/copiersflorida/app/public/spree/products/#{img.id}/#{img.attachment_file_name}"
#       # url = "https://s3.amazonaws.com/copiersflorida/spree/spree/images/10/#{style}/kyocera_m3540idn.jpg"
#       puts "---------------------#{url}"
#      begin 
#        read_file = open(url).read
#        file_name.write(read_file)
#        puts "\n\r ****************#{img.id} images copied"
#      rescue => e
#         puts " ++++++++++++++++++++ Houston we have problem #{img.id} ---  #{e.inspect}"
#       else
#         puts "+++++++++++++++++++++ failed to open #{url}"
#       end
#   else
#     puts "\n\r #{img.id} has no product/documents \n\r"
#   end 
# end
