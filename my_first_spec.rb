# frozen_string_literal: true

require 'rspec'
require 'selenium-webdriver'

describe 'Google search' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @wait = Selenium::WebDriver::Wait.new(timeout: 1000)
  end
  it 'should find webdriver' do

    @driver.navigate.to 'http://google.com'
    element = @driver.find_element(name: 'q')
    element.send_keys "Hello WebDriver!"
    element.submit
    #@driver.manage.timeouts.implicit_wait = 1
   # element = @wait.until{@driver.find_element(:xpath, '//*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input')}
   # element.click
   # @browser.action.send_keys("\n").perform
   # element.send_keys 'webdriver'
   # @wait.until {@driver.find_element(:xpath, '//*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input')}.click
   # @wait.until { @driver.title == 'webdriver - Поиск в Google' }
  end

  after(:each) do
    @driver.quit
  end
end
