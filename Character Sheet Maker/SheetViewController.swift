//
//  ViewController.swift
//  Character Sheet Maker
//
//  Created by Programmer on 11/17/16.
//  Copyright © 2016 Joanie's Fish Daycare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var navigationBar: UINavigationItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func load(title: String) {
        navigationBar.title = title
    }
}