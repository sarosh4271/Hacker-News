//
//  ContentView.swift
//  Hacker-News
//
//  Created by Sarosh Tahir on 04/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkingManager()
    
    var body: some View {
            
        NavigationView{
            List(networkManager.posts){ post in
                HStack {
                    NavigationLink(destination: DetailView(url: post.url)) {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            
            }.navigationTitle("Hacker News")
        }
        .onAppear(
                perform: {
                    self.networkManager.fetchData()
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hola"),
//    Post(id: "3", title: "Aregato")
//]
