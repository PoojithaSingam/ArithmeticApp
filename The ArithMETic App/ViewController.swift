//
//  ViewController.swift
//  The ArithMETic App
//
//  Created by Singam,Poojitha on 2/14/19.
//  Copyright © 2019 Singam,Poojitha. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var activityTF: UITextField!
    @IBOutlet weak var weightTF: UITextField!
    @IBOutlet weak var timeTF: UITextField!
    @IBOutlet weak var energyLBL: UILabel!
    @IBOutlet weak var minutesLBL: UILabel!


    
    
    @IBAction func calculteBTN(_ sender: Any) {
        let activityText = activityTF.text!
        let weightText = Double(weightTF.text!)
        let timeText = Int(timeTF.text!)
        energyLBL.text = String(format: "%.1f cals", ExerciseCoach.energyConsumed(during: activityText, weight: weightText!, time: timeText!))
        minutesLBL.text = String(format: "%.1f minutes",ExerciseCoach.timeToLose1Pound(during: activityText, weight: weightText!))
    }
    
    @IBAction func clearBTN(_ sender: Any) {
        activityTF.text = nil
        weightTF.text = nil
        timeTF.text = nil
        energyLBL.text = "0 cal"
        minutesLBL.text = "0 minutes"
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

