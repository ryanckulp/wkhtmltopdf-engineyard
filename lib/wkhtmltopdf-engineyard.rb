# development uses 32 bit, production and staging are 64 bit
binary_path = (Rails.env.development? ? "../../bin/wkhtmltopdf-i386" : "../../bin/wkhtmltopdf-amd64")
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
