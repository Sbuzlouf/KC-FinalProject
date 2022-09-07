//
//  Water Measure.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 05/09/2022.
//

import SwiftUI

struct WaterMeasure: View {
    
    @State var soilQ = ""
    @State var ShowSheet = false
    @State var Result: Double = 0
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack {
                Text("مقياس الماء")
                    .font(.system(size: 45, weight: .black))
                    .foregroundColor(.DarkSeaGreen)
                    .padding()
                
                Spacer()
                
                Text("كمية التربة")
                    .font(.system(size: 30))
                    .padding()
                    
                TextField("لتر", text: $soilQ)
                    .frame(width: 200, height: 80)
                    .background(Color.DarkSeaGreen.opacity(0.3))
                    .cornerRadius(20)
                    .foregroundColor(.DarkLava)
                    .font(.system(size: 30))
                
                Button {
                    Result = Watercalc(s: Double(soilQ) ?? 0.0)
                } label: {
                    Image(systemName: "equal.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(40)
                        .foregroundColor(.DarkSeaGreen)
                }//: BUTTON
                
                Text(String(format: "%.1f لتر", Result))
                    .font(.system(size: 35, weight: .medium))
                    .foregroundColor(.DarkLava)
                    .padding()
                
                Spacer()
                
               
                
                Button(action: {
                    ShowSheet.toggle()
                }, label: {
                    Text("اضغط لحساب كمية التربة")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .frame(width: 160, height: 70)
                        .background(Color.DarkSeaGreen)
                        .cornerRadius(20)
                })//: BUTTON
                .sheet(isPresented: $ShowSheet) {
                    Soil_Measure()
                }//: SHEET
                
                Spacer()
            }.multilineTextAlignment(.center)
        }
        //: VSATCK
    }
    func Watercalc(s: Double) -> Double {
        return s / 2
    }//: FUNC
    
}

struct WaterMeasure_Previews: PreviewProvider {
    static var previews: some View {
        WaterMeasure()
    }
}
