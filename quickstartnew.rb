require 'google/apis/gmail_v1'
require 'googleauth'
require 'googleauth/stores/file_token_store'
# require 'base_cli'
# require 'google/apis/rmail'

require 'fileutils'
# gem used for this function is -> google-api-client

APPLICATION_NAME = 'Gmail API Ruby Quickstart'
SCOPE = Google::Apis::GmailV1::AUTH_GMAIL_COMPOSE 

def authorize
	Google::Auth::UserRefreshCredentials.new(
	  client_id: "745330384534-pvfsvi0gck39vr3ejihb6c0r3j2613lk.apps.googleusercontent.com",
	  client_secret: "JLkTEMukgPiMip2_1A31gVRi",
	  scope: Google::Apis::GmailV1::AUTH_GMAIL_COMPOSE,
	  access_token: "ya29.GlutA-9_LE_JcwN0Bxi3l4Kq8xIXGI3QbNmIL26FtkxGyUmh4D87hIGKOkWC2bfXp0mK9fgPbeVXjaTHTqIoZZRpD9rlkqfluJRNNhJ9EJxC63wOYLq0a38V30Kb",
	  refresh_token: "1/A-0L5es07VhTdXneOa_xAqTr5wkoTAPttE2qATbe4Vs",
	  expires_at: "2016-12-08 16:51:50 +0530")
end

# Initialize the API
service = Google::Apis::GmailV1::GmailService.new
# service.client_options.application_name = APPLICATION_NAME
service.authorization = authorize

user_id = 'me'
#Listing labels 
result_labels = service.list_user_labels(user_id)
#List messages sent to a particular user
result_messages_sent = service.list_user_messages(user_id, label_ids: ["SENT"], q: "to:mary@qburst.com")
#List messages from a particular user
#Date format  - yyyy/mm/dd
result_messages_inbox = service.list_user_messages(user_id, label_ids: ["INBOX"], q: "from:mary@qburst.com AND before:2016/12/05 AND after:2015/09/01")
#List a particular message having the given id
result_single_message = service.get_user_message(user_id,"150fb029cff07eeb",format:"full",fields: "payload")
parts = result_single_message.payload.parts.collect(&:mime_type)
test = result_single_message.payload.parts.select{|l| l.mime_type == "text/html"}.last
# test.each do |t|
	# if t.mime_type == "text/html"
		p "---------------------------------------------------------#{test.body.data.gsub(/\r\n/,'')}"
	# end
# end
#//////////////second method to get the mail body in html format///////////////#
# result_single_message = service.get_user_message(user_id,"158ba58b6c354a4f",format:"full")
# p "-------------------------------------------------"
# test = result_single_message.payload.parts.first
# p "test is --------------------------------------------#{test}"
# json_data = JSON.parse(test.to_json)
# p "json data is---------------------------------#{json_data}"
# decoded_message = Base64.urlsafe_decode64(json_data["body"]["data"])
# p "decoded data is ------------------------------ #{decoded_message.gsub!(/\r\n/, '')}"
# # List a thread of messages having the given id
# result_single_thread = service.get_user_thread(user_id,"151f132a26fc2e3c")
# #sending message to a user
# mail = "To: remyam@qburst.com\r\nCc: remya.remyamg@gmail.com\r\nSubject: Test Message2\r\n\r\nTest Body2" 
# message = { raw: mail.to_s }
# res = service.send_user_message('me', message, {})
