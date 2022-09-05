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
                
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 250 : 0, y: isShowing ? 70 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationTitle("Home")
            }
            .onAppear {
                isShowing = false
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white
            
            Text("Hello, world!")
                .padding()
        }
        
    }
}
