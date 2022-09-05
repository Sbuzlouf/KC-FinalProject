//
//  Water Measure.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 05/09/2022.
//

import SwiftUI

struct Water_Measure: View {
    
    @State var soilQ = ""
    @State var ShowSheet = false
    @State var Result: Double = 0
    
    var body: some View {
        VStack {
            Text("مقياس الماء")
                .font(.system(size: 40))
                .foregroundColor(.BurntSienna)
                .padding()
            
            Spacer()
            
            Text("كمية التربة")
                .font(.system(size: 30))
                .foregroundColor(.DarkLava)
                .padding()
                
            TextField("لتر", text: $soilQ)
                .frame(width: 200, height: 60)
                .background(Color.DarkLava.opacity(0.4))
                .cornerRadius(20)
                .foregroundColor(.white)
            
            Button(action: {
                ShowSheet.toggle()
            }, label: {
                Text("حساب كمية التربة")
                    .frame(width: 200, alignment: .trailing)
                    .foregroundColor(.DarkSeaGreen)
            })//: BUTTON
            .sheet(isPresented: $ShowSheet) {
                Soil_Measure()
            }//: SHEET
            
            Button {
                Result = Watercalc(s: Double(soilQ) ?? 0.0)
            } label: {
                Image(systemName: "equal.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(40)
                    .foregroundColor(.DarkSeaGreen)
            }//: BUTTON

            Text(String(format: "%.1f لتر", Result))
                .font(.system(size: 35))
                .padding()
            
            Spacer()
        }.multilineTextAlignment(.center)
        //: VSATCK
    }
    func Watercalc(s: Double) -> Double {
        return s / 2
    }//: FUNC
    
}

struct Water_Measure_Previews: PreviewProvider {
    static var previews: some View {
        Water_Measure()
    }
}
