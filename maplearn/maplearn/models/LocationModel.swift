//
//  LocationModel.swift
//  maplearn
//
//  Created by Raffaele Turcio on 16/12/24.
//

import SwiftUI
import Foundation
import MapKit

struct LocationModel: Identifiable {
    let id: UUID
    let name: String
    let image: String
    let description: String
    let coordinatex: Double
    let coordinatey: Double
}
