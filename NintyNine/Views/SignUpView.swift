//
//  SignUpView.swift
//  99App
//
//  Created by Developer on 31/10/2022.
//

import SwiftUI

struct SignUpView: View {
    
    @State var requestModel = SignUpModel()
    
    var title: some View {
        HStack {
            AppText(text: "Sign Up", font: .popinsBold, size: 31)
                .foregroundColor(Color.white)
            Spacer()
        }
        .padding(.top, 87)
    }
    
    var nameTextField: some View {
        VStack {
            HStack(spacing: 21) {
                ScaleFitImage(imageName: "person", height: 25)
                VStack(alignment: .leading) {
                    AppText(text: "Name",font: .popinsRegular, size: 12)
                        .foregroundColor(Color.white)
                    TextField("Write Here ...", text: $requestModel.name)
                        .foregroundColor(Color.white)
                }
            }
            Constants.separator
        }
        .padding(.top, 32)
    }
    
    var phoneTextField: some View {
        VStack {
            HStack(spacing: 21) {
                ScaleFitImage(imageName: "phone", height: 25)
                VStack(alignment: .leading) {
                    AppText(text: "Phone Number",font: .popinsRegular, size: 12)
                        .foregroundColor(Color.white)
                    TextField("Write Here ...", text: $requestModel.phone)
                        .foregroundColor(Color.white)
                }
            }
            Constants.separator
        }
        .padding(.top, 32)
    }
    
    var signUpButton: some View {
        HStack {
            Button {
                
            } label: {
                AppText(text: "Sign Up", font: .popinsMedium, size: 14)
                    .frame(width: Constants.SCREEN_WIDTH - 120, height: 45)
                    .foregroundColor(Color.white)
                    .background(Color.ThemeRed)
                    .cornerRadius(8)
            }
        }
        .padding(.top, 38)
    }
    
    var login: some View {
        HStack {
            AppText(text: "Already have an account?", font: .popinsMedium, size: 14)
                .foregroundColor(Color.white)
            Button {
                
            } label: {
                AppText(text: "LOG IN", font: .popinsMedium, size: 14)
                    .foregroundColor(Color.ThemeRed)
            }.buttonStyle(PlainButtonStyle())
        }
        .padding(.top, 23)
    }
    
    var body: some View {
        ZStack {
            Constants.appBackground
            VStack {
                Constants.logo
                VStack {
                    title
                    nameTextField
                    phoneTextField
                    signUpButton
                    login
                }
                .padding(.horizontal, 20)
                Spacer()
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct SignUpModel {
    var name: String = ""
    var phone: String = ""
    
    init() {
        
    }
}
