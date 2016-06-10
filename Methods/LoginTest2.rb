require 'watir-webdriver'
Selenium::WebDriver::Chrome::Service.executable_path = '/Users/zerionsoftware/Downloads/chromedriver'

@browser = Watir::Browser.new :chrome
@browser.goto('http://centricconsulting.azurewebsites.net/')

#Search for HTC
#Look up parent/chld pairing
# => means hash rocket

@browser.text_field(:id=>'small-searchterms').set 'HTC'
@browser.button(:value=>'Search').click

#Click on HTC link then add to cart
@browser.link(:text=>"HTC One Mini Blue").when_present.click
@browser.button(:value=>"Add to cart").when_present.click

@browser.span(:class=>"close").when_present.click
@browser.link(:text=>"shopping cart").when_present.click

@browser.checkbox(:id=>"termsofservice").set
@browser.button(:name=>"checkout").click

@browser.button(:value=>"Checkout as Guest").click

@browser.text_field(:name=>"BillingNewAddress.FirstName").when_present.set "Ahoy"
@browser.text_field(:name=>"BillingNewAddress.LastName").when_present.set "Ahoy"
@browser.text_field(:name=>"BillingNewAddress.Email").when_present.set "Ahoy@ahoy.com"
@browser.text_field(:name=>"BillingNewAddress.Company").when_present.set "Ahoy"
@browser.select_list(:name=>"BillingNewAddress.CountryId").when_present.select "United States"
@browser.select_list(:name=>"BillingNewAddress.StateProvinceId").when_present.select "Alaska"
@browser.text_field(:name=>"BillingNewAddress.Address1").when_present.set "Ahoy"
@browser.text_field(:name=>"BillingNewAddress.Address2").when_present.set "Ahoy"
@browser.text_field(:name=>"BillingNewAddress.ZipPostalCode").when_present.set "Ahoy"
@browser.text_field(:name=>"BillingNewAddress.FaxNumber").when_present.set "Ahoy"
@browser.text_field(:name=>"BillingNewAddress.City").when_present.set "Ahoy"
@browser.text_field(:name=>"BillingNewAddress.PhoneNumber").when_present.set "Ahoy"

@browser.button(:value=>'Continue').click

@browser.div(:id=>'shipping-buttons-container').when_present.button(:value=>'Continue').click


@browser.label(:text=>/Next Day Air/).when_present.click
@browser.div(:id=>'shipping-method-buttons-container').when_present.button(:value=>'Continue').click

@browser.select_list(:name=>"CreditCardType").when_present.select "Amex"
@browser.text_field(:name=>"CardholderName").when_present.set "asd fgh"
@browser.text_field(:name=>"CardNumber").when_present.set "378282246310005"
@browser.select_list(:name=>"ExpireYear").when_present.select "2020"
@browser.text_field(:name=>"CardCode").when_present.set "123"

@browser.div(:id=>'payment-info-buttons-container').when_present.button(:value=>'Continue').click

@browser.button(:value=>"Confirm").when_present.click


