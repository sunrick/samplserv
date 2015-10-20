require 'httparty'

class SamplParty
  include HTTParty
  base_uri "http://localhost:4567"

  def play(sound, version=nil)
    options = {}
    if version
      options = { query: { v: version } }
    end
    self.class.post("/#{sound}", options)
  end

end

toy = SamplParty.new
toy.play('beat')
sleep 5
toy.play('harder', 1)
sleep 0.5
toy.play('harder', 1)
sleep 1
toy.play('harder', 2)
toy.play('harder', 1)
sleep 1
toy.play('harder', 2)
sleep 1
toy.play('harder', 1)

puts "Cool cool cool ..."
