//
//  ExerciseCoach.swift
//  The ArithMETic App
//
//  Created by Singam,Poojitha on 2/14/19.
//  Copyright © 2019 Singam,Poojitha. All rights reserved.
//

import Foundation
struct ExerciseCoach{
    static let sports:[String:Double] = ["Bicycling" : 8.0, "Jumping rope" : 12.3, "Running -slow": 9.8, "Running - fast": 23.0, "Tennis": 8.0, "Swimminng": 5.8]
  
    
  static  func energyConsumed(during: String, weight: Double, time: Int) -> Double{
        let energy = ExerciseCoach.sports[during]! * 3.5 * (weight / 2.2) / 200.0 * Double(time)
       return energy
    }
  static  func timeToLose1Pound(during: String , weight: Double) -> Double{
        let timeToLose = 3500 / (ExerciseCoach.sports[during]! * 3.5 * (weight / 2.2) / 200)
        return timeToLose
        
    }
    
}


