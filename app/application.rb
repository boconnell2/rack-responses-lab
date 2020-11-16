class Application

    def call(env)
      resp = Rack::Response.new
  
      time_now = Time.now.strftime('%H:%M')
  
      resp.write "#{time_now}\n"
  
      if time_now < "12:00"
        resp.write "Good Morning"
      else
        resp.write "Good Afternoon"
      end
  
      resp.finish
    end
  
end 