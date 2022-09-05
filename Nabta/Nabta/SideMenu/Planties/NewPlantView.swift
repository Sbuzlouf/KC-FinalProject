//
//  NewPlantView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 05/09/2022.
//

import PhotosUI
import SwiftUI

struct NewPlantView: View {
    
    @State var newName = ""
    @State var changeProfileImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
       
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.DarkSeaGreen
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.largeTitle)
                            .frame(width: 40, height: 40)
                            .padding()
                })//: BUTTON
                    Spacer()
                }//: HSATCK
                Spacer()
                
                Text("صورة المزيونة:")
                    .fontWeight(.semibold)
                    .font(.system(size: 25))
                    .frame(width: 250, height: 40, alignment: .trailing)
                    .padding(.top)
                
                ZStack(alignment: .bottomTrailing) {
                    Button(action: {
                        changeProfileImage = true
                        openCameraRoll = true
                    }, label: {
                        if changeProfileImage {
                            Image(uiImage: imageSelected)
                                .profileImageMod()
                        } else {
// crop the photo
                            Image("Nabta")
                                .profileImageMod()
                        }
                        
                })//: BUTTON
                    Image(systemName: "plus")
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .background(Color.MaximumYellowRed)
                        .clipShape(Circle())
                        .padding()
                }//: ZSTACK
                .sheet(isPresented: $openCameraRoll) {
                    ImagePicker(selectedImage: $imageSelected, sourceType: .photoLibrary)
                }//: SHEET
                
                Spacer()

                Text("اسم المزيونة:")
                    .fontWeight(.semibold)
                    .font(.system(size: 25))
                    .frame(width: 250, height: 40, alignment: .trailing)
                    .padding(.top)
                
                TextField("", text: $newName)
                    .frame(width: 250, height: 30)
                    .padding()
                    .background(.white)
                    .cornerRadius(20)
                    .foregroundColor(.DarkLava)
                    .multilineTextAlignment(.trailing)

                Spacer()

                Button(action: {
                    
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding()
            })//: BUTTON
              Spacer()
            }.foregroundColor(.white)
        }//. ZSTACK

    }
}

struct NewPlantView_Previews: PreviewProvider {
    static var previews: some View {
        NewPlantView()
    }
}
