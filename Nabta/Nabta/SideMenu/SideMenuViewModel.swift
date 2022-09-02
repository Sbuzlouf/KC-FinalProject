//
//  SideMenuViewModel.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 30/08/2022.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case viewCollections
    case lowLightPlants
    case outDoor
    case colorfulPlants
    case gardeningTools
    case pots
    
    var list: String {
        switch self {
        case .viewCollections: return "التشكيلات"
        case .lowLightPlants: return "نبتة خافتة الضوء"
        case .outDoor: return "نبتة خارجية"
        case .colorfulPlants: return "نبتة ملونة"
        case .gardeningTools: return "عدة الزراعة"
        case .pots: return "أصيصات"
        }
    }
    
    var images: String {
        switch self {
        case .viewCollections: return "calendar"
        case .lowLightPlants: return "sunset"
        case .outDoor: return "door.left.hand.open"
        case .colorfulPlants: return "circle.hexagonpath"
        case .gardeningTools: return "hand.raised.fingers.spread"
        case .pots: return "scanner"
        }
    }
}
