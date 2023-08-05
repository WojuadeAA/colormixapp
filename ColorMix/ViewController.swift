//
//  ViewController.swift
//  ColorMix
//
//  Created by Wojuade Abdul Afeez on 04/08/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      updateColor()
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
       updateColor()
    }
    
   
    @IBAction func sliderChanged(_ sender: UISlider) {
    updateColor()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        resetColor()
        updateColor()
    }
    func resetColor() {
        redSlider.value = 0
        blueSlider.value = 0
        greenSlider.value = 0
        redSwitch.isOn = false
        blueSwitch.isOn = false
        greenSwitch.isOn = false
    }
    func updateColor(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue : CGFloat = 0
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        colorView.backgroundColor = color
        
    }
}

