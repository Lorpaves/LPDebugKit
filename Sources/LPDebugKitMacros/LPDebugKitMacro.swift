import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

@main
struct LPDebugKitPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        DebugMacro.self,
        InfoMacro.self,
        TraceMacro.self,
        WarningMacro.self,
        NoticeMacro.self,
        ErrorMacro.self,
        FaultMacro.self,
        CriticalMacro.self,
    ]
}
