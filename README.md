# Facebook Scraper
How to scrape facebook with ruby

1. Open Terminal and install this gem `gem install koala`
2. create faceboook_scraper.rb
3. copy this code
```ruby
require 'open-uri'
require 'koala'
# require 'omniauth'
require 'json'

# first create an app on facebook and get the App Id and Secret Id then get the secret token by visiting facebook tools
# Graph API Explorer and get your access token from there
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
```

4. Save and go to your files where it save using `cd your/path/file`
5. then run this command `ruby name_of_file.rb`
