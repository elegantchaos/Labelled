// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 07/09/2021.
//  All code (c) 2021 - present day, Elegant Chaos.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
import XCTestExtensions
import SwiftUI

@testable import Labelled

final class LabelledTests: XCTestCase {
    func testString() {
        XCTAssertEqual("Test".label, "Test")
    }
    
    func testEnum() {
        enum Cases: String, Labelled {
            case case1
            case case2
            
            var icon: String {
                switch self {
                    case .case1: return "icon1"
                    case .case2: return "icon2"
                }
            }
        }
        
        XCTAssertEqual(Cases.case1.label, "case1")
        XCTAssertEqual(Cases.case2.label, "case2")

        XCTAssertEqual(Cases.case1.icon, "icon1")
        XCTAssertEqual(Cases.case2.icon, "icon2")
    }
    
    func testLabel() {
        struct Thing: Labelled {
            let label = "label"
            let icon = "icon"
        }
        
        let _ = Label(Thing())
    }
}
