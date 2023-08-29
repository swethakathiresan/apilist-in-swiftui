//
//  ContentView.swift
//  apilist
//
//  Created by Boopathi on 10/08/23.
//


import SwiftUI

struct ContentView: View {
    @State var titlels = [TitleLists]()
    @State private var isLoading = true

    var body: some View {
        NavigationView {
            if isLoading {
                ProgressView() // Display ProgressView while loading
            } else {
                List($titlels) { $titlel in
                    NavigationLink(destination: Titledetailpage(titlel: $titlel)) {
                        Text("\(titlel.title)")
                    }
                }
                .navigationTitle("Title List")
            }
        }
        .onAppear() {
            Api().loadData { (titlels) in
                self.titlels = titlels //closure
                isLoading = false// Data is loaded, hide ProgressView
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}



//import SwiftUI
//
//struct ContentView: View {
//    @State var titlels = [TitleLists]()
////    @State var albumId = ""
////    @State var id = ""
////    @State var title = ""
//    var body: some View {
//        ProgressView()
//        NavigationView {
//            List(titlels) { titlel in
//                NavigationLink(destination: Titledetailpage(titlel : titlel))
//                {
//                    Text("\(titlel.title)")
////                    Text("\(titlel.albumId)")
////                    Text("\(titlel.id)")
////                    Text("\(titlel.url)")
////                    Text("\(titlel.thumbnailUrl)")
//                }
//            }
//            .onAppear() {
//                Api().loadData { (titlels) in
//                    self.titlels = titlels
//                }
//            }
//            .navigationTitle("Title List")
//        }
//    }
// }
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View{
//        ContentView()
//    }
//}
