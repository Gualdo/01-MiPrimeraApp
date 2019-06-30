//
//  ContentView.swift
//  01-MiPrimeraApp
//
//  Created by Eduardo David De La Cruz Marrero on 16/06/2019.
//  Copyright © 2019 eduardodelacruz. All rights reserved.
//

import SwiftUI

struct DriverDetail : View {
    
    var driver: Driver
    
    var body: some View {
        VStack {
            Image(driver.team.imageName)
                .resizable()
                .scaledToFill()
            
            Image(driver.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .offset(x: 0, y: -65)
                .shadow(radius: 18)
                .padding(.bottom, -55)
            
            Text(driver.name)
                .font(.system(size: 45))
                .fontWeight(.bold)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                .minimumScaleFactor(0.1)
            
            VStack(alignment: .leading) {
                
                StatsRow(statKey: "Edad", statValue: String(driver.age))
                
                StatsRow(statKey: "Número", statValue: String(driver.number))
                
                StatsRow(statKey: "Origen", statValue: driver.birthPlace)
                
                Spacer()
                    .frame(height: 50)
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            DriverDetail(driver: drivers[1])
                .previewDevice("iPhone Xs")
                .previewDisplayName("Xs")
            DriverDetail(driver: drivers[2])
                .previewDevice("iPhone 8")
                .previewDisplayName("8")
            DriverDetail(driver: drivers[3])
                .previewDevice("iPhone SE")
                .previewDisplayName("SE")
            DriverDetail(driver: drivers[4])
                .previewDevice("iPad Pro (12.9-inch) (3rd generation)")
                .previewDisplayName("PRO 12.9")
        }
    }
}
#endif
