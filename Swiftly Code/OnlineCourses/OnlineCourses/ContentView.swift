//
//  ContentView.swift
//  OnlineCourses
//
//  Created by Hansub Yoo on 2022/08/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Courses()
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Courses2")
                .tabItem {
                    Image(systemName: "cube")
                }
            Text("Courses3")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                }
        }
        .tint(.black)
    }
}

struct Courses: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .frame(width: 24, height: 24)
                Spacer()
                Image(systemName: "line.horizontal.3.decrease")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            
            Spacer()
            
            Text("Best SwiftUI Courses")
                .font(.system(.title, design: .monospaced))
                .fontWeight(.heavy)
            Text("Enroll Now")
                .font(.system(.title, design: .monospaced))
            VStack (alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 20) {
                        ForEach(0..<6) { _ in
                            VStack (alignment: .leading) {
                                Image("photo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .cornerRadius(20)
                                    .padding(.vertical, 20)
                                
                                VStack (alignment: .leading, spacing: 20) {
                                    Text("SwiftUI Basics")
                                        .font(.system(.headline, design: .monospaced))
                                    Text("SwiftUI Courses from top universities and industry leaders")
                                        .font(.system(.caption, design: .monospaced))
                                        .lineLimit(2)
                                    Text("Course Cost: Free")
                                        .font(.system(.subheadline, design: .monospaced))
                                        .underline()
                                        .bold()
                                }
                                .frame(width: 200, height: 200)
                            }
                        }
                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
