//
//----------------------------------------------
// Original project: SceneStorageDemo
// by  Stewart Lynch on 2024-11-17
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct StartTabView: View {
//    @SceneStorage("sortOrder") private var sortOrder: SortOrder = .asc
//    @SceneStorage("selectedTab") private var selectedTab = 0
    @SceneStorage("appState") private var appState = AppState()
    var body: some View {
        TabView(selection: $appState.selectedTab) {
            Tab("First", systemImage: "1.circle", value: 0) {
                FirstTabView(sortOrder: $appState.sortOrder)
                }
            Tab("Second", systemImage: "2.circle", value: 1) {
                    SecondTabView()
                }
            Tab("Third", systemImage: "3.circle", value: 2) {
                    ThirdTabView()
                }
            }
    }
}

#Preview {
    StartTabView()
}
