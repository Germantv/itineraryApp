//
//  TripModel.swift
//  Itinerary
//
//  Created by German Flores on 9/9/18.
//  Copyright © 2018 German Flores. All rights reserved.
//

import Foundation


class TripModel {
    let id: UUID
    var title:  String!
    
    init(title: String) {
        id = UUID()
        self.title = title
    }
    
}
