# frozen_string_literal: true

require 'rspec'
require 'selenium-webdriver'

describe 'Google search' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @wait = Selenium::WebDriver::Wait.new(timeout: 1000)
  end
  it 'should find webdriver' do

    @driver.navigate.to 'http://localhost/litecart/public_html/admin/login.php'
    @driver.find_element(name: 'username').send_keys 'admin'
    @driver.find_element(name: 'password').send_keys 'admin'
    @driver.find_element(name: 'login').click
  end

  after(:each) do
    @driver.quit
  end
end
