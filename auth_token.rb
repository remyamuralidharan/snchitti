require 'httparty'

class GmailManager

  def refresh_token_test
    options = {
      body: {
        client_id:     "745330384534-pvfsvi0gck39vr3ejihb6c0r3j2613lk.apps.googleusercontent.com",
        client_secret: "JLkTEMukgPiMip2_1A31gVRi",
        refresh_token: "1/sU87gqemDuA9IHI3cLl4lh-SyIt0yIdAqSteMLfsoYYeuoIlDyDYJLwJtz3QhdhY",
        grant_type:    'refresh_token'
      },
      headers: {
        'Content-Type' => 'application/x-www-form-urlencoded'
      }
    }
    response = HTTParty.post('https://accounts.google.com/o/oauth2/token', options)
    p "responseeeeeeeeeeeeeeeeeeeeeeeeeeee"
    p response
    p "____________________________________________"
    return response
    end
 result = refresh_token_test
  p "result----------------------------#{result}"

end