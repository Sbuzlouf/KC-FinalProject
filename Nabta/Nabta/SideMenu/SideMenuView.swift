//
//  SideMenuView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 30/08/2022.
//

import SwiftUI

struct SideMenuView: View {
    
    @State var logOut = false
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.DarkSeaGreen, Color.DarkSeaGreen]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 200)
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink (destination: option.view,
                        label: {
                        SideMenuOptionView(viewModel: option)
                        })
                }//: FOREACH
                Spacer()
            }//: VSTACK
        }//: ZSTACK
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
