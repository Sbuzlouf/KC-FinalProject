//
//  Calendar.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 05/09/2022.
//

import SwiftUI

struct Calendar: View {
    @State var days = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
    
    var body: some View {
        ZStack {
            Color.BurntSienna
                .ignoresSafeArea()
            
            VStack {
                Text("التقويـــم")
                    .font(.system(size: 45, weight: .black))
                    .foregroundColor(.MaximumYellowRed)
                    .padding()
                
                Spacer()
                
                VStack  {
                    Text("سبتمـبـــر")
                        .fontWeight(.medium)
                        .font(.system(size: 40))
                        .foregroundColor(.MaximumYellowRed)
                        .padding()
                        .background(Color.DarkLava.opacity(0.7))
                        .cornerRadius(35)
                    
                    Divider()
                        .padding()
                        
                    RowView(days: $days[0], Days: $days[1], dAys: $days[2], daYs: $days[3], dayS: $days[4])
                    RowView(days: $days[5], Days: $days[6], dAys: $days[7], daYs: $days[8], dayS: $days[9])
                    RowView(days: $days[10], Days: $days[11], dAys: $days[12], daYs: $days[13], dayS: $days[14])
                    RowView(days: $days[15], Days: $days[16], dAys: $days[17], daYs: $days[18], dayS: $days[19])
                    RowView(days: $days[20], Days: $days[21], dAys: $days[22], daYs: $days[23], dayS: $days[24])
                    RowView(days: $days[25], Days: $days[26], dAys: $days[27], daYs: $days[28], dayS: $days[29])
              
                    Divider()
                        .padding()
                }
            }
        }
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}

struct oneNum: View {
    
    @Binding var days: Int
    @State var color: Color = .BurntSienna
    @State var coLor: Color = .white
    
    var body: some View {
        ZStack {
            Image(systemName: "circle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(color)
                .frame(width: 40, height: 40)
                .padding(10)
               
            
            Text("\(days)")
                .font(.title)
                .foregroundColor(coLor)
                .onTapGesture {
                    if color == .BurntSienna && coLor == .white{
                        color = .MaximumYellowRed
                        coLor = .DarkLava
                    } else {
                        color = .BurntSienna
                        coLor = .white
                    }
                }
        }
    }
}

struct RowView: View {
    
    @Binding var days: Int
    @Binding var Days: Int
    @Binding var dAys: Int
    @Binding var daYs: Int
    @Binding var dayS: Int
    
    var body: some View {
        HStack {
            oneNum(days: $days)
            oneNum(days: $Days)
            oneNum(days: $dAys)
            oneNum(days: $daYs)
            oneNum(days: $dayS)
        }
    }
}
