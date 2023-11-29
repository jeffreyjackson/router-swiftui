//
//  SecondView.swift
//  router-swiftui
//
//  Created by Jeffrey Jackson on 11/28/23.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var router: Router
    
    let description: String
    
    var body: some View {
        VStack() {
            Text(description)
            
            Button("Navigate to First View") {
                router.navigateTo(.firstView)
            }
            
            Button("Navigate to Third View") {
                router.navigateTo(.thirdView)
            }
        }
        .navigationTitle("Second View")
    }
}
