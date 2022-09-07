//
//  SideMenuOptionView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 30/08/2022.
//

import SwiftUI

struct SideMenuOptionView: View {
    
    let viewModel: SideMenuViewModel
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image(systemName: viewModel.images)
                    .frame(width: 24, height: 24)
                
                Text(viewModel.list)
                    .font(.system(size: 14, weight: .semibold))
                
                Spacer()
            }//: HSTACK
            .foregroundColor(.white)
                .padding()
            Divider()
        }//: VSTACK
        .padding(.leading, 25)
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .myPlants)
    }
}
