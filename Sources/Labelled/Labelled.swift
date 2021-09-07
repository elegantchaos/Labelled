// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 07/09/2021.
//  All code (c) 2021 - present day, Elegant Chaos.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI
import SwiftUIExtensions

public protocol Labelled: Hashable, Identifiable {
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

public extension Label {
    init(_ labelled: Labelled) {
        self.init(labelled.label, systemImage: labelled.icon)
    }
}
