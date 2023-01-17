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
    
    func test_addField_ToolName () {
        
        let app = XCUIApplication()
        app.launch()
        let addNewToolButton = app.buttons["Add"]
        addNewToolButton.tap()
        let addField = app.textFields["Add an Item"]
        addField.tap()
        addField.typeText("Prueba")
        app.buttons["add_new_tool"].tap()
        XCTAssertTrue(app.staticTexts["Prueba"].exists)
        
    }
    
    func test_deleting_tool () {
        
        let app = XCUIApplication()
        app.launch()
        let deletedTool = app.staticTexts["Martillo"]
        deletedTool.swipeLeft()
        app.buttons["Delete"].tap()
        XCTAssertFalse(app.staticTexts["Martillo"].exists)
    }
    
}
