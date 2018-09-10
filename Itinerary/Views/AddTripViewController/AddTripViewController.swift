//
//  AddTripViewController.swift
//  Itinerary
//
//  Created by German Flores on 9/9/18.
//  Copyright © 2018 German Flores. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tripTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    var doneSaving: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 24)
        
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: UIButton) {
        tripTextField.rightViewMode = .never        //sets the textField's rightView to hidden
        
        /*
         * This closure's purpose is for data validation and making sure
         * The user enters a title for the trip they're trying to add
         */
        guard tripTextField.text != "", let newTripName = tripTextField.text else {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 20))
            imageView.image = #imageLiteral(resourceName: "warning")
            imageView.contentMode = .scaleAspectFit

            tripTextField.rightView = imageView     //set textfield's rightView to the image with the warning logo
            tripTextField.rightViewMode = .always       //sets the textField's rightView to visible so could see image

            tripTextField.layer.borderColor = UIColor.red.cgColor   //change border to red for alert
            tripTextField.layer.borderWidth = 1
            tripTextField.layer.cornerRadius = 5
            
            tripTextField.placeholder = "Trip name required"    //placeholder text changed to alert user
            
            return
        }
        
        TripFunctions.createTrip(tripModel: TripModel(title: newTripName))
        
        if let doneSaving = doneSaving {
            doneSaving()
        }
        dismiss(animated: true)
    }
    
}
