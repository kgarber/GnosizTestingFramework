def login
    @driver.get(@base_url + "/")
    @driver.find_element(:name, "username").clear
    @driver.find_element(:name, "username").send_keys $username
    @driver.find_element(:id, "password").clear
    @driver.find_element(:id, "password").send_keys $password
    @driver.find_element(:xpath, "(//button[@type='submit'])[2]").click
end
  