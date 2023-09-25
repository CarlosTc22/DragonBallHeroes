//
//  Dragon_Ball_HeroesTests.swift
//  Dragon Ball HeroesTests
//
//  Created by Juan Carlos Torrejón Cañedo on 20/9/23.
//

import XCTest
@testable import Dragon_Ball_Heroes

final class Dragon_Ball_HeroesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let hero = DragonBallHero.init(id: "Pepe", url: nil, title: "Pepe", description: "Pepe")
        XCTAssertEqual(hero.id, "Pepe")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
