//
//  TopNavigationView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct TopNavigationView: View {
    @EnvironmentObject var globalState: GlobalState
    var body: some View {
        HStack {
            Image("Logo")
                .resizable()
                .frame(width: 128, height: 20)
            Spacer()
            Button {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: .zero)) {
                    globalState.isMenuExpanded.toggle()
                }
            } label: {
                if globalState.isMenuExpanded {
                    Image("CloseMenu")
                        .resizable()
                        .frame(width: 14, height: 15)
                }
                else {
                    Image("Hamburger")
                        .resizable()
                        .frame(width: 16, height: 15)
                }
            }
        }
        .padding(24)
        .padding(.top, 44)
        .background(
            LinearGradient(colors: [.black.opacity(0.5), .clear], startPoint: .top, endPoint: .bottom)
        )
    }
}

struct TopNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationView()
            .background(.gray)
            .previewLayout(.sizeThatFits)
    }
}
