//
//  ViewController.swift
//  devopsconf2018
//
//  Created by Irakli Vashakidze on 9/25/18.
//  Copyright © 2018 devopsconf2018. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let dataSource = DataSource()
        dataSource.append(DataSourceObject(title: "", subTitle: ""))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var increment = 0
    
    func cyclomaticComplexity(number: Int) {
        switch number {
        case 1:
            increment = 1
        case 2:
            increment = 1
        case 3:
            increment = 1
        case 4:
            increment = 1
        default:
            print("...")
        }
    }


}

