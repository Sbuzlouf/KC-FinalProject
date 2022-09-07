//
//  SideMenuViewModel.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 30/08/2022.
//

import Foundation
import SwiftUI

enum SideMenuViewModel: Int, CaseIterable {
    case myPlants
    case water
    case myTasks
    case calender
    case shops
    
    var list: String {
        switch self {
        case .myPlants: return "نبـتاتــي"
        case .water: return "مقيـاس المـاء"
        case .myTasks: return "مهـامــي"
        case .calender: return "التقويــم"
        case .shops: return "محــلات"
        }
    }
    var images: String {
        switch self {
        case .myPlants: return "scanner"
        case .water: return "drop"
        case .myTasks: return "checklist"
        case .calender: return "calendar"
        case .shops: return "cart"
        }
    }
    var view: some View {
        switch self {
        case .myPlants: return AnyView(MyPlants(Name: "", iMage: UIImage()))
        case .water: return AnyView(WaterMeasure())
        case .myTasks: return AnyView(MyTasks())
        case .calender: return AnyView(Calendar())
        case .shops: return AnyView(ShopsView(shop: ShopViewModel(name: "", country: "", rate: 0)))
        }
    }
    
}

