### 1. How to use
---

```swift
import LPDebugKit

// Debug

/// Expand to Logger(subsystem: "", category: "").debug("\("Debug")")
#debug("Debug") 

/// Expand to Logger(subsystem: "", category: "").debug("\("Debug") \("Multi-Arguments") \(a) \(b)")
#debug("Debug", "Multi-Arguments", a, b) 

/// Expand to Logger(subsystem: "Subsystem-Debug", category: "").debug("\("Debug")")
#debug(subsystem: "Subsystem-Debug", "Debug with subsystem")

/// Expand to Logger(subsystem: "Subsystem-Debug", category: "Category-Debug").debug("\("Debug")")
#debug(subsystem: "Subsystem-Debug", category: "Category-Debug", "Debug with subsystem and category")

/// Info
#info("Info")

// Trace
#trace("Trace")

// Warning
#Warning("Warning")

// Notice
#notice("Notice")

// Error
#Error("Error")

//Fault
#fault("Fault")

// Critical
#critical("Critical")
```

### 2. How to Install
---

```
   .package(url: "git@github.com:Lorpaves/LPDebugKit.git", from: "1.0.0"),
```
