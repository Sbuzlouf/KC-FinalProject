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
            Color.MaximumYellowRed
                .ignoresSafeArea()
            
            VStack {
                Text("مقياس الماء")
                    .font(.system(size: 45, weight: .black))
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
                
                Text("كمية التربة")
                    .font(.system(size: 35))
                    .foregroundColor(.DarkLava)
                    .padding()
                    
                TextField("لتر", text: $soilQ)
                    .frame(width: 200, height: 80)
                    .background(Color.DarkLava.opacity(0.4))
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                
                Button(action: {
                    ShowSheet.toggle()
                }, label: {
                    Text("حساب كمية التربة")
                        .fontWeight(.semibold)
                        .frame(width: 200, alignment: .trailing)
                        .foregroundColor(.BurntSienna)
                })//: BUTTON
                .sheet(isPresented: $ShowSheet) {
                    Soil_Measure()
                }//: SHEET

                Spacer()
                
                Text(String(format: "%.1f لتر", Result))
                    .font(.system(size: 35, weight: .medium))
                    .padding()
                
                Spacer()
                
                Button {
                    Result = Watercalc(s: Double(soilQ) ?? 0.0)
                } label: {
                    HStack {
                        Text("النتيجة")
                            .font(.system(size: 35))
                            .padding()
                        
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                     .frame(width: 170, height: 50)
                     .padding()
                     .background(Color.BurntSienna)
                     .cornerRadius(15)
                     .foregroundColor(.white)
                        
                }//: BUTTON
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
