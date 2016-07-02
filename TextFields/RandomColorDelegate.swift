//
//  RandomColorDelegate.swift
//  TextFields
//
//  Created by Alex Perez on 6/29/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorDelegate: NSObject, UITextFieldDelegate{
    
    // Here we create an array of colors
    let colors = [UIColor.redColor(),
                  UIColor.orangeColor(), UIColor.yellowColor(),
                  UIColor.greenColor(), UIColor.blueColor(),
                  UIColor.purpleColor(), UIColor.brownColor()];
    
    // Then we choose a random number.
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random()) % colors.count
        
        // We get a color from the colors array using the random number as an index
        return colors[randomIndex]
    }
    
    // The color of the text in the textField is set to the randomly chosen color.
    func textField(textField: UITextField,     shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        return true
    }
}
