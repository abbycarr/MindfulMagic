//
//  SitePage.swift
//  MindfulMagic
//
//  Created by Abby Carr on 11/13/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct SitePage: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var site: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
