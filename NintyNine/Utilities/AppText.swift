//
//  AppText.swift
//  99App
//
//  Created by Developer on 31/10/2022.
//

import SwiftUI

struct WholeWidthText: View {
    private let text: String
    private let font: AppFont
    private let size: CGFloat
    
    init(text: String, font: AppFont = .popinsRegular, size: CGFloat = 20) {
        self.text = text
        self.font = font
        self.size = size
    }
    
    var body: some View {
        AppText(text: text, font: font, size: size)
            .frame(minWidth: 0, maxWidth: .infinity)
    }
}

enum AppFont: String {
    case popinsRegular = "Poppins-Regular"
    case popinsBlack = "Poppins-Black"
    case popinsBold = "Poppins-Bold"
    case popinsMedium = "Poppins Medium"
    case popinsSemiBold = "Poppins-SemiBold"
    case popinThin = "Poppins-Thin"
    case popinLight = "Poppins-Light"
}

struct AppText: View {
    
    private let text: String
    private let font: AppFont
    private let size: CGFloat
    
    init(text: String, font: AppFont = .popinsRegular, size: CGFloat = 20) {
        self.text = text
        self.font = font
        self.size = size
    }
    
    var body: some View {
        Text(text).font(Font.custom(self.font.rawValue, size: self.size))
    }
}

struct AppText_Previews: PreviewProvider {
    static var previews: some View {
        AppText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n \nLorem Ipsum is simply dummy text of the printing and typesetting industry. ")
    }
}
