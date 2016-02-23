require 'capybara/cucumber'
require 'site_prism'

 
Capybara.default_driver = :selenium

def host
  "http://link.springer.com"
  end