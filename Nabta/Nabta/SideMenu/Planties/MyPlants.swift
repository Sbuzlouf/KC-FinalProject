//
//  MyPlants.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 04/09/2022.
//


import SwiftUI

struct MyPlants: View {
    
    @State var showSheet = false
    @State var Plants = [""]
    
    var body: some View {
        ZStack {
            Color.DarkLava
                .ignoresSafeArea()
            
            VStack {
                Text("نبـتاتــي")
                    .font(.system(size: 45, weight: .black))
                    .foregroundColor(.white)
                    .padding()
                
                ScrollView {
                    ForEach(Plants, id: \.self){ Item in
                        VStack {
                            Text(Item)
                            
                            Image(Item)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250, height: 250)
                                .clipShape(Circle())
                                .padding()
                        }//: VSTACK
                    }//: FOREACH
                }//: SCROLLVIEW
                
                Spacer()

                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .foregroundColor(.DarkSeaGreen)
                        .padding()
                })//: BUTTON
                .fullScreenCover(isPresented: $showSheet) {
                   NewPlantView()
                }//: SCREENCOVER
                
                
            }
        }//: VSTACK
    }
}

struct MyPlants_Previews: PreviewProvider {
    static var previews: some View {
        MyPlants()
    }
}
