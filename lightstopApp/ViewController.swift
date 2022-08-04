//
//  ViewController.swift
//  lightstopApp
//
//  Created by Ilya Sokolov on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrentLights {
        case red
        case yellow
        case green
    }
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var strartButton: UIButton!
    
    private var currentLight = CurrentLights.red
    private let lightOff: CGFloat = 0.2
    private let lightON: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    @IBAction func stratButtonPressing(_ sender: UIButton) {
        
        if  strartButton.currentTitle == "Start" {
            strartButton.setTitle("Next", for: .normal)
        }
        switch currentLight {
        case .red:
            redView.alpha = lightON
            greenView.alpha = lightOff
            currentLight = CurrentLights.yellow
        case .yellow:
            redView.alpha = lightOff
            yellowView.alpha = lightON
            currentLight = CurrentLights.green
        case .green:
            yellowView.alpha = lightOff
            greenView.alpha = lightON
            currentLight = CurrentLights.red
        }
    }
    
    func setupButtons() {
        strartButton.setTitle("Start", for: .normal)
        redView.layer.cornerRadius = redView.frame.width / 2
        redView.alpha = lightOff
        greenView.layer.cornerRadius = greenView.frame.width / 2
        greenView.alpha = lightOff
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        yellowView.alpha = lightOff
    }
}
