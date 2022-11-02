//
//  EditProfile.swift
//  NintyNine
//
//  Created by Developer on 03/11/2022.
//

import SwiftUI

struct EditProfile: View {
    
    @State var requestModel = SignUpModel()
    
    var topView: some View {
        HStack(spacing: 15) {
            Button {
                
            } label: {
                ScaleFitImage(imageName: "backArrow", height: 10)
            }
            AppText(text: "Edit Profile", font: .popinsSemiBold, size: 24)
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
        .padding(.top, 50)
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
    
    var saveButton: some View {
        HStack {
            Button {
                
            } label: {
                AppText(text: "Save", font: .popinsMedium, size: 14)
                    .frame(width: Constants.SCREEN_WIDTH - 120, height: 45)
                    .foregroundColor(Color.white)
                    .background(Color.ThemeRed)
                    .cornerRadius(8)
            }
        }
        .padding(.top, 68)
    }
    
    var body: some View {
        ZStack {
            Constants.appBackground
            VStack {
                topView
                profileImageView
                nameTextField
                phoneTextField
                saveButton
                Spacer()
            }
            .padding(.horizontal, 30)
        }
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}
