//
//  StatusItemView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct StatusItemView: View {
    let title: String
    let text: String
    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TitleColor"))
            Text(text)
                .font(.footnote)
                .fontWeight(.regular)
                .foregroundColor(Color("BodyColor"))
        }
    }
}

struct StatusItemView_Previews: PreviewProvider {
    static var previews: some View {
        StatusItemView(title: "$89,914", text: "of $100,000 backed")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
