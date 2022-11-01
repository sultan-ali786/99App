//
//  LoginView.swift
//  99App
//
//  Created by Developer on 01/11/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var phone: String = ""
    
    var title: some View {
        HStack {
            AppText(text: "Login", font: .popinsBold, size: 31)
                .foregroundColor(Color.white)
            Spacer()
        }
        .padding(.top, 87)
    }
    
    var infoView: some View {
        HStack {
            AppText(text: "Enter your phone number ", font: .popinsRegular, size: 14)
                .foregroundColor(Color.white)
            Spacer()
        }
        .padding(.top, 22)
    }
    
    var phoneTextField: some View {
        VStack {
            HStack(spacing: 21) {
                ScaleFitImage(imageName: "phone", height: 25)
                VStack(alignment: .leading) {
                    AppText(text: "Phone Number",font: .popinsRegular, size: 12)
                        .foregroundColor(Color.white)
                    TextField("Write Here ...", text: $phone)
                        .foregroundColor(Color.white)
                }
            }
            Constants.separator
        }
        .padding(.top, 14)
    }
    
    var loginButton: some View {
        HStack {
            Button {
                
            } label: {
                AppText(text: "Login", font: .popinsMedium, size: 14)
                    .frame(width: Constants.SCREEN_WIDTH - 120, height: 45)
                    .foregroundColor(Color.white)
                    .background(Color.ThemeRed)
                    .cornerRadius(8)
            }
        }
        .padding(.top, 42)
    }
    
    var signUp: some View {
        HStack {
            AppText(text: "Don’t have an account?", font: .popinsMedium, size: 14)
                .foregroundColor(Color.white)
            Button {
                
            } label: {
                AppText(text: "SIGN UP", font: .popinsMedium, size: 14)
                    .foregroundColor(Color.ThemeRed)
            }.buttonStyle(PlainButtonStyle())
            
        }
        .padding(.top, 22)
    }
    
    var body: some View {
        ZStack {
            Constants.appBackground
            VStack {
                Constants.logo
                VStack {
                    title
                    infoView
                    phoneTextField
                    loginButton
                    signUp
                }
                .padding(.horizontal, 20)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
