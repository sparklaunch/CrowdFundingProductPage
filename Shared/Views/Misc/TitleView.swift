//
//  TitleView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct TitleView: View {
    @EnvironmentObject var globalState: GlobalState
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: Constants.semiwideSpacing) {
                Text("Mastercraft Bamboo Monitor Riser")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TitleColor"))
                    .fixedSize(horizontal: false, vertical: true)
                Text("A beautifully handcrafted monitor stand to reduce neck and eye strain.")
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color("BodyColor"))
                    .lineSpacing(5)
                    .fixedSize(horizontal: false, vertical: true)
                HStack {
                    Button {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: .zero)) {
                            globalState.isThankYouViewVisible = true
                        }
                    } label: {
                        ZStack {
                            Capsule(style: .continuous)
                                .fill(Color("ButtonBackgroundColor"))
                            Text("Back this project")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                        }
                        .frame(maxHeight: .infinity)
                    }
                    Button {
                        // TODO: BOOKMARK.
                    } label : {
                        Image(decorative: "Bookmark")
                            .resizable()
                            .scaledToFill()
                            .frame(maxHeight: .infinity)
                            .fixedSize(horizontal: true, vertical: false)
                    }
                }
            }
            .padding(Constants.semiwidePadding)
            .padding(.top, 48)
        }
        .multilineTextAlignment(.center)
        .cornerRadius(15)
        .shadow(radius: 10)
        .fixedSize(horizontal: false, vertical: true)
        .overlay(alignment: .top) {
            Image(decorative: "Mastercraft")
                .resizable()
                .frame(width: 56, height: 56)
                .offset(x: .zero, y: -28)
        }
        .padding(Constants.semiwidePadding)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
