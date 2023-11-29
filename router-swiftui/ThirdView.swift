//
//  ThirdView.swift
//  router-swiftui
//
//  Created by Jeffrey Jackson on 11/28/23.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack() {
            Button("Navigate to Second View") {
                router.navigateTo(.secondView("Got here from Third View"))
            }
            
            Button("Navigate back") {
                router.navigateBack()
            }
        }
        .navigationTitle("Third View")
    }
}
