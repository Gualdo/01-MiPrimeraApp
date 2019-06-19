//
//  DriverRow.swift
//  01-MiPrimeraApp
//
//  Created by Eduardo David De La Cruz Marrero on 19/06/2019.
//  Copyright © 2019 eduardodelacruz. All rights reserved.
//

import SwiftUI

struct DriverRow : View {
    
    var imageName: String
    var pilotName: String
    var backGroundColor: Color
    
    var body: some View {
        
        HStack(spacing: 40.0) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .background(Circle().foregroundColor(backGroundColor))
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
                .shadow(radius: 5)
                
            Text(pilotName)
                .font(.system(size: 30))
                .fontWeight(.bold)
            
            Spacer()
        }.padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
    }
}

#if DEBUG
struct DriverRow_Previews : PreviewProvider {
    static var previews: some View {
        DriverRow(imageName: "hamilton", pilotName: "Lewis Hamilton", backGroundColor: Color(red: 79.0/255.0, green: 164.0/255.0, blue: 161.0/255.0)).previewLayout(.fixed(width: 450, height: 80
            ))
    }
}
#endif
