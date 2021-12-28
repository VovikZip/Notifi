//
//  CalendarViewController.swift
//  Notifi
//
//  Created by Володимир Альошкін on 27.12.2021.
//

import UIKit

class CalendarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    
    
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedDate = Date()
    var totalSquares = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func setCellsView()
    {
        let width  = (collectionView.frame.size.width - 2) / 8
        let height  = (collectionView.frame.size.height - 2) / 8
        
        let flowLayot = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flowLayot.itemSize = CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        totalSquares.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "calCell", for: indexPath) as! CalendarCell
        
        cell.dayOfMonth.text = totalSquares[indexPath.item]
        
        return cell
    }
    
    

    @IBAction func previousMonth(_ sender: Any) {
    }
    
    @IBAction func nextMonth(_ sender: Any) {
    }
    
}
