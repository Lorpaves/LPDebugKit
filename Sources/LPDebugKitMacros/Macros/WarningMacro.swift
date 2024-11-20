//
//  WarningMacro.swift
//  LPDebugKit
//
//  Created by Lorpaves on 2024/11/3.
//

import SwiftSyntax
import SwiftSyntaxMacros

public enum WarningMacro: ExpressionMacro, LoggableMacro {
    static let level: LogLevel = .warning
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        return build(node)
    }
}

extension LoggableMacro where Self == WarningMacro {
    static var warning: Self.Type { WarningMacro.self }
}
