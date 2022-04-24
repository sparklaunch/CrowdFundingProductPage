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
            VStack {
                AboutDetailView()
            }
            .padding(24)
        }
        .cornerRadius(15)
        .padding(24)
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
