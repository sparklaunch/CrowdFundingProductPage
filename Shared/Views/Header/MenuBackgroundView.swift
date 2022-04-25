//
//  MenuBackgroundView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/25.
//

import SwiftUI

struct MenuBackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.black.opacity(0.5), .clear], startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}

struct MenuBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        MenuBackgroundView()
            .previewLayout(.sizeThatFits)
    }
}
