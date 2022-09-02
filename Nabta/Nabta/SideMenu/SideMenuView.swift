//
//  SideMenuView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 30/08/2022.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.DarkSeaGreen, Color.MaximumYellowRed]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 200)
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink (destination: Text(option.list),
                        label: {
                        SideMenuOptionView(viewModel: option)
                        })
                }
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
