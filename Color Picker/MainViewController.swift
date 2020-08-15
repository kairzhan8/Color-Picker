//
//  MainViewController.swift
//  Color Picker
//
//  Created by Kairzhan Kural on 8/15/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ViewController
        colorVC.colorFromMainVC = view.backgroundColor
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let colorVC = segue.source as! ViewController
        colorVC.delegate = self
        colorVC.refresh()
    }

}

extension MainViewController: DoneDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
