//
//  MenuItemDividerView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/25.
//

import SwiftUI

struct MenuItemDividerView: View {
    var body: some View {
        Divider()
            .background(Color("BodyColor"))
            .scaleEffect(x: 1.2, y: 1, anchor: .center)
    }
}

struct MenuItemDividerView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDividerView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
