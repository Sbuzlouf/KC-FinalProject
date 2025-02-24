//
//  ShopsView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 05/09/2022.
//

import SwiftUI

struct ShopsView: View {
    
    @State var isshowing = false
    
    var shop: ShopViewModel
    
    var body: some View {
        
        
        ScrollView {
            Text("مشاتل")
                .font(.system(size: 45, weight: .black))
                .foregroundColor(.DarkSeaGreen)
                .padding()
            ScrollView(.horizontal) {
                HStack {
                    Image("plant")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280, height: 240)
                        .cornerRadius(30)
                        .padding()
                        .shadow(radius: 4)
                    
                    Image("pots")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280, height: 240)
                        .cornerRadius(35)
                        .shadow(radius: 4)
                        .padding()
                }//: HSTACK
            }//: HSTACK
            ScrollView {
                ForEach(Shops){ shop in
                    HStack {
                        Button {
                            isshowing.toggle()
                        } label: {
                            Image(systemName: "chevron.down")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .padding()
                                .background(Color.MaximumYellowRed)
                                .clipShape(Circle())
                                .foregroundColor(.white)
                        }//: BUTTON
                        .fullScreenCover(isPresented: $isshowing) {
                            MenuView()
                        }

                        Spacer()
                        VStack {
                            Text(shop.name)
                                .font(.title)
                                .frame(width: 150, alignment: .trailing)
                            
                            Text(shop.country)
                                .frame(width: 150, alignment: .trailing)
                                .foregroundColor(.gray)
                                .padding(.trailing)
                            
                            HStack {
                                Text(String(format: "%.1f", shop.rate))
                                    .frame(width: 100, alignment: .trailing)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.MaximumYellowRed)
                            }//: HSTACK
                        }//: VSTACK
                        
                        Image(shop.name)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(width: 90, height: 90)
                            .shadow(radius: 5)
                            .padding()
                        
                    }//: HSTACK
                        .padding()
                }//: FOREACH
            }//: SCROLLVIEW
        }//: SCROLLVIEW
    }
}

struct ShopsView_Previews: PreviewProvider {
    static var previews: some View {
        ShopsView(shop: ShopViewModel(name: "", country: "", rate: 0))
            
            
    }
}
