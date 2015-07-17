require 'octokit'
gem install jekyll
# !!! DO NOT EVER USE HARD-CODED VALUES IN A REAL APP !!!
# Instead, set and test environment variables, like below
client = Octokit::Client.new :access_token => ENV['0e8b00befca93f6da8e2e977392da0898ade1901']

results = client.search_code('addClass user:pierfort123')
total_count = results.total_count
