# we will need to change this to always use the 64bit version when production gets upgraded
binary_path = (Rails.env.production? ? "../../bin/wkhtmltopdf-i386" : "../../bin/wkhtmltopdf-amd64")
WKHTMLTOPDF_PATH = File.expand_path binary_path, __FILE__

begin
  require 'pdfkit'

  PDFKit.configure do |config|
    config.wkhtmltopdf = WKHTMLTOPDF_PATH
  end
rescue LoadError
end

begin
  require 'wicked_pdf'

  WickedPdf.config[:exe_path] = WKHTMLTOPDF_PATH
rescue LoadError
end

begin
  require 'wisepdf'

  Wisepdf::Configuration.configure do |config|       
    config.wkhtmltopdf = WKHTMLTOPDF_PATH
  end 
rescue LoadError
end
