require 'open-uri'
require 'koala'
# require 'omniauth'
require 'json'

app_id = 'YOUR_APP_ID'
app_secret = 'YOUR_APP_SECRET'

access_token = 'YOURE_ACCESS_TOKEN'


graph = Koala::Facebook::API.new(access_token)
user = graph.fql_query('SELECT gid, name, description, privacy, website, email
FROM   group
WHERE  CONTAINS("a")
AND    strpos(lower(name),lower("a")) >=0')

# puts user

# Display Results
puts JSON.pretty_generate user

