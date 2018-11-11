# CareerFoundry Check List



3.3 Presenting Preferences in the APP

- userDefault 
- has been completed with the app 

usually what we need to do is set userdeafult.standard

```swift
let userdefault = Userdefault.standard
```

to make the code reusable. 

store it and use it in otherplaces. 



by setting 

```swift
userdefault.set()
userdefault.object()	
```

Set the value of the object or string using Key value to get the value out of it. 



##4.1 Networking in iOS

HTTP request to web service and parse the data acquired by **URLSession class**

-reference back to URL Scheme



### URLSession class

what it supports : data, file, ftp, http

each task in a session shares a single **session configuarion object**



- `defaultSessionConfiguration`: True to its name, this method will create a default configuration object. Its behavior will be drawn from disk-persisted credentials and cookies, as well as the global cache.
- `ephemeralSessionConfiguration`: This method is similar to the default configuration method listed above, the one exception being that it will store all session-related data in memory.
- `backgroundSessionConfiguration`: This method allows the session to download and upload data in the background of an app. This means data can be transferred even when the app is not running.



weather APP-

https://openweathermap.org/price - get the free API and start



step two - sign up for free account

step three - use it

API Key tap on the middle section



JSON data easy reader converter

https://jsonformatter.curiousconcept.com/





## 4.3 WebKit

Not working with the WebKit





# 4.4 

