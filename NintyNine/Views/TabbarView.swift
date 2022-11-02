//
//  TabbarView.swift
//  NintyNine
//
//  Created by Developer on 03/11/2022.
//

import SwiftUI

struct TabbarView: View {
    
    var airPods: some View {
        Button {
            
        } label: {
            VStack(spacing: 5) {
                ScaleFitImage(imageName: "airpods", height: 24)
                AppText(text: "Airpods", font: .popinsRegular, size: 11)
                    .foregroundColor(Color.white)
            }
        }.buttonStyle(PlainButtonStyle())

    }
    
    var instant: some View {
        Button {
            
        } label: {
            VStack(spacing: 5) {
                ScaleFitImage(imageName: "mic", height: 24)
                AppText(text: "Instant", font: .popinsRegular, size: 11)
                    .foregroundColor(Color.white)
            }
        }.buttonStyle(PlainButtonStyle())
    }
    
    var image: some View {
        Button {
            
        } label: {
            VStack(spacing: 5) {
                ScaleFitImage(imageName: "camera", height: 24)
                AppText(text: "Image", font: .popinsRegular, size: 11)
                    .foregroundColor(Color.white)
            }
        }.buttonStyle(PlainButtonStyle())
    }
    
    var call: some View {
        Button {
            
        } label: {
            VStack(spacing: 5) {
                ScaleFitImage(imageName: "call", height: 51)
            }
        }.buttonStyle(PlainButtonStyle())
    }
    
    var body: some View {
            HStack {
                airPods
                Spacer()
                instant
                Spacer()
                image
                Spacer()
                call
            }
            .padding(25)
            .frame(width: Constants.SCREEN_WIDTH)
            .background(Color.ThemeBlackGrey)
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
