//
//  PokeAnnotation.swift
//  Pokemon Maps
//
//  Created by Ken Krippeler on 26.09.16.
//  Copyright © 2016 Lichtverbunden. All rights reserved.
//

import UIKit
import MapKit

class PokeAnnotation: NSObject, MKAnnotation
{
    var coordinate: CLLocationCoordinate2D
    var pokemon: Pokemon
    
    init(coord: CLLocationCoordinate2D, pokemon: Pokemon)
    {
        self.coordinate = coord
        self.pokemon = pokemon
    }
}
