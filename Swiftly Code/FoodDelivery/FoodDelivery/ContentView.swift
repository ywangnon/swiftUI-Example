//
//  ContentView.swift
//  FoodDelivery
//
//  Created by Hansub Yoo on 2022/08/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack (alignment: .leading) {
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.secondary)
                        .clipShape(Circle())
                        .shadow(radius: 8)
                }
                Text("Food Bazaar")
                    .font(.title)
                    .foregroundColor(.secondary)
                Text("26 Results")
                    .font(.title)
                    .foregroundColor(.primary)
                
                ScrollView(.vertical, showsIndicators: false) {
                    HStack(spacing: 20) {
                        FoodItem()
                        FoodItem()
                    }
                    HStack(spacing: 20) {
                        FoodItem()
                        FoodItem()
                    }
                    HStack(spacing: 20) {
                        FoodItem()
                        FoodItem()
                    }
                    HStack(spacing: 20) {
                        FoodItem()
                        FoodItem()
                    }
                }
            }
            .padding()
            .edgesIgnoringSafeArea(.bottom)
            
            Button(action: {}) {
                Image(systemName: "cart")
                    .resizable()
                    .frame(width: 12,
                           height: 12)
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
                Text("4 items")
                    .foregroundColor(.white)
                    .padding(.horizontal)
            }
            .background(Color.black.opacity(0.8))
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity(0.8),
                    radius: 20,
                    x: 0,
                    y: 20)
        }
    }
}

struct FoodItem: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(systemName: "flame.fill")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.red)
                Text("Very Hot")
                    .font(.footnote)
                    .foregroundColor(.primary)
            }
            Image("food")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
            Text("Classic")
                .font(.headline)
            Text("Platter")
                .foregroundColor(.secondary)
                .font(.subheadline)
                .padding(.bottom, 12)
            Text("$17.99")
                .font(.title)
        }
        .frame(width: 160,
               height: 250)
        .background(Color.secondary.opacity(0.3))
        .cornerRadius(12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
