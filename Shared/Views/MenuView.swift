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
            VStack(alignment: .leading, spacing: 24) {
                MenuItemView(text: "About")
                MenuItemDividerView()
                MenuItemView(text: "Discover")
                MenuItemDividerView()
                MenuItemView(text: "Get Started")
            }
            .padding(24)
        }
        .cornerRadius(15)
        .shadow(radius: 10)
        .fixedSize(horizontal: false, vertical: true)
        .padding(24)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .previewLayout(.sizeThatFits)
    }
}
