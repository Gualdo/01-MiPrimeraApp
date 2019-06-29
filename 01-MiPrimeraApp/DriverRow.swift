//
//  DriverRow.swift
//  01-MiPrimeraApp
//
//  Created by Eduardo David De La Cruz Marrero on 19/06/2019.
//  Copyright © 2019 eduardodelacruz. All rights reserved.
//

import SwiftUI

struct DriverRow : View {
    
    var driver: Driver
    
    var body: some View {
        
        HStack(spacing: 40.0) {
            Image(driver.imageName)
                .resizable()
                .frame(width: 84, height: 84)
                .scaledToFill()
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
                .shadow(radius: 5)
                
            Text(driver.name)
                .font(.system(size: 30))
                .fontWeight(.bold)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
            Spacer()
        }.padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
    }
}

#if DEBUG
struct DriverRow_Previews : PreviewProvider {
    static var previews: some View {
        
        VStack {
            DriverRow(driver: drivers[0]).previewLayout(.fixed(width: 450, height: 100))
            DriverRow(driver: drivers[1]).previewLayout(.fixed(width: 450, height: 100))
            DriverRow(driver: drivers[2]).previewLayout(.fixed(width: 450, height: 100))
            DriverRow(driver: drivers[3]).previewLayout(.fixed(width: 450, height: 100))
        }
    }
}
#endif
