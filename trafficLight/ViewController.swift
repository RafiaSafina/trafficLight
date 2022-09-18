//
//  ViewController.swift
//  trafficLight
//
//  Created by Рафия Сафина on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
   
    
    var trafficLightIndex = -1
 
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
        startButton.layer.cornerRadius = 10
        
    }

    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        trafficLightIndex += 1
        switch trafficLightIndex {
        case 0: redLight.alpha = 1; greenLight.alpha = 0.3
        case 1: yellowLight.alpha = 1; redLight.alpha = 0.3
        case 2: greenLight.alpha = 1; yellowLight.alpha = 0.3
        default: trafficLightIndex = 0;
                 redLight.alpha = 1;
                 greenLight.alpha = 0.3
        }
    }
}

