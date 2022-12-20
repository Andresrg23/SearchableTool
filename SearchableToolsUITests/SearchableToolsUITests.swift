//
//  SearchableToolsUITests.swift
//  SearchableToolsUITests
//
//  Created by Andres Restrepo Gonzalez on 28/09/22.
//

import XCTest

final class SearchableToolsUITests: XCTestCase {
    
    func test_searchQuery_ToolName () {
        
        let app = XCUIApplication()
        app.launch()
        let searchSearchField = app.navigationBars["SEARCH TOOLS"].searchFields["Search"]
        XCTAssertTrue(searchSearchField.exists)
        searchSearchField.tap()
        searchSearchField.typeText("Martillo")
        XCTAssertEqual(searchSearchField.value as! String, "Martillo")
        
    }
}
