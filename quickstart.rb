require 'google/apis/gmail_v1'
require 'googleauth'
require 'googleauth/stores/file_token_store'

require 'fileutils'

OOB_URI = 'urn:ietf:wg:oauth:2.0:oob'
APPLICATION_NAME = 'Gmail API Ruby Quickstart'
CLIENT_SECRETS_PATH = 'client_secret.json'
CREDENTIALS_PATH = File.join(Dir.home, '.credentials',
                             "gmail-ruby-quickstart.yaml")
CREDENTIALS_NEW_PATH = File.join(Dir.home, '.credentials',
                             "new.yaml")
SCOPE = Google::Apis::GmailV1::AUTH_GMAIL_READONLY

##
# Ensure valid credentials, either by restoring from the saved credentials
# files or intitiating an OAuth2 authorization. If authorization is required,
# the user's default browser will be launched to approve the request.
#
# @return [Google::Auth::UserRefreshCredentials] OAuth2 credentials
def authorize
  c_path = CREDENTIALS_NEW_PATH || CREDENTIALS_PATH
  FileUtils.mkdir_p(File.dirname(c_path))

  client_id = Google::Auth::ClientId.new("745330384534-pvfsvi0gck39vr3ejihb6c0r3j2613lk.apps.googleusercontent.com", "JLkTEMukgPiMip2_1A31gVRi")
  token_store = Google::Auth::Stores::FileTokenStore.new(file: c_path)
  authorizer = Google::Auth::UserAuthorizer.new(
    client_id, SCOPE, token_store)
  user_id = 'default'
  credentials = authorizer.get_credentials(user_id)
  if credentials.nil?
    url = authorizer.get_authorization_url(
      base_url: OOB_URI)
    puts "Open the following URL in the browser and enter the " +
         "resulting code after authorization"
    puts url
    code = gets
    credentials = authorizer.get_and_store_credentials_from_code(
      user_id: user_id, code: code, base_url: OOB_URI)
  end
  p "credentialssssssssssss"
  p credentials
  p "_____________________"
  return credentials
end

# Initialize the API
service = Google::Apis::GmailV1::GmailService.new
service.client_options.application_name = APPLICATION_NAME
service.authorization = authorize
p "serviceauthorixationm-----------------#{service}"

# Show the user's labels
user_id = 'me'
result = service.list_user_labels(user_id)

puts "Labels:"
puts "No labels found" if result.labels.empty?
result.labels.each { |label| puts "- #{label.name}" }