//
//  ContentView.swift
//  01-MiPrimeraApp
//
//  Created by Eduardo David De La Cruz Marrero on 16/06/2019.
//  Copyright © 2019 eduardodelacruz. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            Image("car_mercedes")
                .resizable()
                .frame(height: 230)
            
            Image("hamilton")
                .resizable()
                .frame(width: 171.5, height: 171.5)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .offset(x: 0, y: -65)
                .shadow(radius: 18)
                .padding(.bottom, -55)
            
            Text("Lewis Hamilton")
                .font(.system(size: 45))
                .fontWeight(.bold)
            
            VStack(alignment: .leading) {
                
                StatsRow(statKey: "Edad", statValue: "34")
                
                StatsRow(statKey: "Número", statValue: "44")
                
                StatsRow(statKey: "Origen", statValue: "Reino Unido")
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
