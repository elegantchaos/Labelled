// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 07/09/2021.
//  All code (c) 2021 - present day, Elegant Chaos.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

/// Protocol which indicates that a label can automatically be generated
/// for this object.
/// In this context a label consists of a textual description, and optionally
/// an icon/image.
///
/// Support for turning this into a SwiftUI Label can be found in the companion
/// LabelledKit package.
public protocol Labelled {
    
    /// Text to use for the label.
    var labelName: String { get }
    
    /// Icon to use for the label.
    var labelIcon: LabelIcon { get }
}

public extension Labelled {
    /// Default to having no icon.
    var labelIcon: LabelIcon { return .none }
    
    /// Does this item have an icon?
    var hasIcon: Bool { labelIcon.hasIcon }
}
