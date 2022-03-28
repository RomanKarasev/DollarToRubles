//
//  ViewController.swift
//  DollarToRubles
//
//  Created by Роман Карасёв on 30.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dollarTo: UILabel!
    @IBOutlet weak var toRubles: UILabel!
    @IBOutlet weak var sliderOne: UISlider! {
        didSet {
            sliderOne.maximumValue = 5000
            sliderOne.minimumValue = 0
            sliderOne.value = 0
            
        }
    }
    
    @IBAction func sliderDolToRub(_ sender: UISlider) {
        let dollar = Int(round(sender.value))
        dollarTo.text = "\(dollar) $"
        let toRublesOperation = Int(round(sender.value * 74.98))
        toRubles.text = "\(toRublesOperation) rub"
    }
    
    @IBOutlet weak var rublesTo: UILabel!
    @IBOutlet weak var toDollar: UILabel!
    @IBOutlet weak var sliderTwo: UISlider! {
        didSet {
            sliderTwo.maximumValue = 400000
            sliderTwo.minimumValue = 0
            sliderTwo.value = 0
        }
    }
    
    @IBAction func sliderRubToDol(_ sender: UISlider) {
        let rubles = Int(round(sender.value))
        rublesTo.text = "\(rubles) rub"
        let toDollarsOperation = Int(round(sender.value * 0.01))
        toDollar.text = "\(toDollarsOperation) $"
    }

}
