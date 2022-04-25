//
//  ThankYouBackgroundView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/25.
//

import SwiftUI

struct ThankYouBackgroundView: View {
    var body: some View {
        Color.black.opacity(0.5)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ThankYouBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouBackgroundView()
            .previewLayout(.sizeThatFits)
    }
}
