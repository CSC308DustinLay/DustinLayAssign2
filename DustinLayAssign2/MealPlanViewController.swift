//
//  MealPlanViewController.swift
//  DustinLayAssign2
//
//  Created by Heather Bishop on 2/10/26.
//

import UIKit

class MealPlanViewController: UIViewController {
    @IBOutlet weak var mealCalsText: UITextField!
    @IBOutlet weak var snackCalsText: UITextField!
    @IBOutlet weak var stepsText: UITextField!
    @IBOutlet weak var activityMinsText: UITextField!
    @IBAction func simDayButton(_ sender: Any)
    {
        let mealCals = Int(mealCalsText.text ?? "0")!
        let snackCals = Int(snackCalsText.text ?? "0")!
        let totalCals = mealCals + snackCals
        
        let steps = Double(stepsText.text ?? "0.00")!
        let mins = Double(activityMinsText.text ?? "0.00")!
        
        let totalBurn = 1800 + (steps * 0.05) + (mins * 8)
        
        let diffCal = Double(totalCals) - totalBurn
        
        let lbs = abs(diffCal)/3500
        let lbsFormatted = String(format: "%.2f", lbs)
        
        var extraSteps = 0
        var remainingCals = diffCal
        
        while remainingCals > 0
        {
            remainingCals -= 0.05
            extraSteps += 1
        }
        
        let miles = Double(extraSteps) / 2000.0
        let milesFormatted = String(format: "%.2f", miles)
        
        if(diffCal < 0)
        {
            balanceLabel.text = "Eating is less than activity today!"
            statusLabel.text = "You will lose " + lbsFormatted + "lbs today!"
        }
        else
        {
            balanceLabel.text = "Eating is more than activity today!"
            statusLabel.text = "You will gain " + lbsFormatted + "lbs today!"
        }
        
        stepsRemainingLabel.text = "Extra steps to balance: " + String(extraSteps) + "(" + milesFormatted + " miles)"
        
    }
    @IBOutlet weak var balanceLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var stepsRemainingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
