//
//  MenuView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 06/09/2022.
//

import SwiftUI

struct MenuView: View {
    
    @State var collection = ["الشجيرات", "نبات النخيل", "بامبو", "نبات زهري", "نبات معلق"]
    @State var flower = ["صغير اللبخ", "واشنطنيا", "بامبو دائري", "ستريليتسيا", "كانا إنديكا", "ريجيناي", "قزم بوغانفيليا", "كليفيا مينياتا", "سباثيفيلوم", "الإعصار المعلق"]
    @State var price = [2.5, 3, 4.5, 2.5, 6.5, 55, 20, 16, 3.5, 9.25, 15]
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .frame(width: 40, height: 40)
                        .padding()
                        .foregroundColor(.DarkSeaGreen)
                })//: BUTTON
                Spacer()
            }//: HSATCK
            
            Text(collection[0])
                .font(.largeTitle)
                .foregroundColor(.BurntSienna)
            
            ScrollView(.horizontal) {
                HStack {
                    flowerView(flower: $flower[0], price: $price[0])
                    flowerView(flower: $flower[1], price: $price[1])
                }//: HSTACK
            }//: SCROLLVIEW
            .padding()
            
            Text(collection[1])
                .font(.largeTitle)
                .foregroundColor(.BurntSienna)
            
            ScrollView(.horizontal) {
                HStack {
                    flowerView(flower: $flower[2], price: $price[2])
                }//: HSTACK
            }//: SCROLLVIEW
            .padding()
            
            VStack {
                Text(collection[3])
                    .font(.largeTitle)
                    .foregroundColor(.BurntSienna)
                
                ScrollView(.horizontal) {
                    HStack {
                        flowerView(flower: $flower[4], price: $price[4])
                        flowerView(flower: $flower[5], price: $price[5])
                        flowerView(flower: $flower[6], price: $price[6])
                        flowerView(flower: $flower[7], price: $price[7])
                        flowerView(flower: $flower[8], price: $price[8])
                        flowerView(flower: $flower[9], price: $price[9])
                    }//: HSTACK
                }//: SCROLLVIEW
                .padding()
                
                Spacer()
            }//: VSTACK
            
            Text(collection[2])
                .foregroundColor(.BurntSienna)
                .font(.largeTitle)
            
            ScrollView(.horizontal) {
                HStack {
                    flowerView(flower: $flower[3], price: $price[3])
                }//: HSTACK
            }//: SCROLLVIEW
            .padding()
        }//: VSATCK
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            
    }
}

struct flowerView: View {
    
    @Binding var flower: String
    @Binding var price: Double
    
    
    var body: some View {
        VStack {
            Image(flower)
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 170)
                .cornerRadius(20)
                .shadow(radius: 5)
                .padding(.horizontal)
            
            Text(flower)
            
            Text(String(format: "%.3f", price))
        }//: VSTACK
    }
}
