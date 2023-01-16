//
//  SearchableToolsTests.swift
//  SearchableToolsTests
//
//  Created by Andres Restrepo Gonzalez on 28/09/22.
//

import XCTest
@testable import SearchableTools

final class SearchableToolsTests: XCTestCase {
  func test_emptySearch_showsAllTools() {
    // Given
    let viewModel = ViewModel()

    // When
    viewModel.query = ""

    // Then
    XCTAssertFalse(viewModel.filteredData.isEmpty)
  }

    func test_searchQueryEqual_showsFilteredTool() {
        // Given
        let viewModel = ViewModel()
        
        // When
        viewModel.query = "Pala"
        
        // Then
        XCTAssertEqual(viewModel.filteredData[0], viewModel.query)
    
    }
    
    func test_searchQueryName_doesntShow () {
        //Given
        let viewModel = ViewModel()
        
        //When
        viewModel.query = "Andres"
        
        //Then
        XCTAssertTrue(viewModel.filteredData.isEmpty)
        
    }
    
    func test_addButtonField () {
        
        let viewModel = ViewModel()
        
        viewModel.addItemName = "Prueba"
        
        viewModel.addButton()
        
        var lastItem = viewModel.filteredData.count
        
        lastItem = lastItem - 1
        
        XCTAssertEqual(viewModel.filteredData[lastItem], viewModel.addedItem)
        
    }
    
}
