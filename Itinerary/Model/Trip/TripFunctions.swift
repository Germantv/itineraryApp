//
//  TripFunctions.swift
//  Itinerary
//
//  Created by German Flores on 9/9/18.
//  Copyright © 2018 German Flores. All rights reserved.
//

import Foundation

class TripFunctions {
    static func createTrip(tripModel: TripModel) {
        
    }
    
    static func readTrips() {
        
        //adding mock data to tripModels array when calling readTrips()
        if Data.tripModels.count == 0 {
            Data.tripModels.append(TripModel(title: "Trip to Bali!"))
            Data.tripModels.append(TripModel(title: "Mexico"))
            Data.tripModels.append(TripModel(title: "France Trip!"))

        }
    }
    
    static func updateTripModel(tripModel: TripModel) {
        
    }
    
    static func deleteTrip(tripModel: TripModel) {
        
    }
}
