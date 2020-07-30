//
//  ViewController.swift
//  Color Picker
//
//  Created by Kairzhan Kural on 7/30/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorPicker: UIView!
    
    @IBOutlet var redMinValue: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var redMaxValue: UITextField!
    
    @IBOutlet var greenMinValue: UILabel!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var greenMaxValue: UITextField!
    
    @IBOutlet var blueMinValue: UILabel!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var blueMaxValue: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPicker.layer.cornerRadius = 10
        redMinValue.text = String(redSlider.value)
        greenMinValue.text = String(greenSlider.value)
        blueMinValue.text = String(blueSlider.value)
    }

    @IBAction func redSliderScroll() {
        redMinValue.text = String(format: "%.1f", redSlider.value)
        redMaxValue.text = String(format: "%.1f", redSlider.value)
        refresh()
    }
    
    @IBAction func greenSliderScroll() {
        greenMinValue.text = String(format: "%.1f", greenSlider.value)
        greenMaxValue.text = String(format: "%.1f", greenSlider.value)
        refresh()
    }
    
    @IBAction func blueSliderScroll() {
        blueMinValue.text = String(format: "%.1f", blueSlider.value)
        blueMaxValue.text = String(format: "%.1f", blueSlider.value)
        refresh()
    }
    
    func refresh() {
        colorPicker.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

