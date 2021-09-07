// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 07/09/2021.
//  All code (c) 2021 - present day, Elegant Chaos.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

public protocol Labelled {
    var icon: String { get }
    var label: String { get }
}

public extension Labelled {
    var icon: String { "" }
}

public extension Labelled where Self: CustomStringConvertible {
    var label: String { description }
}

public extension Labelled where Self: RawRepresentable, Self.RawValue == String {
    var label: String { rawValue }
}

@available(macOS 11.0, *) public extension Label where Title == Text, Icon == Image {
    init(_ labelled: Labelled) {
        self.init(LocalizedStringKey(labelled.label), systemImage: labelled.icon)
    }
    
}

extension String: Labelled {
    public var label: String { self }
}
