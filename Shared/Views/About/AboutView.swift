//
//  AboutView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: Constants.semiwideSpacing) {
                AboutDetailView()
                VStack(spacing: Constants.semiwideSpacing) {
                    AboutItemView(title: "Bamboo Stand", pledgeAmount: 25, description: "You get an ergonomic stand made of natural bamboo. You've helped us launch our promotional campaign, and you'll be added to a special Backer member list.", leftAmount: 101, isActive: true)
                    AboutItemView(title: "Black Edition Stand", pledgeAmount: 75, description: "You get a Black Special Edition computer stand and a personal thank you. You'll be added to our Backer member list. Shipping is included.", leftAmount: 64, isActive: true)
                    AboutItemView(title: "Mahogany Special Edition", pledgeAmount: 200, description: "You get two Special Edition Mahogany stands, a Backer T-Shirt, and a personal thank you. You'll be added to our Backer member list. Shipping is included.", leftAmount: 0, isActive: false)
                }
            }
            .padding(Constants.semiwidePadding)
            .padding(.vertical)
        }
        .cornerRadius(15)
        .padding(Constants.semiwidePadding)
        .shadow(radius: 10)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
            .previewLayout(.sizeThatFits)
    }
}
