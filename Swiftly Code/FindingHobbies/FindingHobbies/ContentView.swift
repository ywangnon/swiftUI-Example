//
//  ContentView.swift
//  FindingHobbies
//
//  Created by Hansub Yoo on 2022/08/04.
//

import SwiftUI

struct ContentView: View {
    @State var hobby: String = ""
    @State var categories: [String] = ["Polo", "Swimming", "Dancing", "Singing"]
    
    var body: some View {
        VStack {
            // 상단 로고
            HStack {
                Text("Hobbies")
                Spacer()
                Image("photo")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            }
            
            // 텍스트 입력창
            HStack {
                HStack {
                    TextField("Search a Hobby", text: $hobby)
                        .padding()
                    Button {
                        print("search")
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .padding()
                    }
                }
                .padding(EdgeInsets(top: 8,
                                    leading: 8,
                                    bottom: 8,
                                    trailing: 8))
                .foregroundColor(.secondary)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(80)
                .shadow(radius: 1)
                .padding()
            }
            
            // 카테고리
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing: 14) {
                    ForEach(categories, id: \.self) { category in
                        VStack {
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 30,
                                       height: 30)
                                .padding(.all, 20)
                                .background(Color(red: .random(in: 0...1),
                                                  green: .random(in: 0...1),
                                                  blue: .random(in: 0...1)))
                                .foregroundColor(.white)
                                .cornerRadius(100)  // 테두리를 둥글게 하는 건데 수치에 대해서는 잘 모르겠음
                            // 크기의 반으로 해보았는데 둥글게 되지 않음
                            Text(category)
                                .font(.footnote)
                        }
                    }
                }
            }
            
            // 분류
            HStack (spacing: 20) {
                Text("Favorites")
                    .font(.system(size: 24))
                    .bold()
                Text("New")
                    .font(.system(size: 24))
                    .bold()
                    .foregroundColor(.secondary)
                Spacer()
            }
            .padding(.vertical, 24)
            .padding()
            
            // 리스트
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<2) { _ in
                    VStack {
                        VStack (alignment: .leading, spacing: 20) {
                            HStack {
                                Image("photo")
                                    .resizable()
                                    .frame(width: 80,
                                           height: 80)
                                    .cornerRadius(20)
                                Spacer()
                                Button {
                                    print("play")
                                } label: {
                                    Image(systemName: "arrowtriangle.right.fill")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.gray)
                                        .padding(.all, 24)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                }

                            }
                            
                            Text("Singing Sensation")
                                .font(.title)
                                .fontWeight(.heavy)
                            
                            Text("After being enrolled in the Song festival, you will be a rockstar in no time")
                                .foregroundColor(.secondary)
                                .lineLimit(2)
                        }
                        .padding(.horizontal, 24)
                    }
                    .frame(height:230)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(36)
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
