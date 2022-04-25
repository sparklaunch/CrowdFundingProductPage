//
//  HeaderView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var globalState: GlobalState
    var body: some View {
        ZStack(alignment: .top) {
            HeaderBackgroundView()
            MenuBackgroundView()
                .opacity(globalState.isMenuExpanded ? 1 : .zero)
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
