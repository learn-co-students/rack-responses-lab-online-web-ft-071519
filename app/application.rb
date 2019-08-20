require 'pry'

class Application
 
  def call(env)
    resp = Rack::Response.new
 
  timeNow = Time.now.strftime('%H:%M')
  resp.write "Time Now #{timeNow}"

   if timeNow<"12:00" 
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end