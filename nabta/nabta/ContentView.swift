//
//  ContentView.swift
//  nabta
//
//  Created by Sumaya Buzlouf on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var place = ["أدوات زراعـيـــة", "خـارجيـــة", "داخلـيـــة"]
    @State var tab = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.opacity(0.1)
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Text("نبـتـــة")
                            .font(.system(size: 40))
                            .foregroundColor(Color.brown)
                            .fontWeight(.semibold)
                            .padding(.top, 52)
                        
                        Image("nabtah")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 90)
                    }
                    ScrollView(.horizontal){
                        HStack {
                            Text(place[0])
                                .underline(color: Color.MiddleGreen)
                                .padding()
                                .onTapGesture {
                                    tab = true
                                    
                                }
                            Text(place[1])
                                .underline(color: Color.MiddleGreen)
                                .padding()
                            Text(place[2])
                                .underline(color: Color.MiddleGreen)
                                .padding()
                        }.font(.system(size: 25))
                            .foregroundColor(Color.Bistre)
                            .padding()
                    }.frame(width: 500, height: 90)
                    
                    test()
                    
                    Spacer()
                    
                    
                }
            }
            .navigationBarHidden(true)
        }
    }
    // func ChosenTab
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
