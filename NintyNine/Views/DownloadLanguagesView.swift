//
//  DownloadLanguagesView.swift
//  99App
//
//  Created by Developer on 01/11/2022.
//

import SwiftUI

struct DownloadLanguagesView: View {
    
    @State var searching: String = ""
    
    var title: some View {
        HStack {
            AppText(text: "Download Languages", font: .popinsBold, size: 24)
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
        ZStack(alignment: .bottom) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(0..<30) { index in
                        HStack(spacing: 18) {
                            ScaleFitImage(imageName: "americanCircleFlag", height: 26)
                            AppText(text: "English US", font: .popinsRegular, size: 14)
                                .foregroundColor(Color.white)
                            Spacer()
                            ScaleFitImage(imageName: index % 2 == 0 ? "done" : "downloadWhite", height: 20)
                        }
                    }
                }
            }
            .padding(.top, 25)
            .padding(.bottom, 90)
            nextButton
        }
    }
    
    var nextButton: some View {
        HStack {
            Button {
                
            } label: {
                AppText(text: "Next", font: .popinsMedium, size: 14)
                    .frame(width: Constants.SCREEN_WIDTH - 120, height: 45)
                    .foregroundColor(Color.white)
                    .background(Color.ThemeRed)
                    .cornerRadius(8)
            }
        }
        .padding(.top, 42)
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

struct DownloadLanguagesView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadLanguagesView()
    }
}
