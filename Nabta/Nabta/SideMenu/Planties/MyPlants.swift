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
    var Name: String
    var iMage: UIImage
    
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                Text("نبـتاتــي")
                    .font(.system(size: 45, weight: .black))
                    .foregroundColor(.DarkSeaGreen)
                    .padding()
                
                ScrollView {
                    ForEach(NewPlant){ Item in
                        VStack {
                            Text(Item.name)
                            
                            Image(uiImage: Item.image)
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
                        .foregroundColor(.MaximumYellowRed)
                        .padding()
                })//: BUTTON
                .fullScreenCover(isPresented: $showSheet) {
                    NewPlantView(AddedPlant: AddedPlantModel(name: Name, image: iMage))
                }//: SCREENCOVER
            }//: VSTACK
        }//: ZSTACK
    }
}

struct MyPlants_Previews: PreviewProvider {
    static var previews: some View {
        MyPlants(Name: "", iMage: UIImage())
    }
}
