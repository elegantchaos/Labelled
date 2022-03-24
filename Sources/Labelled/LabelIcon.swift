// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 24/03/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

/// Icon to use when making a label.
/// This can be none, or the name of a system icon (SF Symbols), or the name of a custom image resource.
public enum LabelIcon: Equatable {
    case none
    case system(String)
    case custom(String)
    
    public var hasIcon: Bool {
        switch self {
            case .none: return false
            default: return true // TODO - could check if named SF or custom icon actually exists? Maybe in DEBUG only?
        }
    }
}
