//
//  MenuModel.swift
//  tecmusicMenu
//
//  Created by alexander rodrigo calderon eguiluz on 24/06/22.
//

import Foundation
import SwiftUI

enum Category: String {
    case electronica = "Electronica"
    case trap = "Trap"
    case pop = "Pop"
    case rock = "Rock"
    case metal = "Metal"
    case punk = "Punk"
    case jazz = "Jazz"
    case romance = "Romance"
    case hip_hop = "Hip Hop"
    case latina = "Latina"
    case clasica = "Clásica"
    case regueton = "Regueton"
}

struct Menu: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let category: Category.RawValue
}

extension Menu {
    static let all: [Menu] = [
        Menu(
            name: "THE WEEKND & DAFT PUNK – STARBOY",
            image: "https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452",
            category: "Electronica"
        ),
        Menu(
            name: "WOS - CANGURO",
            image: "https://i.scdn.co/image/ab67616d0000b2735d9aed5c0f5f7ce3a0ea1e01",
            category: "Trap"
        ),
        Menu(
            name: "THE WEEKND - Blinding Lights",
            image: "https://i.scdn.co/image/ab67616d0000b273a3eff72f62782fb589a492f9",
            category: "Pop"
        ),
    ]
}

