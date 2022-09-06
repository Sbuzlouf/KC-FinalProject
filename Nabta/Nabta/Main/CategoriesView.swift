//
//  CategoriesView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 06/09/2022.
//

import SwiftUI

struct CategoriesView: View {
    
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: viewModel.images)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 18, height: 18)
                .padding(6)
                .foregroundColor(.DarkLava)
                .background(.white)
                .clipShape(Circle())
            
            Text(viewModel.list)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.DarkLava)
        }//: HSTACK
        .padding(.vertical, 12)
        .padding(.horizontal)
        .background(Color.DarkSeaGreen)
        .clipShape(Capsule())
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView(viewModel: .myPlants)
    }
}
