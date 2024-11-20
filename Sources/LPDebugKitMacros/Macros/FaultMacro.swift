//
//  FaultMacro.swift
//  DebugKit
//
//  Created by Lorpaves on 2024/11/2.
//

import SwiftSyntax
import SwiftSyntaxMacros

public enum FaultMacro: ExpressionMacro, LoggableMacro {
    static let level: LogLevel = .fault
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        return build(node)
    }
}

extension LoggableMacro where Self == FaultMacro {
    static var fault: Self.Type { FaultMacro.self }
}
