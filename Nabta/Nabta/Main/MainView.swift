//
//  MainView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 04/09/2022.
//

import SwiftUI

struct MainView: View {
    
    @State private var isShowing = false
   
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                
                HomeView(isShowing: $isShowing)
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 250 : 0, y: isShowing ? 70 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
            }//: ZSTACK
            .onAppear {
                isShowing = false
            }
            .navigationBarHidden(true)
        }//: NAVVIEW
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            
    }
}
