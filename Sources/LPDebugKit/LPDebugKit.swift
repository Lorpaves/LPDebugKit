// The Swift Programming Language
// https://docs.swift.org/swift-book

@freestanding(expression)
public macro debug(subsystem: String = "", category: String = "", _ value: Any...) -> Void = #externalMacro(module: "LPDebugKitMacros", type: "DebugMacro")

@freestanding(expression)
public macro info(subsystem: String = "", category: String = "", _ value: Any...) -> Void = #externalMacro(module: "LPDebugKitMacros", type: "InfoMacro")

@freestanding(expression)
public macro trace(subsystem: String = "", category: String = "", _ value: Any...) -> Void = #externalMacro(module: "LPDebugKitMacros", type: "TraceMacro")

@freestanding(expression)
public macro Warning(subsystem: String = "", category: String = "", _ value: Any...) -> Void = #externalMacro(module: "LPDebugKitMacros", type: "WarningMacro")

@freestanding(expression)
public macro notice(subsystem: String = "", category: String = "", _ value: Any...) -> Void = #externalMacro(module: "LPDebugKitMacros", type: "NoticeMacro")

@freestanding(expression)
public macro Error(subsystem: String = "", category: String = "", _ value: Any...) -> Void = #externalMacro(module: "LPDebugKitMacros", type: "ErrorMacro")

@freestanding(expression)
public macro fault(subsystem: String = "", category: String = "", _ value: Any...) -> Void = #externalMacro(module: "LPDebugKitMacros", type: "FaultMacro")

@freestanding(expression)
public macro critical(subsystem: String = "", category: String = "", _ value: Any...) -> Void = #externalMacro(module: "LPDebugKitMacros", type: "CriticalMacro")
