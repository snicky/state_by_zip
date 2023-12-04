require 'yaml'

class StateByZip
  DATA_PATH = File.join(__dir__, '..', 'data', 'state_by_zip.yml')
  
  class << self
    def find(zip)
      zip_string = "%05d" % zip.to_i
      data[zip_string] || data[zip_string[0..2]]
    end

    def data
      @data ||= YAML.safe_load_file(DATA_PATH)
    end
  end
end
