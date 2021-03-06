//
//  TripsTableViewCell.swift
//  Itinerary
//
//  Created by German Flores on 9/9/18.
//  Copyright © 2018 German Flores. All rights reserved.
//

import UIKit

class TripsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tripImageview: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cardView.addShadowAndRoundedCorners()
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 45)
        cardView.backgroundColor = Theme.accent
        tripImageview.layer.cornerRadius = cardView.layer.cornerRadius
        
    }
    
    func setup(tripModel: TripModel) {
        titleLabel.text = tripModel.title
        tripImageview.image = tripModel.image
    }

}
