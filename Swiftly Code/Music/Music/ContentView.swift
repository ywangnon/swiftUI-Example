//
//  ContentView.swift
//  Music
//
//  Created by Hansub Yoo on 2022/08/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack (alignment: .leading) {
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.bottom)
                Text("My Music")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.bottom, 8)
                Text("All your favirite songs at one place")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            
            HStack {
                HStack {
                    Text("Search Your Favorite Music")
                        .padding()
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .padding()
                }
                .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                .foregroundColor(.secondary)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(80)
                .shadow(radius: 1)
//                .padding()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                
                ForEach (1..<20) { _ in
                    HStack (spacing: 20) {
                        Image("photo")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(12)
                        
                        VStack (alignment: .leading, spacing: 8) {
                            Text("Memories - Maroon 5")
                                .font(.headline)
                            Text("04:29 - 256 Kbps")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "music.note.list")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }.padding(.bottom, 20)
                }
                
            }
        }
        .padding()
        .padding(.horizontal, 8)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
