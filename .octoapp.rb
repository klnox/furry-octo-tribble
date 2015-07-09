require 'octokit'

# !!! DO NOT EVER USE HARD-CODED VALUES IN A REAL APP !!!
# Instead, set and test environment variables, like below
client = Octokit::Client.new :access_token => ENV['0e8b00befca93f6da8e2e977392da0898ade1901']
