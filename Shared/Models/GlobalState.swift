//
//  GlobalState.swift
//  Crowd Funding Product Page (iOS)
//
//  Created by Jinwook Kim on 2022/04/25.
//

import Foundation

class GlobalState: ObservableObject {
    @Published var isMenuExpanded: Bool = false
    @Published var isThankYouViewVisible: Bool = false
}
