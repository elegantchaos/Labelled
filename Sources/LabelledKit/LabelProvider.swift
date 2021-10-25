// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 25/10/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Labelled
import SwiftUI

public protocol LabelProvider: Labelled {
    associatedtype LabelType: View
    associatedtype ImageType: View
    
    var label: Label<LabelType, ImageType> { get }
}

public extension LabelProvider where LabelType == Text, ImageType == Image {
    var label: Label<LabelType, ImageType> {
        switch labelIcon {
            case .system(let icon):
                return Label(LocalizedStringKey(labelName), systemImage: icon)
            case .none:
                return Label(LocalizedStringKey(labelName), image: "")
            case .custom(let icon):
                return Label(LocalizedStringKey(labelName), image: icon)
        }
    }
}
