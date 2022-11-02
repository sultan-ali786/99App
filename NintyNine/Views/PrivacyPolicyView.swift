//
//  PrivacyPolicyView.swift
//  NintyNine
//
//  Created by Developer on 03/11/2022.
//

import SwiftUI

struct PrivacyPolicyView: View {
    
    var topView: some View {
        HStack(spacing: 15) {
            Button {
                
            } label: {
                ScaleFitImage(imageName: "backArrow", height: 10)
            }
            AppText(text: "Privacy Policy", font: .popinsSemiBold, size: 24)
                .foregroundColor(Color.white)
            Spacer()
        }
        .padding(.top, 40)
    }
    
    var instructions: some View {
        VStack(spacing: 32) {
            AppText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", font: .popinsRegular, size: 13)
                .foregroundColor(Color.white)
            AppText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", font: .popinsRegular, size: 13)
                .foregroundColor(Color.white)
        }
        .padding(.top, 40)
    }
    
    var body: some View {
        ZStack {
            Constants.appBackground
            VStack {
                topView
                instructions
                Spacer()
            }
            .padding(.horizontal, 30)
        }
    }
}

struct PrivacyPolicyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicyView()
    }
}
