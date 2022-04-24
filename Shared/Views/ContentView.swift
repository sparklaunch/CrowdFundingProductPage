//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: .zero) {
                HeaderView()
                ZStack(alignment: .top) {
                    Color("BackgroundColor")
                    VStack {

                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
