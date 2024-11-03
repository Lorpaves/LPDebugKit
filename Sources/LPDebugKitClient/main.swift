import LPDebugKit

let a = 17
let b = 25
import OSLog

#debug("Debug")
#debug("Debug", "Multi-Arguments", a, b)
#debug(subsystem: "Subsystem-Debug", "Debug with subsystem")
#debug(subsystem: "Subsystem-Debug", category: "Category-Debug", "Debug with subsystem and category")

#info("Info")

#trace("Trace")

#Warning("Warning")

#notice("Notice")

#Error("Error")

#fault("Fault")

#critical("Critical")


let logger = Logger()

