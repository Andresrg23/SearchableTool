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
    XCTAssertFalse(viewModel.tools.isEmpty)
  }
}
