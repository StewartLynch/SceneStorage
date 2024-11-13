//
//----------------------------------------------
// Original project: SceneStorageDemo
// by  Stewart Lynch on 2024-11-12
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.


import Foundation

struct AppState {
    var sortOrder: SortOrder = .asc
    var selectedTab = 0
}

extension AppState: Codable {
    enum CodingKeys: CodingKey {
        case sortOrder
        case selectedTab
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sortOrder = try container.decode(SortOrder.self, forKey: .sortOrder)
        self.selectedTab = try container.decode(Int.self, forKey: .selectedTab)
    }
    
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.sortOrder, forKey: .sortOrder)
        try container.encode(self.selectedTab, forKey: .selectedTab)
    }
}

extension AppState: RawRepresentable {
    var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
              let appStateString = String(data: data, encoding: .utf8)
        else {
            return "{}"
        }
        return appStateString
    }
    
    init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
              let appState = try? JSONDecoder().decode(AppState.self, from: data)
        else {
            return nil
        }
        self = appState
    }
}
