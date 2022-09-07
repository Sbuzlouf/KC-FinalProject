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
    @State var NewPlant = [
        AddedPlantModel(name: "", image: UIImage())
    ]

    
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
                                .font(.system(size: 35, weight: .medium))
                                .foregroundColor(.DarkLava)
                                .padding()
                            
                            Image(uiImage: Item.image)
                                .resizable()
                                .frame(width: 200, height: 200)
                                .clipShape(Circle())
                                .background()
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
                    NewPlantView(newPlant: $NewPlant)
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
