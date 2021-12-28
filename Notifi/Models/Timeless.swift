//
//  Timeless.swift
//  Notifi
//
//  Created by Володимир Альошкін on 07.11.2021.
//

import Foundation


let firstStart = "08:30:00"
let secondStart = "10:25:00"
let thirdStart = "12:20:00"
let fourStart = "02:15:00"
let fifthStart = "04:10:00"
let sixStart = "06:30:00"

let firstTime = "10:05:00"
let secondTime = "12:00:00"
let thirdTime = "01:55:00"
let fourTime = "03:50:00"
let fifthTime = "05:45:00"
let sixTime = "08:05:00"

var currentTime: String = ""

var totalH: String = ""
var totalM: String = ""
var number: String = ""

var result = "To end the \(number) lesson left: \(totalH):h and \(totalM):m"

func timeless(){
    let date = Date()
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ss"
    
    currentTime = dateFormatter.string(from: date)
    print(currentTime)
    
    let calendar = Calendar.current
    
    let curH = calendar.component(.hour, from: date)
    let curM = calendar.component(.minute, from: date)
    
    if currentTime > firstStart && currentTime < firstTime {
        var secondComponent = DateComponents()
        secondComponent.hour = 10
        secondComponent.minute = 05
        
        let resH = secondComponent.hour! - curH
        let resM = secondComponent.minute! - curM
        totalH = "\(resH)"
        totalM = "\(resM)"
        number = "first"
        
    }
    else if currentTime > secondStart && currentTime < secondTime {
        //print(result)
        var secondComponent = DateComponents()
        secondComponent.hour = 12
        secondComponent.minute = 00
               
        let resH = secondComponent.hour! - curH
        let resM = secondComponent.minute! - curM
        totalH = "\(resH)"
        totalM = "\(resM)"
        number = "second"
        
    }
    else if currentTime > thirdStart && currentTime < thirdTime {
        //print(result)
        var secondComponent = DateComponents()
        secondComponent.hour = 13
        secondComponent.minute = 55
               
        let resH = secondComponent.hour! - curH
        let resM = secondComponent.minute! - curM
        totalH = "\(resH)"
        totalM = "\(resM)"
        number = "third"
        
    }
    else if currentTime > fourStart && currentTime < fourTime {
        //print(result)
        var secondComponent = DateComponents()
        secondComponent.hour = 15
        secondComponent.minute = 50
               
        let resH = secondComponent.hour! - curH
        let resM = secondComponent.minute! - curM
        totalH = "\(resH)"
        totalM = "\(resM)"
        number = "four"
        
    }
    else if currentTime > fifthStart && currentTime < fifthTime {
        //print(result)
        var secondComponent = DateComponents()
        secondComponent.hour = 17
        secondComponent.minute = 45
               
        let resH = secondComponent.hour! - curH
        let resM = secondComponent.minute! - curM
        totalH = "\(resH)"
        totalM = "\(resM)"
        number = "fifth"
        
    }
    else if currentTime > sixStart && currentTime < sixTime {
        //print(result)
        var secondComponent = DateComponents()
        secondComponent.hour = 20
        secondComponent.minute = 05
               
        let resH = secondComponent.hour! - curH
        let resM = secondComponent.minute! - curM
        totalH = "\(resH)"
        totalM = "\(resM)"
        number = "sixth"
    }
    else{
        result = "The lesson has not started yet"
        print("The lesson has not started yet")
    }

    print(result)
    
    //if testTime > secondStart && testTime < secondTime {
    //    var secondComponent = DateComponents()
    //    secondComponent.hour = 15
    //    secondComponent.minute = 50
    //    print("ds")
    //    let resH = secondComponent.hour! - curH
    //    let resM = secondComponent.minute! - curM
    //    result = "\(resH):\(resM)"
        
    //}
}

