//
//  ContentView.swift
//  TraverItinerary
//
//  Created by Hansub Yoo on 2022/08/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack (alignment: .leading) {
                    HStack {
                        Image(systemName: "line.horizontal.3.decrease")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Spacer()
                        Text("Los Angeles")
                            .font(.system(.headline, design: .rounded))
                        Text("California")
                            .fontWeight(.ultraLight)
                        Spacer()
                        Image("photo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 36, height: 36)
                            .clipShape(Circle())
                    }
                    
                    VStack (alignment: .leading, spacing: 8) {
                        HStack {
                            Text("Hi")
                                .font(.largeTitle)
                            Text("Martin")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                        }
                        Text("Let's Discover a New Adventures")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.indigo)
                                .padding()
                            
                            Text("Search Hotels, Taxi etc...")
                                .fixedSize()
                                .font(.footnote)
                                .padding()
                            Spacer()
                            Divider()
                                .frame(height: 24)
                                .padding()
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable()
                                .frame(width: 8, height: 8)
                                .padding()
                        }
                        .foregroundColor(.secondary.opacity(0.5))
                        .background(.gray.opacity(0.1))
                        .cornerRadius(80)
                        .shadow(radius: 1)
                        .padding()
                    }
                    
                    HStack {
                        VStack {
                            Button(action: {}) {
                                Image(systemName: "airplane")
                                    .foregroundColor(.white)
                                    .padding(.all, 18)
                                    .background(.blue.opacity(0.8))
                                    .cornerRadius(12)
                                    .shadow(radius: 2)
                            }
                            Text("Flights")
                                .font(.footnote)
                                .bold()
                        }
                        Spacer()
                        VStack {
                            Button(action: {}) {
                                Image(systemName: "bed.double.fill")
                                    .foregroundColor(.white)
                                    .padding(.all, 18)
                                    .background(.orange.opacity(0.8))
                                    .cornerRadius(12)
                                    .shadow(radius: 2)
                            }
                            Text("Hotels")
                                .font(.footnote)
                                .bold()
                        }
                        Spacer()
                        VStack {
                            Button(action: {}) {
                                Image(systemName: "location.fill")
                                    .foregroundColor(.white)
                                    .padding(.all, 18)
                                    .background(.orange.opacity(0.8))
                                    .cornerRadius(12)
                                    .shadow(radius: 2)
                            }
                            Text("Places")
                                .font(.footnote)
                                .bold()
                        }
                        Spacer()
                        VStack {
                            Button(action: {}) {
                                Image(systemName: "rectangle.grid.2x2.fill")
                                    .foregroundColor(.white)
                                    .padding(.all, 18)
                                    .background(.orange.opacity(0.8))
                                    .cornerRadius(12)
                                    .shadow(radius: 2)
                            }
                            Text("More")
                                .font(.footnote)
                                .bold()
                        }
                    }
                    .padding()
                    
                    Spacer()
                    
                    HStack {
                        Text("Your")
                            .font(.largeTitle)
                        Text("Trips")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                    }
                    .padding(.vertical)
                    
                    HStack (spacing: 60) {
                        Text("Futured")
                            .bold()
                        Text("Past")
                            .foregroundColor(.secondary)
                    Text("All")
                        .foregroundColor(.secondary)
                    }
                    .padding(.vertical)
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            NavigationLink(destination: ItineraryDetail()) {
                                Image("london")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 270)
                                    .cornerRadius(12)
                            }
                            .buttonStyle(PlainButtonStyle())
                            Image("rome")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 270)
                                .cornerRadius(12)
                        }
                    }
                    .padding(.trailing, -20)
                }
                .padding()
                .foregroundColor(.indigo)
                .edgesIgnoringSafeArea(.bottom)
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        .tint(.indigo)
    }
}

struct ItineraryDetail: View {
    var body: some View {
        VStack {
            Image("london")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 450)
        }
//        .clipShape(Curves(corner: .bottomLeft, radius: 35))
//        .clipShape(Curves(corner: .bottomRight, radius: 35))
//        shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
    }
}

struct Curves: Shape {
    var corner: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath (roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        ItineraryDetail()
    }
}
