//
//  ErrorMacro.swift
//  LPDebugKit
//
//  Created by Lorpaves on 2024/11/3.
//

import SwiftSyntax
import SwiftSyntaxMacros

public enum ErrorMacro: ExpressionMacro, LoggableMacro {
    static let level: LogLevel = .error
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        return build(node)
    }
}

extension LoggableMacro where Self == ErrorMacro {
    static var error: Self.Type { ErrorMacro.self }
}
