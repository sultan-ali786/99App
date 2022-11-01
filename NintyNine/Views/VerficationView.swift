//
//  VerficationView.swift
//  99App
//
//  Created by Developer on 01/11/2022.
//

import SwiftUI

struct VerficationView: View {
    
    var lockIcon: some View {
        HStack {
            ScaleFitImage(imageName: "lock", height: 75)
        }
    }
    
    var infoView: some View {
        HStack {
            AppText(text: "Verification Code", font: .popinsRegular, size: 22)
                .foregroundColor(Color.white)
        }
        .padding(.top, 30)
    }
    
    var instruction: some View {
        HStack {
            AppText(text: "Please enter verification code, So we can verify your phone number.", font: .popinsRegular, size: 14)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
        }
        .padding(.top, 25)
        .padding(.horizontal, 70)
    }
    
    var codeSquares: some View {
        HStack(spacing: 16) {
            Rectangle()
                .frame(width: 34, height: 47)
                .border(Color.white)
            Rectangle()
                .frame(width: 34, height: 47)
                .border(Color.white)
            Rectangle()
                .frame(width: 34, height: 47)
                .border(Color.white)
            Rectangle()
                .frame(width: 34, height: 47)
                .border(Color.white)
        }
        .padding(.top, 30)
    }
    
    var reSendCode: some View {
        HStack {
            AppText(text: "Didn’t get the code?", font: .popinsMedium, size: 14)
                .foregroundColor(Color.white)
            Button {
                
            } label: {
                AppText(text: "Resend", font: .popinsMedium, size: 12)
                    .foregroundColor(Color.ThemeRed)
            }.buttonStyle(PlainButtonStyle())
            
        }
        .padding(.top, 15)
    }
    
    var continueButton: some View {
        HStack {
            Button {
                
            } label: {
                AppText(text: "Continue", font: .popinsMedium, size: 21)
                    .frame(width: Constants.SCREEN_WIDTH - 120, height: 45)
                    .foregroundColor(Color.white)
                    .background(Color.ThemeRed)
                    .cornerRadius(8)
            }
        }
        .padding(.top, 31)
    }
    
    var body: some View {
        ZStack {
            Constants.appBackground
            VStack {
                Spacer()
                lockIcon
                infoView
                instruction
                codeSquares
                reSendCode
                continueButton
                Spacer()
            }
        }
    }
}

struct VerficationView_Previews: PreviewProvider {
    static var previews: some View {
        VerficationView()
    }
}
