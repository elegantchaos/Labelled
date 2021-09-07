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
        XCTAssertEqual("Test".labelName, "Test")
    }
    
    func testEnum() {
        enum Cases: String, Labelled {
            case case1
            case case2
            
            var labelIcon: String {
                switch self {
                    case .case1: return "icon1"
                    case .case2: return "icon2"
                }
            }
        }
        
        XCTAssertEqual(Cases.case1.labelName, "case1")
        XCTAssertEqual(Cases.case2.labelName, "case2")

        XCTAssertEqual(Cases.case1.labelIcon, "icon1")
        XCTAssertEqual(Cases.case2.labelIcon, "icon2")
    }
    
    func testLabel() {
        struct Thing: Labelled {
            let labelName = "label"
            let labelIcon = "icon"
        }
        
        let _ = Thing().label
    }
}
