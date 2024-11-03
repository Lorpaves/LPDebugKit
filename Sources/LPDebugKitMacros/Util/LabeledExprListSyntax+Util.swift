//
//  LabeledExprListSyntax+Util.swift
//  DebugKit
//
//  Created by Lorpaves on 2024/11/2.
//

import SwiftSyntax

extension  LabeledExprListSyntax {
    func value(for label: String) -> TokenSyntax? {
        first(where: { $0.label?.description == label })?
        .expression.as(StringLiteralExprSyntax.self)?
        .segments.first?
        .as(StringSegmentSyntax.self)?
        .content
    }
}
