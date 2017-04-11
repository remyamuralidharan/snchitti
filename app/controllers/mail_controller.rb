class MailController < ApplicationController

  include AuthHelper
  require 'json'

  def index
    token = get_access_token
    email = session[:user_email]
    if token
      # If a token is present in the session, get messages from the inbox
      conn = Faraday.new(:url => 'https://outlook.office.com') do |faraday|
        # Outputs to the console
        faraday.response :logger
        # Uses the default Net::HTTP adapter
        faraday.adapter  Faraday.default_adapter  
      end
      
      response = conn.get do |request|
        request.url '/api/v2.0/Me/Messages?$orderby=ReceivedDateTime desc&$select=ReceivedDateTime,Subject,From&$top=20'
        request.headers['Authorization'] = "Bearer #{token}"
        request.headers['Accept'] = 'application/json'
        request.headers['X-AnchorMailbox'] = email
      end
      @messages = JSON.parse(response.body)['value']
    else
      redirect_to root_url
    end
  end
  def send_message
    options = {
      body: { :Message=>{:Subject=>"Meet for lunch from ruby code?", :Body=>{:ContentType=>"Text", :Content=>"The new cafeteria is open."}, 
              :ToRecipients=>[{:EmailAddress=>{:Address=>"amalkumars@outlook.com"}}]},
              :SaveToSentItems=>"false"
            }.to_json,
      headers: {
                  'Accept' => 'application/json',
                  'Authorization' => 'Bearer EwAIA+l3BAAUWm1xSeJRIJK6txKjBez4GzapzqMAAVN1xVCty0NXg2jqgRyKWOIbt4FrHZ9j8RHRXUeUlmOVKLGlFT/ur6xk1KWw/SdlH9wIfAp94HuUJ/DaFcH4DO9o1j9X/qdvr404arljbPGV6MINQli16hkMsb1qQKkJtmIf2m4SetbuXSzyjijsdkdr2IAdCmQJakY5F57YbDJUPlnWNAv6lUrp/zqwsyU3l36gNU0v14HlD4lNNjRemgXYsn3cPHVAqlnh3SliYCCh92Fb1vL2GGZdpRPxZcxlaW3zGaa9klX6JO52YAGmwu6HW5gC9tSdRuwm7FeeM4u6gqVEP52oAGsmkJ7PpLgHssfYVMFT9baBwVlGg5KZKeMDZgAACEaYaAx3Td7i2AG/TAj+pErtisR8fTYXVpQ1SDZRA2a6lExlVPNQVljxC2FZId8BrcDsb+DjERnJLJwRE5NRE+8wdStI31KlhJ7GaNdWKoJ5xuqUfnLM7AQ00G49Vqfh6g+fwh4KnlJqI3bXafQrsbsImYLQk7fbKKukz/JTIJdbvepMrNgMk71Z9JD8D0TcnYfewJpyBAzyJGffipwwsBz0dX0DrrorD3f7qFdXcdl59jGtfRhNL/FUt89WZZu1M6CexYTqSTc2ucijrW8+TVlOWCORmAbVoX+tNec/iqBN1J4GQxd/zlKWKKCQzJfmKhKz9ZhBl+hIzafmH+Wz06noB6wZC46oaEXEdtYfwNhjT6PORoOGfIK936vIQdIpudcLUkX2kSc3bkN55q5Zdl6TmOu5eo1IFVdirARqyCundYQNf6hElCigQ+dMUHmKl9+Ky1NbqDDF6+cU79uhljiFddAeSaAcZ9l0353mstmlxXTCq5uzAQgBjrX3Zh1Gr8pJlzioDXCu4BUTdN7SpV9LvHiAfqZxJOoqD30GxyznE5CPgKPARQKvHomXMl5hYn3raRCGTiPCeVGwk/7764iqC8Uc+EujTlJAnU8Eafg5gluNL+450DTmPEG5G4kaoMdECQI=',
                  'client_id' => '0014eea3-9246-4077-89b0-05e420ef991f',
                  'client_secret' => 'K7burXJ6zeGAFSmaqTuSCDe',
                  'X-AnchorMailbox' => 'amalkumars@outlook.com',
                  'Content-Type' => 'application/json'

                } 
    }
    @response = HTTParty.post('https://outlook.office.com/api/v2.0/me/sendmail', options)
    render json:  @response.to_json
  end
end
