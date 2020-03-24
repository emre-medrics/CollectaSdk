<p align="center">
<img src="https://github.com/medricsCO/CollectaSdk/raw/master/medrics_logo.png" alt="MEDRICS Healthcare Solutions Corp" title="MEDRICS Healthcare Solutions Corp" width="557"/>
</p>

# Collecta SDK

[![Version](https://img.shields.io/cocoapods/v/CollectaSdk.svg?style=flat)](https://cocoapods.org/pods/CollectaSdk)
[![Platform](https://img.shields.io/cocoapods/p/CollectaSdk.svg?style=flat)](https://cocoapods.org/pods/CollectaSdk)

## Requirements

- iOS 10.0+
- Xcode 10.2+
- Swift 5+

## Installation
### Using CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Our SDK into your Xcode project using CocoaPods, specify it in your `Podfile`:
```ruby
pod 'CollectaSdk'
```

Then install the pods using `pod install --repo-update`

## Usage
### Initialize Collecta SDK in your app
You can add CollectaSDK initialization code to your application either at startup ,or at the desired point in your application flow. Import the CollectaSdk module and configure a shared instance as shown:
1. Import the CollectaSdk module in your `UIApplicationDelegate`:
   ```swift
   import CollectaSdk
   ```
2. Configure a CollectaSdk shared instance, typically in your app's `application(_:didFinishLaunchingWithOptions:)` method:
   ```swift
   CollectaSdk.shared.initialize(username:"your-user-name", 
                                 password: "your-password", 
                                 source:"source-1", 
                                 uuid:"user-id")
   ```
   Parameters:
   
    - `username` -> username we provide
    - `password` -> password we provide
    - `source` -> source we provide
    - `uuid` -> unique id for the user
3. To respond to the delivery of notifications, you must implement a delegate for the shared `UNUserNotificationCenter`object in `application(_:didFinishLaunchingWithOptions:)`:
   ```swift
   UNUserNotificationCenter.current().delegate = self
   ```
4. Your delegate object must conform to the `UNUserNotificationCenterDelegate` protocol ,and implement the `userNotificationCenter(_:didReceive:withCompletionHandler:)` and `userNotificationCenter(_:willPresent:withCompletionHandler:)` methods.
   ```swift
    func userNotificationCenter(_ center: UNUserNotificationCenter, 
                                didReceive response: UNNotificationResponse, 
                                withCompletionHandler completionHandler: @escaping () -> Void) {
        CollectaSdk.shared.userNotificationCenter(didReceive:response)
        completionHandler()
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, 
                                willPresent notification: UNNotification, 
                                withCompletionHandler completionHandler:@escaping(UNNotificationPresentationOptions)->Void) {
       completionHandler([.alert,.sound,.badge])
    }
   ```
   
### Send Current User Location

   You can send current user location using `sendLocation(lat:lng)` method in any time you want ,We recommend using this method wherever your app get the user's location:
    
 ```swift
 func locationManager(_ manager: CLLocationManager, 
                      didUpdateLocations locations: [CLLocation]) {
        let location = locations.last!
        let lat = location.coordinate.latitude
        let lng = location.coordinate.longitude
        CollectaSdk.shared.sendLocation(lat:lat, lng:lng)
    }
 ```

## Credits

Collecta SDK is owned and maintained by the [MEDRICS Healthcare Solutions Corp](http://medrics.us/). You can follow us on Linkedin at [MEDRICS](https://www.linkedin.com/company/medrics/) for project updates and releases.

## Copyright
Copyright © 2020 [MEDRICS Healthcare Solutions Corp](http://medrics.us/). All rights reserved.
