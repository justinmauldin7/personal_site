require 'rack'

class PersonalSite
  def self.call(env)
    ['200', {'Content-type' => 'text/html'}, ['Welcome!']]
    #this array includes the HTTP response status code, HTTP response headers & HTTP body
  end
end
