//
//  AboutItemView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct AboutItemView: View {
    let title: String
    let pledgeAmount: UInt
    let description: String
    let leftAmount: UInt
    let isActive: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("TitleColor"))
                    Text("Pledge $\(pledgeAmount) or more")
                        .font(.title2)
                        .fontWeight(.regular)
                        .foregroundColor(Color("ButtonBackgroundColor"))
                }
                Text(description)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color("BodyColor"))
                    .lineSpacing(5)
                HStack {
                    Text(leftAmount, format: .number)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("TitleColor"))
                    Text("left")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("BodyColor"))
                }
                Button {
                    // TODO: SELECT REWARD.
                } label: {
                    Text(isActive ? "Select Reward" : "Out of Stock")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(
                            Capsule(style: .continuous)
                                .fill(Color(isActive ? "ButtonBackgroundColor" : "BodyColor"))
                        )
                }
                .disabled(!isActive)
            }
            .padding(24)
            .opacity(isActive ? 1 : 0.5)
        }
        .cornerRadius(15)
        .shadow(radius: 10)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct AboutItemView_Previews: PreviewProvider {
    static var previews: some View {
        AboutItemView(title: "Bamboo Stand", pledgeAmount: 25, description: "You get an ergonomic stand made of natural bamboo. You've helped us launch our promotional campaign, and you'll be added to a special Backer member list.", leftAmount: 101, isActive: true)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
