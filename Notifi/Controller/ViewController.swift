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
            dateFormatter.dateFormat = "hh:mm:ss a"
            
            let currentTime = dateFormatter.string(from: date)
            
            dateFormatter.dateFormat = "dd/MM/yyyy"
            
            let currentDate = dateFormatter.string(from: date)
            
            self.ClockLable.text = currentTime
            self.dateLable.text = currentDate
        } 
        }
    
    @IBAction func tapMenu(_ sender: UIBarButtonItem) {
        guard let FirstSettingController = storyboard?.instantiateViewController(withIdentifier: "FirstSettingController") else { return}
        present(FirstSettingController, animated: true)
    }
    
    func showAlert() {
            let alert = UIAlertController(title: "Your timeless", message: "\(result)", preferredStyle: .alert)
            
            let action =  UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            
            present(alert, animated: true, completion: nil)
        }
    
    @IBAction func timelessButton(_ sender: Any) {
        timeless()
        showAlert()
    }
}

