//
//  Titledetailpage.swift
//  apilist
//
//  Created by Boopathi on 10/08/23.
//


import SwiftUI

struct Titledetailpage: View {
    @Binding var titlel: TitleLists
    @State private var editedTitle: String = ""
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                AsyncImage(url:titlel.url)
                    .frame(width: 50.0, height: 50.0)
                AsyncImage(url: titlel.thumbnailUrl)
                    .frame(width: 100.0, height: 100.0)
                    .padding(.top, 300.0)
                Text("ALBUMID: \(titlel.albumId) \nID: \(titlel.id)\nTITLE:")
                    .padding(.top, 50.0)
//                    .frame(width: 400.0)
//                    .background(Color(hue: 1.0, saturation: 0.658, brightness: 0.946))
                TextField("", text: $editedTitle)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding(.horizontal, 3.0)
                Button(action: {
                    titlel.title = editedTitle // Update the title using the binding
                }, label: {
                    Text("CHANGE TITLE")
                        .font(.title2)
                        .foregroundColor(.pink)
                        .padding()
                        .frame(maxWidth: 300)
                        .background(Color.black)
                        .cornerRadius(10)
                })
                Spacer()
            }
        }
        .onAppear {
            editedTitle = titlel.title
        }
    }
}

struct Titledetailpage_Previews: PreviewProvider {
    static var previews: some View {
        Titledetailpage(titlel: .constant(TitleLists(albumId: 1, title: "Title", url: URL(string: "https:")!, thumbnailUrl: URL(string: "https:")!)))
    }
}

//import SwiftUI
//
//struct Titledetailpage: View {
//    @Binding var titlel: TitleLists
////    @State var titlels = [TitleLists]()
//    @State var texteditortext: String = ""
//    @State var savedText: String = ""
//
////    var titlel: TitleLists
////
////    init(titlel: TitleLists) {
////        _texteditortext = State(initialValue: titlel.title)
////        self.titlel = titlel
////    }
//    var body: some View {
//        ScrollView(.vertical, showsIndicators: false) {
//            //your content for scrollView
//            VStack{
////                AsyncImage(url:titlel.url)
////                    .frame(width: 50.0, height: 50.0)
////                AsyncImage(url: titlel.thumbnailUrl)
////                    .frame(width: 100.0, height: 100.0)
////                    .padding(.top, 300.0)
//                Text("ALBUMID: \(titlel.albumId) \nID: \(titlel.id)\nTITLE:")
//                    .padding(.top, 50.0)
//                    .frame(width: 400.0)
//                    .background(Color(hue: 1.0, saturation: 0.658, brightness: 0.946))
//                TextEditor(text: $texteditortext)
//                    .frame(height: 70)
//                    .colorMultiply(.mint)
//                Button(action: {
//                    savedText = texteditortext
//                    titlel.title = texteditortext  // Update the title using the binding
//                }, label: {
//                    Text("CHANGE TITLE")
//                    .font(.title2)
//                    .foregroundColor(.pink)
//                    .padding()
//                    .frame(maxWidth: 300)
//                    .background(Color.black)
//                    .cornerRadius(10)
//
//                })
//
//                Text(savedText)
//                Spacer()
//            }
//        }
//    }
//}
//
//
//
//struct Titledetailpage_Previews: PreviewProvider {
//    static var previews: some View {
//        Titledetailpage(titlel: .constant(TitleLists(albumId: 1, title: "Title", url: URL(string: "https:")!, thumbnailUrl: URL(string: "https:")!)))
//    }
//}

//import SwiftUI
//
//struct Titledetailpage: View {
//    @State var titlels = [TitleLists]()
//    @State var texteditortext: String = ""
//    @State var savedText: String = ""
////    @State var albumId = ""
////    @State var id = ""
////    @State var title = "tyhdvc"
////    @State var url = ""
//    var titlel: TitleLists
//
//    init(titlel: TitleLists) {
//        _texteditortext = State(initialValue: titlel.title)
//        self.titlel = titlel
//    }
//    var body: some View {
//        ScrollView(.vertical, showsIndicators: false) {
//            //your content for scrollView
//            VStack{
//                AsyncImage(url:titlel.url)
//                    .frame(width: 50.0, height: 50.0)
//                AsyncImage(url: titlel.thumbnailUrl)
//                    .frame(width: 100.0, height: 100.0)
//                    .padding(.top, 300.0)
//                Text("ALBUMID: \(titlel.albumId) \nID: \(titlel.id)\nTITLE:")
//                    .padding(.top, 50.0)
//                    .frame(width: 400.0)
//                    .background(Color(hue: 1.0, saturation: 0.658, brightness: 0.946))
////                Text("TITLE:")
////                    .multilineTextAlignment(.leading)
////                    .padding(.leading, -190.0)
////                TextEditor(text: $texteditortext)
//                TextEditor(text: $texteditortext)
//                    .frame(height: 70)
//                    .colorMultiply(.mint)
//                Button(action: {
//                    savedText = texteditortext
//                }, label: {
//                    Text("CHANGE TITLE")
//                    .font(.title2)
//                    .foregroundColor(.pink)
//                    .padding()
//                    .frame(maxWidth: 300)
//                    .background(Color.black)
//                    .cornerRadius(10)
//
//                })
//
//                Text(savedText)
//                Spacer()
////                .padding()
////                HStack{
////                    Button("CHANGE TITLE") {
////                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
////                    }
////                    .padding(.top, 50.0)
////                    .frame(width: 200,height: 50)
////                    .foregroundColor(.black)
////                    .buttonStyle(.bordered)
////                    .tint(.pink)
////                }
////                TextEditor(text: $fullText)
////                            .foregroundColor(Color.blue)
////                            .font(.custom("HelveticaNeue", size: 13))
////                TextField("the thethe", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
//                //        List(title) { titlel in
//                //            Text("\(titlel.albumId)")
//                //            }
//            }
//        }
//    }
//}
//
////struct Titledetailpage_Previews: PreviewProvider {
////    static var previews: some View {
////        Titledetailpage(titlel: TitleLists(albumId: 1, title: "Title", url: URL(string: "https:")!, thumbnailUrl: URL(string: "https:")!))
////    }
////}
