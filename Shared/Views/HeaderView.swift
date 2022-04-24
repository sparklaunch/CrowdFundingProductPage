//
//  HeaderView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment: .top) {
            HeaderBackgroundView()
            TopNavigationView()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
