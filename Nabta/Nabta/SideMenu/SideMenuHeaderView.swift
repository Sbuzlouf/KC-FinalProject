//
//  SideMenuHeaderView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 30/08/2022.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button (action: {
                withAnimation(.spring()) {
                isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })//: BUTTON
            
            HStack {
                VStack() {
                    Image("Nabta")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                        .padding(.bottom, 16)
                    
                    Text("Hello User")
                        .font(.system(size: 24, weight: .semibold))
                    
                    Spacer()

                }//: VSTACK
                .foregroundColor(.white)
                    .padding()
                Spacer()
            }//: HSTACK
        }//: ZSTACK
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
