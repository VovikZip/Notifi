//
//  SecondViewController.swift
//  Notifi
//
//  Created by Володимир Альошкін on 21.10.2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("s")

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func test(_ sender: UIDatePicker) {
        print(sender.date)
        
    }
    
   
}
