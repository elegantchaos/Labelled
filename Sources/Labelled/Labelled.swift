// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 07/09/2021.
//  All code (c) 2021 - present day, Elegant Chaos.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

public enum LabelIcon {
    case none
    case system(String)
    case custom(String)
}

public protocol Labelled {
    var labelName: String { get }
    var labelIcon: LabelIcon { get }
}

public extension Labelled {
    var labelIcon: LabelIcon { return .none }
}

public extension Labelled where Self: CustomStringConvertible {
    var labelName: String { description }
}

public extension Labelled where Self: RawRepresentable, Self.RawValue == String {
    var labelName: String { rawValue }
}

extension String: Labelled {
    public var labelName: String { self }
}
