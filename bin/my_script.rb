require 'addressable/uri'
require 'rest-client'


url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/2'
).to_s

puts RestClient.patch(
  url,
  { user: { username: "Pippin" } }
  )
# puts RestClient.delete(
#   url
# )
