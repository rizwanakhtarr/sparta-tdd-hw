require "json"
class ParseJSON
  attr_accessor :json_file

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

end


json = ParseJSON.new("json_exchanges_rates.json")
