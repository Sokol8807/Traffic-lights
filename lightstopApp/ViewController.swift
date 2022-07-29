//
//  ViewController.swift
//  lightstopApp
//
//  Created by Ilya Sokolov on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var strartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         setupButtons()
        
        
    }

    @IBAction func startButtonPressed() {
        strartButton.setTitle("Next", for: .normal)
        
    }
    
    func setupButtons() {
        redView.layer.cornerRadius = 54
        redView.alpha = 0.2
        greenView.layer.cornerRadius = 54
        greenView.alpha = 0.2
        yellowView.layer.cornerRadius = 54
        yellowView.alpha = 0.2
    }
    
}

