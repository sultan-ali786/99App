//
//  MyAccountView.swift
//  NintyNine
//
//  Created by Developer on 03/11/2022.
//

import SwiftUI

struct MyAccountView: View {
    
    var topView: some View {
        HStack(spacing: 15) {
            Button {
                
            } label: {
                ScaleFitImage(imageName: "backArrow", height: 10)
            }
            AppText(text: "My Account", font: .popinsSemiBold, size: 24)
                .foregroundColor(Color.white)
            Spacer()
        }
        .padding(.top, 40)
    }
    
    var profileImageView: some View {
        HStack {
            ZStack(alignment: .bottomTrailing) {
                ProfileView(imageName: "profile", height: 134)
                Button {
                    
                } label: {
                    ScaleFitImage(imageName: "edit", height: 15)
                }.buttonStyle(PlainButtonStyle())
            }
            Spacer()
        }
        .padding(.top, 16)
    }
    
    var userInfo: some View {
        HStack {
            VStack(alignment: .leading,spacing: 38) {
                VStack(alignment: .leading,spacing: 11) {
                    AppText(text: "Adam Cold",font: .popinsRegular, size: 16)
                        .foregroundColor(Color.white)
                    AppText(text: "+923204557412",font: .popinsRegular, size: 17)
                        .foregroundColor(Color.white)
                }
                VStack(alignment: .leading,spacing: 11) {
                    AppText(text: "Edit Profile",font: .popinsRegular, size: 16)
                        .foregroundColor(Color.white)
                    AppText(text: "Edit your profile from here",font: .popinsRegular, size: 13)
                        .foregroundColor(Color.white)
                }
                Constants.separator
            }
            Spacer()
        }
        .padding(.top, 23)
    }
    
    var translate: some View {
        VStack(alignment: .leading,spacing: 10) {
            HStack {
                AppText(text: "Translator",font: .popinsRegular, size: 16)
                    .foregroundColor(Color.white)
                Spacer()
                ScaleFitImage(imageName: "threeLines", height: 12)
            }
            AppText(text: "Use this translation engine first if you can, you can still switch to other endines in the translation results",font: .popinsRegular, size: 13)
                .multilineTextAlignment(.leading)
                .foregroundColor(Color.white)
            Constants.separator
        }
        .padding(.top, 15)
    }
    
    var offlineLanguage: some View {
        HStack {
            VStack(alignment: .leading,spacing: 11) {
                AppText(text: "Offline Languages",font: .popinsRegular, size: 16)
                    .foregroundColor(Color.white)
                AppText(text: "Translate text and images without Internet connection ",font: .popinsRegular, size: 13)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white)
                Constants.separator
            }
            Spacer()
        }
        .padding(.top, 15)
    }
    
    var savedLanguages: some View {
        HStack {
            VStack(alignment: .leading,spacing: 11) {
                AppText(text: "Saved Languages",font: .popinsRegular, size: 16)
                    .foregroundColor(Color.white)
                AppText(text: "Favourite Languages will go here.",font: .popinsRegular, size: 13)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white)
                Constants.separator
            }
            Spacer()
        }
        .padding(.top, 15)
    }
    
    var help: some View {
        HStack {
            VStack(alignment: .leading,spacing: 15) {
                AppText(text: "Help",font: .popinsRegular, size: 16)
                    .foregroundColor(Color.white)
                Constants.separator
            }
            Spacer()
        }
        .padding(.top, 15)
    }
    
    var privacyPolicy: some View {
        HStack {
            VStack(alignment: .leading,spacing: 15) {
                AppText(text: "Privacy Policy",font: .popinsRegular, size: 16)
                    .foregroundColor(Color.white)
                Constants.separator
            }
            Spacer()
        }
        .padding(.top, 15)
    }
    
    var termsOfService: some View {
        HStack {
            VStack(alignment: .leading,spacing: 15) {
                AppText(text: "Terms of Service",font: .popinsRegular, size: 16)
                    .foregroundColor(Color.white)
                Constants.separator
            }
            Spacer()
        }
        .padding(.top, 15)
    }
    
    var body: some View {
        ZStack {
            Constants.appBackground
            VStack {
                topView
                    .padding(.horizontal, 30)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        profileImageView
                        userInfo
                        translate
                        offlineLanguage
                        savedLanguages
                        help
                        privacyPolicy
                        termsOfService
                        Spacer()
                    }
                    .padding(.horizontal, 30)
                }
            }
        }
    }
}

struct MyAccountView_Previews: PreviewProvider {
    static var previews: some View {
        MyAccountView()
    }
}
