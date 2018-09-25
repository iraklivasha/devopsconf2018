//
//  Datasource.swift
//  devopsconf2018
//
//  Created by Irakli Vashakidze on 9/25/18.
//  Copyright © 2018 devopsconf2018. All rights reserved.
//

import Foundation

class DataSourceObject : NSObject {
    var title       : String!
    var subTitle    : String!
    
    override init() {
        super.init()
    }
    
    init(title: String, subTitle: String) {
        super.init()
        
        self.title = title
        self.subTitle = subTitle
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        guard let obj = object as? DataSourceObject else {
            return false
        }
        
        return obj.title == self.title && obj.subTitle == self.subTitle
    }
    
    override var hash: Int {
        return (self.title.hash + self.subTitle.hash) ^ 2
    }
}

class DataSource {
    
    private lazy var dataSource = [DataSourceObject]()
    
    var count : Int {
        return self.dataSource.count
    }
    
    func append(_ obj: DataSourceObject) {
        if !self.dataSource.contains(obj) {
            self.dataSource.append(obj)
        }
    }
    
    func remove(_ obj: DataSourceObject) {
        if let idx = self.dataSource.index(of: obj) {
            self.dataSource.remove(at: idx)
        }
    }
    
    func cleanup() {
        self.dataSource.removeAll()
    }
}
