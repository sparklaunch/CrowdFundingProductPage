//
//  TitleView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 24) {
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

                    } label : {
                        Image(decorative: "Bookmark")
                            .resizable()
                            .scaledToFill()
                            .frame(maxHeight: .infinity)
                            .fixedSize(horizontal: true, vertical: false)
                    }
                }
            }
            .padding(24)
        }
        .multilineTextAlignment(.center)
        .cornerRadius(15)
        .padding()
        .fixedSize(horizontal: false, vertical: true)
        .shadow(radius: 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
            .previewLayout(.sizeThatFits)
    }
}
