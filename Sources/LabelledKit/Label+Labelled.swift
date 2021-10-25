// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 25/10/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Labelled
import SwiftUI

public extension Label where Title == Text, Icon == Image {
    init(_ label: Labelled) {
        switch label.labelIcon {
            case .system(let icon):
                self.init(LocalizedStringKey(label.labelName), systemImage: icon)
            case .none:
                self.init(LocalizedStringKey(label.labelName), image: "")
            case .custom(let icon):
                self.init(LocalizedStringKey(label.labelName), image: icon)
        }

    }
}
