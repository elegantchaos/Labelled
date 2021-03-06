// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 25/10/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Labelled
import SwiftUI

/// Simple view which shows either an icon, or a text label, but never both.
public struct SimpleLabel: View {
    let label: Labelled

    public init(_ label: Labelled) {
        self.label = label
    }
    
    public var body: some View {
        Group {
        switch label.labelIcon {
            case .none:
                Text(LocalizedStringKey(label.labelName))
                
            case .system(let icon):
                Image(systemName: icon)

            case .custom(let icon):
                Image(icon)
        }
        }
    }
}
