# frozen_string_literal: true

require 'appium_lib'
require 'pry'
require 'cucumber'

def caps
  { caps: {
    deviceName: 'Android Pixel 3 XL',
    platformName: 'Android',
    app: File.join(File.dirname(__FILE__), 'release.apk'),
    appPackage: 'br.com.omint.apps.minhaomint',
    appActivity: 'MainActivity',
    wait_timeout: 50,
    wait_interval: 4
  } }
end

Appium::Driver.new(caps, true).start_driver
Appium.promote_appium_methods Object
