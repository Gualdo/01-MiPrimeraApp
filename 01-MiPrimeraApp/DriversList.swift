//
//  DriversList.swift
//  01-MiPrimeraApp
//
//  Created by Eduardo David De La Cruz Marrero on 29/06/2019.
//  Copyright © 2019 eduardodelacruz. All rights reserved.
//

import SwiftUI

struct DriversList : View {
    var body: some View {
        NavigationView {
            List(drivers) {
                driver in
                NavigationButton(destination: DriverDetail(driver: driver)) {
                    DriverRow(driver: driver)
                }
            }.navigationBarTitle(Text("Formula 1 - 2019"), displayMode: .large)
        }
    }
}

#if DEBUG
struct DriversList_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            DriversList()
                .previewDevice("iPhone SE")
                .previewDisplayName("SE")
            DriversList()
                .previewDevice("iPhone 8")
                .previewDisplayName("8")
            DriversList()
                .previewDevice("iPhone Xs Max")
                .previewDisplayName("Xs Max")
            DriversList()
                .previewDevice("iPad Pro (12.9-inch) (3rd generation)")
                .previewDisplayName("Ipad Pro 12.9")
        }
    }
}
#endif
