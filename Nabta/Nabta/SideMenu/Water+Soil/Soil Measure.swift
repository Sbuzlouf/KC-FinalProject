//
//  Soil Measure.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 05/09/2022.
//

import SwiftUI

struct Soil_Measure: View {
    
    @State var Diameter = ""
    @State var height = ""
    @State var result: Double = 0
    
    @Environment(\.presentationMode) var PresentationMode
    
    var body: some View {
        ZStack {
            Color.DarkLava
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {
                        PresentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.largeTitle)
                            .frame(width: 40, height: 40)
                            .padding()
                })//: BUTTON
                    Spacer()
                }//: HSATCK
                Spacer()
                
                Text("قطر الأصيص")
                    .font(.system(size: 30))
                    .padding()
                
                TextField("سم", text: $Diameter)
                    .frame(width: 200, height: 60)
                    .background(Color.MaximumYellowRed.opacity(0.4))
                    .cornerRadius(20)
                    .foregroundColor(.white)
                
                Text("ارتفاع الأصيص")
                    .font(.system(size: 30))
                    .padding()
                
                TextField("سم", text: $height)
                    .frame(width: 200, height: 60)
                    .background(Color.MaximumYellowRed.opacity(0.4))
                    .cornerRadius(20)
                    .foregroundColor(.white)
                
                Button {
                    result = Soilcalc(d: Double(Diameter) ?? 0.0, h: Double(height) ?? 0.0)
                } label: {
                    Image(systemName: "equal.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(40)
                }//: BUTTON

                Text(String(format: "%.1f لتر", result))
                    .font(.system(size: 35))
                    .padding()
                
                
                Spacer()
            }//: VSTACK
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
        }//: ZSTACK
    }
    func Soilcalc(d: Double, h: Double) -> Double {
        return d * d * h / 1800
    }//: FUNC
}

struct Soil_Measure_Previews: PreviewProvider {
    static var previews: some View {
        Soil_Measure()
    }
}
