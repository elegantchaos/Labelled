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
    
    func testDefaultIcon() {
        struct Thing: Labelled {
            let labelName = "name"
        }
        
        XCTAssertEqual(Thing().labelIcon, .none)
        XCTAssertFalse(Thing().hasIcon)
        XCTAssertFalse(Thing().labelIcon.hasIcon)
    }
    
    func testEnum() {
        enum Cases: String, Labelled {
            case case1
            case case2
            
            var labelIcon: LabelIcon {
                switch self {
                    case .case1: return .custom("icon1")
                    case .case2: return .custom("icon2")
                }
            }
        }
        
        XCTAssertEqual(Cases.case1.labelName, "case1")
        XCTAssertEqual(Cases.case2.labelName, "case2")

        XCTAssertEqual(Cases.case1.labelIcon, .custom("icon1"))
        XCTAssertTrue(Cases.case1.hasIcon)
        XCTAssertEqual(Cases.case2.labelIcon, .custom("icon2"))
        XCTAssertTrue(Cases.case2.hasIcon)
    }
    
    func testLabel() {
        struct Thing: Labelled {
            let labelName = "label"
            let labelIcon = "icon"
        }
        
        let _ = Thing().labelName
    }
}
