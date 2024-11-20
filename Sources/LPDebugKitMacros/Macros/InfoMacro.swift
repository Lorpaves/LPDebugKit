//
//  InfoMacro.swift
//  DebugKit
//
//  Created by Lorpaves on 2024/11/2.
//

import SwiftSyntax
import SwiftSyntaxMacros


public enum InfoMacro: ExpressionMacro, LoggableMacro {
    static let level: LogLevel = .info
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        return build(node)
    }
}

extension LoggableMacro where Self == InfoMacro {
    static var info: Self.Type { InfoMacro.self }
}
