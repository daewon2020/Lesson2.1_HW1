//
//  ViewController.swift
//  Lesson2.1_HW1
//
//  Created by Kostya on 12.03.2022.
//

import UIKit

enum SemaphoreColor {
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet var redLightSection: UIView!
    @IBOutlet var yellowLightSection: UIView!
    @IBOutlet var greenLightSection: UIView!
    @IBOutlet var lightButton: UIButton!
    
    private var semaphoreColor = SemaphoreColor.red
    private var firstTap = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightSection.layer.cornerRadius = redLightSection.frame.height / 2
        yellowLightSection.layer.cornerRadius = yellowLightSection.frame.height / 2
        greenLightSection.layer.cornerRadius = greenLightSection.frame.height / 2 
    }

    @IBAction func changeColorButton(_ sender: Any) {
        if firstTap {
            firstTap.toggle()
            lightButton.setTitle("NEXT", for: .normal)
            semaphoreColor = .red
            redLightSection.alpha = 1
        } else {
            switch semaphoreColor {
            case .red:
                semaphoreColor = .yellow
                yellowLightSection .alpha = 1
                redLightSection.alpha = 0.3
                break
            case .yellow:
                semaphoreColor = .green
                greenLightSection.alpha = 1
                yellowLightSection.alpha = 0.3
                break
            case .green:
                semaphoreColor = .red
                redLightSection.alpha = 1
                greenLightSection.alpha = 0.3
            }
        }
    }
    
}

