#Testrunner
require 'watir-webdriver'
#require './Methods/LoginTest'
require './Methods/Setup'

Selenium::WebDriver::Chrome::Service.executable_path = '/Users/zerionsoftware/Downloads/chromedriver'
testDirectory = "Test\ Cases/Smoke\ Test/"

configFile = File.open(testDirectory+ "testConfig.txt", "r").read
puts $username = configFile[/(?!loginUser\()[0-9]*(?=,)/]
puts $password = configFile[/(?!loginUser\([0-9],)[0-9]*(?=\))/]
puts $baseUrl = "qa.gnosiz.com"
puts $testSteps = configFile.split("Test:\n")[1].split("End")[0].split("\n")

combinedSteps = Array.new
$testSteps.each do |i|
	getTestsDirectory = testDirectory+i.chomp
	testCaseFull = File.open(getTestsDirectory, "r").read
	combinedSteps.push(testCaseFull)
end
puts combinedSteps