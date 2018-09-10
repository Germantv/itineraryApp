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
    
    static func readTrips(completion: @escaping () -> ()) {
        
        /* DispatchQueue: Manages what work occurs on what threads
         * Quality of Service (qos): Defines priority for threads
            ** .userInteractive = higherst priority
            ** .background = lowest priority
         * .async: your app won't wait for your code to finish, it'll continue on.
         */
        DispatchQueue.global(qos: .userInteractive).async {
            //adding mock data to tripModels array when calling readTrips()
            if Data.tripModels.count == 0 {
                Data.tripModels.append(TripModel(title: "Trip to Bali!"))
                Data.tripModels.append(TripModel(title: "Mexico"))
                Data.tripModels.append(TripModel(title: "France Trip!"))
                
            }
            DispatchQueue.main.async {
                completion()
            }
        }
        
        
    }
    
    static func updateTripModel(tripModel: TripModel) {
        
    }
    
    static func deleteTrip(tripModel: TripModel) {
        
    }
}
