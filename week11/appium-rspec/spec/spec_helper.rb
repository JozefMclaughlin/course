require 'rspec'
require 'appium_lib'


RSpec.configure do |config|
  config.formatter = :documentation
end


def opts
  {
    caps: {
      "app": "/Users/tech-a53/Desktop/course/week11/apk/budgetwatch.apk",
      "platformName": "Android",
      "deviceName": "emulator-5554"
    }
  }

end
