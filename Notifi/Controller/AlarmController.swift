//
//  AlarmController.swift
//  Notifi
//
//  Created by Володимир Альошкін on 13.11.2021.
//

import UIKit
import AVFoundation

class AlarmController: UIViewController {
    
    @IBOutlet weak var leftTime: UILabel!
    @IBOutlet weak var dPicker: UIDatePicker!
    @IBOutlet weak var addBut: UIButton!
    
    var alarmDate = 0.0
    var count = 0
    var timer: Timer?
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftTime.layer.borderWidth = 2.0
        leftTime.layer.borderColor = UIColor.orange.cgColor
        leftTime.layer.cornerRadius = 15
        
        addBut.layer.cornerRadius = 10
        addBut.setTitle("Start", for: .normal)
    }
    
    func createTimer(){
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            if self.count == 0 {
                self.stopTimer()
                self.playSound()
            }else {
                self.count -= 1
                self.leftTime.text = "\(self.count)"
            }
        })
    }
    
    func playSound(){
        guard let url = Bundle.main.url(forResource: "final", withExtension: "mp3") else {return}
        do{
            player = try AVAudioPlayer(contentsOf: url)
        } catch{
            print("error")
        }
        player.play()
    }

    func stopSound(){
        player.stop()
    }
    
    func stopTimer(){
        timer?.invalidate()
    }
    
    @IBAction func test(_ sender: UIDatePicker) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d, yyyy HH:mm:ss"
        formatter.timeZone = TimeZone.current
        print(formatter.string(from: sender.date))
        
        alarmDate = sender.date.timeIntervalSince1970
    }
    
    @IBAction func yes(_ sender: UIButton) {
        if sender.title(for: .normal) == "Start"{
            sender.setTitle("Stop", for: .normal)
            count = Int(self.alarmDate) - Int(Date().timeIntervalSince1970)
            print(count)
            createTimer()
            
        }else {
            sender.setTitle("Start", for: .normal)
            stopSound()
        }
    }
}
