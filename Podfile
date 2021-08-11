# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

use_frameworks!

workspace 'ModularProject'

def modularproject_pods
  login_pods
  dashboard_pods
  forex_pods
end

def login_pods
  pod 'Login', :path => 'Modules/Login'
end

def dashboard_pods
  pod 'Dashboard', :path => 'Modules/Dashboard'
end

def forex_pods
  pod 'Forex', :path => 'Modules/Forex'
end

target 'ModularProject' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ModularProject

  modularproject_pods

end

target 'Login_Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Login
  project 'Modules/Login/Example/Login.xcodeproj'
  login_pods

end

target 'Dashboard_Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Login
  project 'Modules/Dashboard/Example/Dashboard.xcodeproj'
  login_pods

end

target 'Forex_Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Login
  project 'Modules/Forex/Example/Forex.xcodeproj'
  login_pods

end
