//
//  ViewController.swift
//  SimpleProject
//
//  Created by Aleksander Popko on 24.05.2015x.
//  Copyright (c) 2015 AP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sumOfTwoNumbers(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber + secondNumber;
    }

}

