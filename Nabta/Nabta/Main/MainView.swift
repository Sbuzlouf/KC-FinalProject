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

struct HomeView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            Color.white
            
            VStack {
                HStack {
                    Button(action: {
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black)
                            .frame(width: 30, height: 30)
                            
                    })//: BUTTON
                    
                    Spacer()
                }//: HSTACK
                .padding()
                
                Spacer()
            }//: VSTACK
        }//: ZSATCK
    }
}
