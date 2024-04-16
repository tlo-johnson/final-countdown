//
//  NavigationBar.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-16.
//

import Foundation
import SwiftUI

extension View {
    @available(iOS 14, *)
    func navigationTitleColor(_ color: Color) -> some View {
        let uiColor = UIColor(color)
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: uiColor ]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: uiColor ]
        return self
    }
}
