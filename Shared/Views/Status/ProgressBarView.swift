//
//  ProgressBarView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct ProgressBarView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Capsule(style: .continuous)
                .fill(Color("BackgroundColor"))
                .frame(height: 15)
            HStack(spacing: .zero) {
                Capsule(style: .continuous)
                    .fill(Color("ButtonBackgroundColor"))
                    .frame(height: 15)
                Spacer()
                    .frame(width: 50)
            }
        }
        .padding(.vertical)
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
