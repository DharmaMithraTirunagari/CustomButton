//
//  ViewController.swift
//  day11class
//
//  Created by Srikanth Kyatham on 11/18/24.
//

import UIKit

class ViewController: UIViewController {

    let statusLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLabel()
        
        let button1 = createCustomButton(title: "Button 1", tag: 1, color: .systemBlue, yPosition: 200)
        let button2 = createCustomButton(title: "Button 2", tag: 2, color: .systemYellow, yPosition: 260)
        let button3 = createCustomButton(title: "Button 3", tag: 3, color: .systemRed, yPosition: 320)
        
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
    }
    
    func setupLabel() {
        
        statusLabel.frame = CGRect(x: 50, y: 100, width: 250, height: 50)
        statusLabel.text = "Press a Button"
        statusLabel.textColor = .green
        statusLabel.textAlignment = .center
        statusLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        
        view.addSubview(statusLabel)
    }
    
    func createCustomButton(title : String, tag : Int, color: UIColor, yPosition: CGFloat) -> UIButton {
        
        let button = UIButton(type: .system)
        
        button.frame = CGRect(x: 50, y: yPosition, width: 300, height: 50)
        button.backgroundColor = color
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tag = tag
        button.layer.cornerRadius = 10
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        return button
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        switch sender.tag{
        case 1:
            print("Button 1 is tapped")
            statusLabel.text = "Button 1 is Pressed"
            view.backgroundColor = .blue
        case 2:
            print("Button 2 is tapped")
            statusLabel.text = "Button 2 is Pressed"
            view.backgroundColor = .yellow
        case 3:
            print("Button 3 is tapped")
            statusLabel.text = "Button 3 is Pressed"
            view.backgroundColor = .red
        default:
            break
        }
    }

}


