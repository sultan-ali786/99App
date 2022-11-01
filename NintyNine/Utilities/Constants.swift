//
//  Constants.swift
//  99App
//
//  Created by Developer on 31/10/2022.
//

import Foundation
import UIKit
import SwiftUI

struct Constants {
    
    static var SCREEN_WIDTH: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    static var SCREEN_HEIGHT: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    static var appBackground: some View {
        ZStack(alignment: .bottomTrailing) {
            Color.black
                .ignoresSafeArea(.all)
            ScaleFitImage(imageName: "appLogo", height: 320)
        }
    }
    static var logo: some View {
        ScaleFitImage(imageName: "appLogoWhite", height: 50)
            .padding(.top, 75)
    }
    
    static var separator: some View {
        Divider()
            .background(Color.ThemeGrey)
    }
}
