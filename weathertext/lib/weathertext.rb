class Weathertext

    require 'net/http'
    require 'json'

  def self.weathertext(weathercode)
    @url = "https://raw.githubusercontent.com/cathyfly/weathertext/main/weathertext.json"
    @uri=URI(@url)
    @response = Net::HTTP.get((@uri),{'User-Agent' => 'https://github.com/cathyfly/sea'})
    @output = JSON.parse(@response)

    if @output.empty?
      return "Error reading weather data"
    else
      return @output["weathertext"][weathercode]["desc_en"]
    end
  
  end
    
end