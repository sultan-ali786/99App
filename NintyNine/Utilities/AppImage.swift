//
//  AppImage.swift
//  99App
//
//  Created by Developer on 31/10/2022.
//

import Foundation
import SwiftUI

struct ScaleFitImage: View {
    let imageName: String
    let height: CGFloat
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(height: height)
    }
}
