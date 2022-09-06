//
//  profileImageMod.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 04/09/2022.
//

import SwiftUI

extension Image {
    func profileImageMod() -> some View {
        self
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .background()
            .clipShape(Circle())
    }
}

