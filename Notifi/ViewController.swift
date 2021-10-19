//
//  ViewController.swift
//  Notifi
//
//  Created by Володимир Альошкін on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ClockLable: UILabel!
    @IBOutlet weak var dateLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        time()
    }
    
    func time(){
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            let date = Date()
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "hh:MM a"
            
            let currentTime = dateFormatter.string(from: date)
            
            dateFormatter.dateFormat = "dd/mm/yyyy"
            
            let currentDate = dateFormatter.string(from: date)
            
            self.ClockLable.text = currentTime
            self.dateLable.text = currentDate
        }

    }

}

