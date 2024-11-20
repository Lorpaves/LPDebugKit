//
//  CriticalMacro.swift
//  DebugKit
//
//  Created by Lorpaves on 2024/11/2.
//

import SwiftSyntax
import SwiftSyntaxMacros

public enum CriticalMacro: ExpressionMacro, LoggableMacro {
    static let level: LogLevel = .critical
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        return build(node)
    }
}

extension LoggableMacro where Self == CriticalMacro {
    static var critical: Self.Type { CriticalMacro.self }
}
