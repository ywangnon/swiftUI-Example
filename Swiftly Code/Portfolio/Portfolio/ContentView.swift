//
//  ContentView.swift
//  Portfolio
//
//  Created by Hansub Yoo on 2022/08/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                Text("Swiftly Code")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(UIColor.systemIndigo))
                Spacer()
                Text("...")
                    .foregroundColor(Color(UIColor.systemIndigo))
            }
            
            HStack {
                Image("photo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                Spacer()
                VStack (alignment: .leading) {
                    Text("Software Engineer")
                        .foregroundColor(Color.indigo)
                        .font(.headline)
                        .fontWeight(.heavy)
                    
                    ZStack (alignment: .leading) {
                        Rectangle()
                            .frame(width: 110, height: 10)
                            .opacity(0.3)
                            .foregroundColor(.indigo)
                        
                        Rectangle()
                            .frame(width: 100, height: 10)
                            .foregroundColor(.indigo)
                    }
                    .cornerRadius(45)
                    .foregroundColor(.indigo)
                    
                    HStack {
                        Text("10")
                            .foregroundColor(.indigo)
                            .font(.headline)
                            .fontWeight(.heavy)
                        Text("more to level up")
                            .foregroundColor(.secondary)
                    }
                }
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.red)
                    .padding()
                    .background(.red.opacity(0.1))
                    .cornerRadius(12)
            }
            .padding(.vertical, 8)
            
            HStack {
                Button(action: {}) {
                    Text("Java")
                        .foregroundColor(.white)
                        .bold()
                        .padding(.vertical, 10)
                        .frame(width: 90)
                        .padding(.all, 8)
                }
                .background(.indigo)
                .clipShape(Capsule())
                
                Button(action: {}) {
                    Text("JavaScript")
                        .foregroundColor(.indigo)
                        .bold()
                        .padding(.vertical, 10)
                        .frame(width:90)
                        .padding(.all, 8)
                }
                .background(.clear)
                .clipShape(Capsule())
                
                Button(action: {}) {
                    Text("SwiftUI")
                        .foregroundColor(.indigo)
                        .bold()
                        .padding(.vertical, 10)
                        .frame(width:90)
                        .padding(.all, 8)
                }
                .background(.clear)
                .clipShape(Capsule())
            }
            .clipShape(Capsule())
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(.gray.opacity(0.5), lineWidth: 0.5))
            .padding(.top, 10)
            
            HStack (spacing: 15) {
                Image(systemName: "hexagon")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
                    .background(.white)
                    .cornerRadius(100)
                    .foregroundColor(.indigo)
                
                VStack (alignment: .leading, spacing: 12) {
                    Text("Data Types")
                        .foregroundColor(.indigo)
                        .font(.headline)
                    Text("Int, Float, Double, Long, Short")
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                        .font(.subheadline)
                }
                
                Spacer()
                
                Text("B")
                    .foregroundColor(.secondary.opacity(0.5))
            }
            .padding()
            .background(.gray.opacity(0.1))
            .cornerRadius(20)
            
            HStack (spacing: 15) {
                Image(systemName: "square")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
                    .background(.white)
                    .cornerRadius(100)
                    .foregroundColor(.pink.opacity(0.5))
                
                VStack (alignment: .leading, spacing: 12) {
                    Text("Data Types")
                        .foregroundColor(.white)
                        .font(.headline)
                    Text("Int, Float, Double, Long, Short")
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .font(.subheadline)
                }
                
                Spacer()
                
                Text("B")
                    .foregroundColor(.secondary.opacity(0.5))
            }
            .padding()
            .background(.pink.opacity(0.3))
            .cornerRadius(20)
            
            HStack (spacing: 15) {
                Image(systemName: "hexagon")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
                    .background(.white)
                    .cornerRadius(100)
                    .foregroundColor(.indigo)
                
                VStack (alignment: .leading, spacing: 12) {
                    Text("Data Types")
                        .foregroundColor(.indigo)
                        .font(.headline)
                    Text("Int, Float, Double, Long, Short")
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                        .font(.subheadline)
                }
                
                Spacer()
                
                Text("B")
                    .foregroundColor(.secondary.opacity(0.5))
            }
            .padding()
            .background(.gray.opacity(0.1))
            .cornerRadius(20)
            
            VStack (alignment: .leading) {
                Text("Total Score")
                    .foregroundColor(.indigo)
                    .font(.title)
                    .bold()
                
                HStack {
                    VStack (alignment: .leading) {
                        Text("98,700")
                            .foregroundColor(.pink.opacity(0.3))
                            .font(.title)
                            .bold()
                        
                        HStack {
                            Text("+8,540")
                                .foregroundColor(.indigo)
                                .font(.subheadline)
                                .fontWeight(.heavy)
                            
                            Text("for current course")
                                .foregroundColor(.indigo)
                        }
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Test")
                            .font(.system(size: 22))
                            .fontWeight(.heavy)
                            .foregroundColor(.indigo)
                            .padding(.all, 25)
                    }
                    .background(.yellow.opacity(0.5))
                    .cornerRadius(25)
                }
                .padding(.top, 10)
            }
            .padding(.top, 10)
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
