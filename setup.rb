require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"

#Selenium::WebDriver::Chrome::Service.executable_path = '/Users/zerionsoftware/Downloads/chromedriver'

class Setup < Test::Unit::TestCase

  def setup

    @driver = Selenium::WebDriver.for :chrome
    @base_url = "https://qa.gnosiz.com"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  
  def teardown
    @driver.quit
    assert_equal [], @verification_errors
  end
  
  def test_login
    @driver.get(@base_url + "/")
    @driver.find_element(:name, "username").clear
    @driver.find_element(:name, "username").send_keys "keith1"
    @driver.find_element(:id, "password").clear
    @driver.find_element(:id, "password").send_keys "beefzerion"
    @driver.find_element(:xpath, "(//button[@type='submit'])[2]").click
  end
  
  
end
