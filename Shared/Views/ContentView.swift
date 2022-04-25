//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var globalState = GlobalState()
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                VStack(spacing: .zero) {
                    HeaderView()
                    ZStack(alignment: .top) {
                        Color("BackgroundColor")
                        VStack {
                            TitleView()
                            StatusView()
                            AboutView()
                        }
                        .offset(x: .zero, y: -100)
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                UIScrollView.appearance().bounces = false
            }
            MenuView()
                .offset(x: .zero, y: 80)
                .opacity(globalState.isMenuExpanded ? 1 : .zero)
        }
        .environmentObject(globalState)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
