//
//  MenuItemView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/25.
//

import SwiftUI

struct MenuItemView: View {
    let text: String
    let link: String
    var body: some View {
        Button {
            // TODO: LINK.
        } label: {
            Text(text)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(Color("TitleColor"))
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(text: "About", link: "#")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
