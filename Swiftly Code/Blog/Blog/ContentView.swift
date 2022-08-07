//
//  ContentView.swift
//  Blog
//
//  Created by Hansub Yoo on 2022/08/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                VStack (alignment: .leading, spacing: 12) {
                    Text("My Blog")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Text("I write about Tehnology")
                }
                Spacer()
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding(.bottom, 30)
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach (1..<10) { _ in
                    HStack (spacing: 20) {
                        Image("photo")
                            .resizable()
                            .frame(width: 80, height: 110)
                            .cornerRadius(12)
                        VStack(alignment: .leading) {
                            Spacer()
                            HStack {
                                Text("Tech Crunch")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                Spacer()
                                Image(systemName: "calendar")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.primary)
                                Text("4 days ago")
                                    .font(.system(size: 10))
                                    .foregroundColor(.primary)
                                HStack {
                                    Image(systemName: "hand.thumsup.fill")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.secondary)
                                    
                                    Text("1.9k")
                                        .font(.system(size: 10))
                                        .foregroundColor(.secondary)
                                }
                            }
                            
                            Spacer()
                            Text("How to learn SwiftUI quickly with SwiftlyCode.com")
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                            Spacer()
                            Text("SwiftUI is a great investment if you love writing iOS apps")
                                .lineLimit(1)
                                .font(.system(size: 14))
                                .foregroundColor(.secondary)
                            Spacer()
                        }
                        .frame(height: 110)
                    }
                    Divider()
                        .padding().foregroundColor(.primary)
                }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
