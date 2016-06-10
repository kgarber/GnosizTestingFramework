#Testrunner
require 'watir-webdriver'
require './Methods/LoginTest'
Selenium::WebDriver::Chrome::Service.executable_path = '/Users/zerionsoftware/Downloads/chromedriver'


configFile = File.open("Test\ Cases/Smoke\ Test/testConfig.txt", "r").read
puts configFile

