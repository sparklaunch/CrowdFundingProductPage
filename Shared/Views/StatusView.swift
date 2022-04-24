//
//  StatusView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 16) {
                StatusItemView(title: "$89,914", text: "of $100,000 backed")
                Divider()
                    .background(Color("BodyColor"))
                    .frame(width: 120)
                StatusItemView(title: "5,007", text: "total backers")
                Divider()
                    .background(Color("BodyColor"))
                    .frame(width: 120)
                StatusItemView(title: "56", text: "days left")
                ProgressBarView()
            }
            .padding(36)
        }
        .cornerRadius(15)
        .padding(24)
        .shadow(radius: 10)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
            .previewLayout(.sizeThatFits)
    }
}
