//
//  LoggableMacro.swift
//  LPDebugKit
//
//  Created by Lorpaves on 2024/11/3.
//

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxMacros

protocol LoggableMacro {
    static var level: LogLevel { get }
}

extension LoggableMacro {
    static func build(_ node: some FreestandingMacroExpansionSyntax) -> ExprSyntax {
        let subsystem = node.arguments.value(for: "subsystem")?.text ?? "DebugLog"
        let category = node.arguments.value(for: "category")?.text ?? ""
        let logArgments = node.arguments.filter({ $0.label == nil })
        let messages = logArgments.map(\.expression)
        return """
        Logger(subsystem: "\(raw: subsystem)", category: "\(raw: category)").\(raw: level.rawValue)(\(logArgments))
        """
    }
}