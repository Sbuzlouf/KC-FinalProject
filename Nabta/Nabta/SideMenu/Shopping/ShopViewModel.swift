//
//  ShopViewModel.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 06/09/2022.
//

import Foundation

struct ShopViewModel: Identifiable {
    let id = UUID()
    let name: String
    let country: String
    var rate: Double
}

var Shops = [
    ShopViewModel(name: "مشاتل", country: "الكويت", rate: 4.9),
    ShopViewModel(name: "مشاتل أبرار", country: "الكويت", rate: 3.5),
    ShopViewModel(name: "نمو", country: "الرياض", rate: 4.0)
]

