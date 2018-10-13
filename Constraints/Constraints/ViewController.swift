//
//  ViewController.swift
//  Constraints
//
//  Created by Jerrick Warren on 10/13/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Views have a frame property
        let greenSquare = UIView()
        let purpleSquare = UIView()
        
        // always set this to false
        greenSquare.translatesAutoresizingMaskIntoConstraints = false
        greenSquare.backgroundColor = .green
        view.addSubview(greenSquare)
 
       
        
        // lets write all 4 constraints
        // Width, Height, CenterY, CenterX
        // Then we are going to activate them and pass them in
        
        let widthConstraint = NSLayoutConstraint(item: greenSquare,
                                                attribute: .width,
                                                relatedBy: .equal,
                                                toItem: nil,
                                                attribute: .notAnAttribute,
                                                multiplier: 1.0,
                                                constant: 200.0)
        
        // greenSquare height is equal to the greenSquare width
        // gSh = 1.0 * gSW + 0; basically like y = mx + b - Linear Algebra
        let heightConstraint = NSLayoutConstraint(item: greenSquare,
                                                  attribute: .height,
                                                  relatedBy: .equal,
                                                  toItem: greenSquare,
                                                  attribute: .width,
                                                  multiplier: 1.0,
                                                  constant: 0.0)
        
        let centerYConstraint = NSLayoutConstraint(item: greenSquare,
                                                  attribute: .centerY,
                                                  relatedBy: .equal,
                                                  toItem: view,
                                                  attribute: .centerY,
                                                  multiplier: 1.0,
                                                  constant: 0.0)
        
        let centerXConstraint = NSLayoutConstraint(item: greenSquare,
                                                   attribute: .centerX,
                                                   relatedBy: .equal,
                                                   toItem: view,
                                                   attribute: .centerX,
                                                   multiplier: 1.0,
                                                   constant: 0.0)
        
        // needs to be passed in as param
        NSLayoutConstraint.activate([heightConstraint, widthConstraint, centerYConstraint, centerXConstraint])
        
        
        // add a 2nd purlple view Below green line
        // same width, centered horizontally
        // space below green square margin 10 points
        
        purpleSquare.translatesAutoresizingMaskIntoConstraints = false
        purpleSquare.backgroundColor = .purple
        view.addSubview(purpleSquare)
        
        let topConstraintP = NSLayoutConstraint(item: purpleSquare,
                                                 attribute: .top,
                                                 relatedBy: .equal,
                                                 toItem: greenSquare,
                                                 attribute: .bottom,
                                                 multiplier: 1.0,
                                                 constant: 10.0)
        
        let bottomConstraintP = NSLayoutConstraint(item: view,
                                                  attribute: .bottom,
                                                  relatedBy: .equal,
                                                  toItem: purpleSquare,
                                                  attribute: .bottom,
                                                  multiplier: 1.0,
                                                  constant: 10.0)
        
        let widthConstraintP = NSLayoutConstraint(item: purpleSquare,
                                                   attribute: .width,
                                                   relatedBy: .equal,
                                                   toItem: greenSquare,
                                                   attribute: .width,
                                                   multiplier: 1.0,
                                                   constant: 0.0)
        
        let heightConstraintP = NSLayoutConstraint(item: purpleSquare,
                                                   attribute: .height,
                                                   relatedBy: .equal,
                                                   toItem: greenSquare,
                                                   attribute: .height,
                                                   multiplier: 1.0,
                                                   constant: 0.0)
        
        // needs to be passed in as param
        NSLayoutConstraint.activate([topConstraintP, bottomConstraintP, widthConstraintP, heightConstraintP])
    }

}

