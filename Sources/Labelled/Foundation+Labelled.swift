// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 24/03/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

/// Anything that conforms to CustomStringConvertible is Labelled.
public extension Labelled where Self: CustomStringConvertible {
    var labelName: String { description }
}

/// Anything that's raw-representable with a String is Labelled.
public extension Labelled where Self: RawRepresentable, Self.RawValue == String {
    var labelName: String { rawValue }
}

/// The native String class is Labelled.
extension String: Labelled {
    public var labelName: String { self }
}
