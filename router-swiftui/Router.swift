//
//  Router.swift
//  router-swiftui
//
//  Created by Jeffrey Jackson on 11/28/23.
//

import SwiftUI

class Router: ObservableObject {
    enum Route: Hashable {
        case firstView
        case secondView(String)
        case thirdView
    }
    
    @Published var path: NavigationPath = NavigationPath()
    
    @ViewBuilder func view(for route: Route) -> some View {
        switch route {
        case .firstView:
            FirstView()
        case .secondView(let str):
            SecondView(description: str)
        case .thirdView:
            ThirdView()
        }
    }
    
    func navigateTo(_ appRoute: Route) {
        path.append(appRoute)
    }
    
    func navigateBack() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}
