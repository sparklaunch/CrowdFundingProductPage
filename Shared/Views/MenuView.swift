//
//  MenuView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack {
            Color.white
            VStack(alignment: .leading, spacing: Constants.semiwideSpacing) {
                MenuItemView(text: "About", link: "#")
                MenuItemDividerView()
                MenuItemView(text: "Discover", link: "#")
                MenuItemDividerView()
                MenuItemView(text: "Get Started", link: "#")
            }
            .padding(Constants.semiwidePadding)
        }
        .cornerRadius(15)
        .shadow(radius: 10)
        .fixedSize(horizontal: false, vertical: true)
        .padding(Constants.semiwidePadding)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .previewLayout(.sizeThatFits)
    }
}
