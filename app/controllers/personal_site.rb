require 'rack'

class PersonalSite
  def self.call(env)
    case env["PATH_INFO"]
    when '/' then index
    when '/about' then about
    else
      error
    end
  end

  def self.index
    render_view('index.html')
  end

  def self.about
    render_view('about.html')
  end

  def self.error
    render_view('error.html')
  end

  def self.render_view(page, code = '200')
    [code, {'Content-Type' => 'text/html'}, [File.read("./app/views/#{page}")]]
    #this array includes the HTTP response status code, HTTP response headers & HTTP body
  end
end
