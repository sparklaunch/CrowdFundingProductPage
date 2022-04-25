//
//  ThankYouView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/25.
//

import SwiftUI

struct ThankYouView: View {
    @EnvironmentObject var globalState: GlobalState
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 24) {
                Image(decorative: "Check")
                    .resizable()
                    .frame(width: 64, height: 64)
                Text("Thanks for your support!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TitleColor"))
                Text("Your pledge brings us one step closer to sharing Mastercraft Bamboo Monitor Riser worldwide. You will get an email once our campaign is completed.")
                    .font(.title3)
                    .fontWeight(.regular)
                    .foregroundColor(Color("BodyColor"))
                    .lineSpacing(5)
                Button {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: .zero)) {
                        globalState.isThankYouViewVisible = false
                    }
                } label: {
                    Text("Got it!")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(
                            Capsule(style: .continuous)
                                .fill(Color("ButtonBackgroundColor"))
                        )
                }
            }
            .multilineTextAlignment(.center)
            .padding(24)
        }
        .cornerRadius(15)
        .shadow(radius: 10)
        .padding()
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ThankYouView_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouView()
            .previewLayout(.sizeThatFits)
    }
}
