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
                .frame(height: 230)
            
            Image(driver.imageName)
                .resizable()
                .frame(width: 171.5, height: 171.5)
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .offset(x: 0, y: -65)
                .shadow(radius: 18)
                .padding(.bottom, -55)
            
            Text(driver.name)
                .font(.system(size: 45))
                .fontWeight(.bold)
            
            VStack(alignment: .leading) {
                
                StatsRow(statKey: "Edad", statValue: String(driver.age))
                
                StatsRow(statKey: "Número", statValue: String(driver.number))
                
                StatsRow(statKey: "Origen", statValue: driver.birthPlace)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        DriverDetail(driver: drivers[7])
    }
}
#endif
