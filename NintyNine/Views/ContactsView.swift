//
//  ContactsView.swift
//  NintyNine
//
//  Created by Developer on 03/11/2022.
//

import SwiftUI

struct ContactsView: View {
    
    @State var searching: String = ""
    
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
        .padding(.top, 71)
    }
    
    var contacts: some View {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(0..<30) { index in
                        HStack(spacing: 23) {
                            ScaleFitImage(imageName: "person", height: 28)
                            VStack(alignment: .leading, spacing: 5) {
                                AppText(text: "Tabish Bin Tahir", font: .popinsRegular, size: 20)
                                    .foregroundColor(Color.white)
                                AppText(text: "+92 320 455 7412", font: .popinsRegular, size: 14)
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                            ScaleFitImage(imageName: "phone", height: 22)
                        }
                    }
                }
            }
            .padding(.top, 25)
            .padding(.bottom, 90)
    }
    
    var body: some View {
        ZStack {
            Constants.appBackground
            ZStack(alignment: .bottom) {
                VStack {
                    searchBar
                    contacts
                    Spacer()
                }
                .padding(.horizontal, 30)
                TabbarView()
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
