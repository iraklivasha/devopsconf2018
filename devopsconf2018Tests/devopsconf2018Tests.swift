//
//  devopsconf2018Tests.swift
//  devopsconf2018Tests
//
//  Created by Irakli Vashakidze on 9/25/18.
//  Copyright © 2018 devopsconf2018. All rights reserved.
//

import XCTest
@testable import devopsconf2018

class devopsconf2018Tests: XCTestCase {
    
    let dataSource = DataSource()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDataSourceAddDuplicate() {
        
        dataSource.cleanup()
        
        let obj1 = DataSourceObject(title: "title1", subTitle: "subTitle1")
        dataSource.append(obj1)
        
        let obj2 = DataSourceObject(title: "title1", subTitle: "subTitle1")
        dataSource.append(obj2)
        
        XCTAssert(dataSource.count == 1, "Count should be 1 !")
        
        dataSource.cleanup()
    }
    
    func testDataSourceAdd() {
        
        dataSource.cleanup()
        
        let obj1 = DataSourceObject(title: "title1", subTitle: "subTitle1")
        dataSource.append(obj1)
        
        let obj2 = DataSourceObject(title: "title2", subTitle: "subTitle2")
        dataSource.append(obj2)
        
        XCTAssert(dataSource.count == 2, "Count should be 2 !")
        
        dataSource.cleanup()
    }
    
    
    func testDataSourceRemove() {
        
        dataSource.cleanup()
        
        let obj1 = DataSourceObject(title: "title1", subTitle: "subTitle1")
        dataSource.append(obj1)
        
        let obj2 = DataSourceObject(title: "title2", subTitle: "subTitle2")
        dataSource.append(obj2)
        
        dataSource.remove(obj2)
        
        XCTAssert(dataSource.count == 1, "Count should be 1 !")
        
        dataSource.cleanup()
    }
    
    func testDataSourceCleanup() {
        
        dataSource.cleanup()
        
        let obj1 = DataSourceObject(title: "title1", subTitle: "subTitle1")
        dataSource.append(obj1)
        
        let obj2 = DataSourceObject(title: "title2", subTitle: "subTitle2")
        dataSource.append(obj2)
        
        dataSource.cleanup()
        
        XCTAssert(dataSource.count == 0, "Count should be 0 !")
    }
    
    
}
