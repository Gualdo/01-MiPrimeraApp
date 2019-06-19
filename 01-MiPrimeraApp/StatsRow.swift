//
//  StatsRow.swift
//  01-MiPrimeraApp
//
//  Created by Eduardo David De La Cruz Marrero on 19/06/2019.
//  Copyright © 2019 eduardodelacruz. All rights reserved.
//

import SwiftUI

struct StatsRow : View {
    
    var statKey: String
    var statValue: String
    
    var body: some View {
        
        HStack(alignment: .bottom) {
            Text(statKey + ": ")
                .font(.system(size: 35))
                .fontWeight(.bold)
            
            Text(statValue)
                .font(.system(size: 30))
                .fontWeight(.ultraLight)
            
            Spacer()
        }
        .padding(.leading)
    }
}

#if DEBUG
struct StatsRow_Previews : PreviewProvider {
    static var previews: some View {
        StatsRow(statKey: "Age", statValue: "34")
    }
}
#endif
