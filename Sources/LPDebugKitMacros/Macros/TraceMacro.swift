//
//  File.swift
//  LPDebugKit
//
//  Created by Lorpaves on 2024/11/3.
//

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxMacros

public struct TraceMacro: ExpressionMacro, LoggableMacro {
    static let level: LogLevel = .trace
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        return build(node)
    }
}

extension LoggableMacro where Self == TraceMacro {
    static var trace: Self.Type { TraceMacro.self }
}
