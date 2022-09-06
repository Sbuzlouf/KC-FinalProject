//
//  MenuView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 06/09/2022.
//

import SwiftUI

struct MenuView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .frame(width: 40, height: 40)
                        .padding()
                        .foregroundColor(.BurntSienna)
                })//: BUTTON
                Spacer()
            }//: HSATCK
            Spacer()
        }//: VSATCK
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            
    }
}
