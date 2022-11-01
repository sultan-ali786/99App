//
//  SelectLanguageView.swift
//  99App
//
//  Created by Developer on 01/11/2022.
//

import SwiftUI

struct SelectLanguageView: View {
    
    @State var searching: String = ""
    
    var title: some View {
        HStack {
            AppText(text: "Select Your Language", font: .popinsBold, size: 24)
                .foregroundColor(Color.white)
            Spacer()
        }
        .padding(.top, 30)
    }
    
    var searchBar: some View {
        VStack {
            HStack(spacing: 24) {
                ScaleFitImage(imageName: "search", height: 22)
                TextField("Search ...", text: $searching)
                    .foregroundColor(Color.white)
            }
            Constants.separator
                .padding(.top, 10)
        }
        .padding(.top, 31)
    }
    
    var languages: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(0..<30) { index in
                    HStack(spacing: 18) {
                        ScaleFitImage(imageName: "americanCircleFlag", height: 26)
                        AppText(text: "English US", font: .popinsRegular, size: 14)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                }
            }
        }
        .padding(.top, 25)
    }
    
    var body: some View {
        ZStack {
            Constants.appBackground
            VStack {
                title
                searchBar
                languages
                Spacer()
            }
            .padding(.horizontal, 30)
        }
    }
}

struct SelectLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectLanguageView()
    }
}
