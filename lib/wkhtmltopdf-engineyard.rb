# staging uses 64bit, development and production use 32bit
binary_path = (Rails.env.staging? ? "../../bin/wkhtmltopdf-amd64" : "../../bin/wkhtmltopdf-i386")
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
