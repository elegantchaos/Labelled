// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 07/09/2021.
//  All code (c) 2021 - present day, Elegant Chaos.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

public protocol Labelled {
    associatedtype LabelType: View
    associatedtype ImageType: View
    
    var label: Label<LabelType, ImageType> { get }
    var labelName: String { get }
    var labelIcon: String { get }
}

public extension Labelled where LabelType == Text, ImageType == Image {
    var labelIcon: String { return "" }

    var label: Label<LabelType, ImageType> {
        Label(LocalizedStringKey(labelName), systemImage: labelIcon)
    }
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
