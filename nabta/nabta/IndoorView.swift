//
//  IndoorView.swift
//  nabta
//
//  Created by Sumaya Buzlouf on 29/08/2022.
//

import SwiftUI

struct IndoorView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.CedarChest)
                .frame(width: 450, height: 200)
                .cornerRadius(45)
                .padding(.trailing, 60)
                .offset(x: 90)
            
            HStack {
                Spacer()
                Image("plant")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 200)
                    .position(x: 90, y: 100)
                
                VStack {
                    Text("المزيـونـــة")
                        .font(.largeTitle)
                        .foregroundColor(Color.MacNCheese)
                        .padding(1)
                    
                    Text("نبـات الثعبـان")
                        .font(.system(size: 20))
                        .foregroundColor(Color.Bistre)
                    
                    NavigationLink {
                        SnakeView()
                    } label: {
                        Image(systemName: "arrow.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 30)
                            .foregroundColor(Color.Bistre)
                            .position(x: 140, y: 75)
                    }
                    
                }.position(x: 110, y: 108)
                
            }.frame(width: 390)
        }
    }
}

struct IndoorView_Previews: PreviewProvider {
    static var previews: some View {
        IndoorView()
    }
}
