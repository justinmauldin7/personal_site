require 'rack'

class PersonalSite
  def self.call(env)
    ['200', {'Content-type' => 'text/html'}, [File.read('./app/views/index.html')]]
    #this array includes the HTTP response status code, HTTP response headers & HTTP body
  end
end
