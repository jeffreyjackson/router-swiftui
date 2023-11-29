//
//  FirstView.swift
//  router-swiftui
//
//  Created by Jeffrey Jackson on 11/28/23.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack() {
            Button("Navigate to Second View") {
                router.navigateTo(.secondView("Got here from First View"))
            }
            
            Button("Navigate to Third View") {
                router.navigateTo(.thirdView)
            }
        }
        .navigationTitle("First View")
    }
}
