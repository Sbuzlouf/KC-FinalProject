//
//  HomeView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 06/09/2022.
//

import SwiftUI

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
                
                HStack {
                    Image("nabtah")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 200)
                    
                    VStack {
                        (
                         Text("كل ما تريد معرفته ستجده في ")
                         +
                         Text("نبتة!")
                             .foregroundColor(.BurntSienna)
                         ).fontWeight(.medium)
                             .frame(width: 200, height: 100)
                             .font(.system(size: 25))
                        
                        Button {
                            withAnimation(.spring()) {
                                isShowing.toggle()
                            }
                        } label: {
                            Text("تعرف على نبتة")
                                .fontWeight(.semibold)
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(Color.BurntSienna)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                                .padding(.bottom)
                        }//: BUTTON
                    }//: VSTACK
                }//: HSTACK
                .multilineTextAlignment(.trailing)
                .frame(width: 380, height: 190)
                .background(Color.DarkSeaGreen.opacity(0.5))
                .cornerRadius(15)
                
                Text("التصنيفات")
                    .fontWeight(.medium)
                    .font(.system(size: 25))
                    .padding(.vertical, 20)
                    .frame(width: 350, alignment: .trailing)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(SideMenuViewModel.allCases, id: \.self){ category in
                            NavigationLink (destination: category.view,
                                label: {
                                CategoriesView(viewModel: category)
                                })//: NAVLINK
                        }//: FOREACH
                    }//: HSTACK
                    .padding(.horizontal)
                }//: 
                
                Text("الأكثر زيارة")
                    .fontWeight(.medium)
                    .font(.system(size: 25))
                    .padding(.vertical, 20)
                    .frame(width: 350, alignment: .trailing)
                
                ScrollView {
                    ForEach(Shops){ shop in
                        HStack {
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
                
                
                Spacer()
            }//: VSTACK
            .padding(.vertical)
        }//: ZSATCK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(isShowing: .constant(false))
    }
}
