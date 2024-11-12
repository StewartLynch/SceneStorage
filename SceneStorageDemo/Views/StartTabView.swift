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
    var body: some View {
            TabView {
                Tab("First", systemImage: "1.circle") {
                    FirstTabView()
                }
                Tab("Second", systemImage: "2.circle") {
                    SecondTabView()
                }
                Tab("Third", systemImage: "3.circle") {
                    ThirdTabView()
                }
            }
    }
}

#Preview {
    StartTabView()
}
