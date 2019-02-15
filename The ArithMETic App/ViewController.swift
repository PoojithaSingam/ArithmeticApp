//
//  ViewController.swift
//  The ArithMETic App
//
//  Created by Singam,Poojitha on 2/14/19.
//  Copyright © 2019 Singam,Poojitha. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    //@IBOutlet weak var activityTF: UITextField!
    
    @IBOutlet weak var activityTF: UIPickerView!
    @IBOutlet weak var weightTF: UITextField!
    @IBOutlet weak var timeTF: UITextField!
    @IBOutlet weak var energyLBL: UILabel!
    @IBOutlet weak var minutesLBL: UILabel!


    var activities:[String] = ExerciseCoach.sports.keys.sorted()
    
    @IBAction func calculteBTN(_ sender: Any) {
        //let activityText = activityTF.text!
        let weightText = Double(weightTF.text!)
        let timeText = Int(timeTF.text!)
        energyLBL.text = String(format: "%.1f cals", ExerciseCoach.energyConsumed(during: data, weight: weightText!, time: timeText!))
        minutesLBL.text = String(format: "%.1f minutes",ExerciseCoach.timeToLose1Pound(during: data, weight: weightText!))
    }
    
    @IBAction func clearBTN(_ sender: Any) {
        //activityTF.text = nil
        weightTF.text = nil
        timeTF.text = nil
        energyLBL.text = "0 cal"
        minutesLBL.text = "0 minutes"
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return activities.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return activities[row]
    }
    var data:String = ""
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
     data = activities[row]
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        self.activityTF.delegate = self
        self.activityTF.dataSource = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

