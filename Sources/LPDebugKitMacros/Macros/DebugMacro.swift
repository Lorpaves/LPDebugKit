//
//  DebugMacro.swift
//  DebugKit
//
//  Created by Lorpaves on 2024/11/2.
//

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxMacros

public enum DebugMacro: ExpressionMacro, LoggableMacro {
    static let level: LogLevel = .debug
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        return build(node)
    }
}

extension LoggableMacro where Self == DebugMacro {
    static var debug: Self.Type { DebugMacro.self }
}
