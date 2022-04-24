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
        ZStack {
            Color.white
            VStack {
                VStack {
                    Text(title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("TitleColor"))
                    Text("Pledge $\(pledgeAmount) or more")
                        .font(.title2)
                        .fontWeight(.regular)
                        .foregroundColor(Color("ButtonBackgroundColor"))
                }
            }
        }
    }
}

struct AboutItemView_Previews: PreviewProvider {
    static var previews: some View {
        AboutItemView(title: "Bamboo Stand", pledgeAmount: 25, description: "You get an ergonomic stand made of natural bamboo. You've helped us launch our promotional campaign, and you'll be added to a special Backer member list.", leftAmount: 101, isActive: true)
    }
}
