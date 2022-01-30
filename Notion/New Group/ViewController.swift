//
//  ViewController.swift
//  Notion
//
//  Created by Alex Paul on 1/29/22.
//

import UIKit
/*
 https://www.notion.so/Integration-Playground-65c884225a3443709c81851c74178eab
 id:65c884225a3443709c81851c74178eab
 */
class ViewController: UIViewController {
    var network = NetworkService.shared
    var namesAndTags = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getJsonData()
        
    }
    
    func getJsonData(){
        network.getJSON { results in
            guard let results = results else {
                return
            }
            print(results)
        }
    }
    
    
}

