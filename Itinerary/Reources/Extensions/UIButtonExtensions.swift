//
//  UIButtonExtensions.swift
//  Itinerary
//
//  Created by German Flores on 9/9/18.
//  Copyright © 2018 German Flores. All rights reserved.
//

import UIKit

extension UIButton {
    
    //If we didn't want to make a FloatinActionButton.swift file and
    //init our addButton outlet as a FloatingActionButton then
    //could extend a function into UIButtons across our app so that
    //it customizes the button which calls this fn into this custom button
    func createFloatingActionButton() {
        backgroundColor = Theme.tintColor
        layer.cornerRadius = frame.height / 2
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 10)
    }
    
}
