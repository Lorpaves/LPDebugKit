//
//  NoticeMacro.swift
//  LPDebugKit
//
//  Created by Lorpaves on 2024/11/3.
//

import SwiftSyntax
import SwiftSyntaxMacros

public enum NoticeMacro: ExpressionMacro, LoggableMacro {
    static let level: LogLevel = .notice
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> ExprSyntax {
        build(node)
    }
}

extension LoggableMacro where Self == NoticeMacro {
    static var notice: Self.Type { NoticeMacro.self }
}
