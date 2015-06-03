require 'pry'
require 'httparty'

class SamplParty
  include HTTParty
  base_uri "http://10.0.0.110:4567"

  def beats(name, version = nil )
    options = {}
     if version
      options = { query: { v: version } }
     end
    self.class.post("/#{name}", options)
  end
end




toy = SamplParty.new
toy.beats('harder', 2)
sleep 0.5
toy.beats('ever', 3)
sleep 0.10




puts "Cool cool cool ..."
