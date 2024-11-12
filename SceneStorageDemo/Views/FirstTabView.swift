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

struct FirstTabView: View {
    @State var sortOrder: SortOrder = .asc
    
    @State private var strings: [String] = [
           "Apple", "Banana", "Cherry", "Date", "Elderberry",
           "Fig", "Grape", "Honeydew", "Indian Fig", "Jackfruit"
       ]

    var sortedStrings: [String] {
        sortOrder == .asc ? strings.sorted() : strings.sorted(by: >)
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List(sortedStrings, id: \.self) { string in
                    Text(string)
                        .font(.title)
                }
                .listStyle(.plain)
                .toolbar {
                    Button {
                        withAnimation {
                            sortOrder = sortOrder == .asc ? .desc : .asc
                        }
                    } label: {
                        Image(systemName: "line.horizontal.3.decrease").rotationEffect(Angle(degrees: sortOrder.buttonRotation))
                    }
                    .font(.title2)
                }
                .navigationTitle("SceneStorage")
            }
        }
    }
}

#Preview {
    FirstTabView()
}
