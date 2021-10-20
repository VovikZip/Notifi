//
//  MenuViewController.swift
//  Notifi
//
//  Created by Володимир Альошкін on 20.10.2021.
//

import UIKit

class MenuViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else {return}
        dismiss(animated: true){
            print("Dismissing: \(menuType)")
        }
    }
}
