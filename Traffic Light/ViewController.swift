//
//  ViewController.swift
//  Traffic Light
//
//  Created by Илья Стратович on 30.01.23.
//

import UIKit

enum Color {
    case red
    case yellow
    case green
}

final class ViewController: UIViewController {
    
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    
    @IBOutlet weak var selectorButton: UIButton!
    
    private var color = Color.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectorButton.layer.cornerRadius = 10
        
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.width / 2
        
        redColorView.alpha = lightOff
        yellowColorView.alpha = lightOff
        greenColorView.alpha = lightOff
        
    }
    
    @IBAction func selectorButtonDidTap() {
        
        if selectorButton.currentTitle != "NEXT" {
            selectorButton.setTitle("NEXT", for: .normal)
        }
        
        switch color {
        case .red:
            greenColorView.alpha = lightOff
            redColorView.alpha = lightOn
            color = .yellow
        case .yellow:
            redColorView.alpha = lightOff
            yellowColorView.alpha = lightOn
            color = .green
        case .green:
            yellowColorView.alpha = lightOff
            greenColorView.alpha = lightOn
            color = .red
        }
    }
    
}

