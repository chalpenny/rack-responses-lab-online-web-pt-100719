class Application

    def call(env)
      resp = Rack::Response.new
     
      t = Time.now.strftime("%k:%M").split(":")

      if t[0].to_i < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end

      resp.finish
    end
  
  end