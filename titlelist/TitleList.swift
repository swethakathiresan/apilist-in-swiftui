//
//  titlelist.swift
//  apilist
//
//  Created by Boopathi on 10/08/23.
//

import Foundation

struct TitleLists: Codable, Identifiable {
    var albumId : Int
    let id = UUID()
    var title: String
    var url: URL
    var thumbnailUrl: URL
}

class Api : ObservableObject {
//    @Published var titlels = [TitleLists]()
    
    func loadData(completion:@escaping ([TitleLists]) -> ()) {
        guard let urls = URL(string: "https://jsonplaceholder.typicode.com/photos") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: urls) {data, response, error in
            let titlels = try! JSONDecoder().decode([TitleLists].self, from: data!)
            print(titlels)
            DispatchQueue.main.async {
                completion(titlels)
            }
        }.resume()
    }
}
