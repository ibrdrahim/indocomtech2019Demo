/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual landmark.
*/

import SwiftUI
import CoreLocation

struct Product: Codable, Identifiable  {
    var id: Int
    var name: String
    fileprivate var imageName: String
    var stock: Int
    var price: Int
    var description: String
}

extension Product {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
