//
//  ContentView.swift
//  WelcomScreen
//
//  Created by Hansub Yoo on 2022/08/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("photo")
                .resizable()    // 화면에 이미지를 맞춤
                .aspectRatio(contentMode: .fill)    // 비율 유지 + 꽉 채움. 화면이 작으면 잘림
                .edgesIgnoringSafeArea(.all)    // safeArea 무시
            
            Rectangle()
                .foregroundColor(.clear)
            // 그라디언트 색 설정
                .background(LinearGradient(gradient: Gradient(colors: [.clear,.black]), startPoint: .bottom, endPoint: .top))
                .edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 20) {
                Text("SLEEK")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()    // 빈 칸
                VStack {
                    Text("Be Classy")
                        .font(.system(size: 30, weight: .heavy, design: .monospaced))
                    Text("Be Stylish")
                        .font(.system(size: 30, weight: .heavy, design: .monospaced))
                    Text("Be Authentic")
                        .font(.system(size: 30, weight: .heavy, design: .monospaced))
                }.padding()
                
                Text("Check out the trendy apparel and put together the perfect outfit.")
                    .lineLimit(2)   // 보이는 줄 제한
                    .multilineTextAlignment(.center)    // 여러줄일때 정렬 방식
                
                Button {
                    
                } label: {
                    Text("Join the Cult")
                        .padding()
                }.frame(width: 300)
                    .background(Color.black)
            }.frame(width: UIScreen.main.bounds.width - 40)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}
