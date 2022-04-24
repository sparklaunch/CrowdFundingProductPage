//
//  AboutDetailView.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct AboutDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("About this project")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("TitleColor"))
            Text("The Mastercraft Bamboo Monitor Riser is a sturdy and stylish platform that elevates your screen to a more comfortable viewing height. Placing your monitor at eye level has the potential to improve your posture and make you more comfortable while at work, helping you stay focused on the task at hand.")
                .font(.body)
                .fontWeight(.regular)
                .foregroundColor(Color("BodyColor"))
                .lineSpacing(5)
            Text("Featuring artisan craftsmanship, the simplicity of design creates extra desk space below your computer to allow notepads, pens, and USB sticks to be stored under the stand.")
                .font(.body)
                .fontWeight(.regular)
                .foregroundColor(Color("BodyColor"))
                .lineSpacing(5)
        }
        .padding(.vertical)
    }
}

struct AboutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AboutDetailView()
            .previewLayout(.sizeThatFits)
    }
}
