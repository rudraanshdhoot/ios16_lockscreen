//
//  ContentView.swift
//  chill
//
//  Created by Rudraansh Dhoot on 09/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack {
                VStack {
                    Image("bg")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .zIndex(100)
                }
                VStack {
                    Spacer()
                        .frame(height: 70)
                    HStack {
                        Text("Thu 9")
                            .font(.title2)
                            .foregroundColor(.white)
                            .bold()
                        Image(systemName: "cloud.fill")
                            .foregroundColor(.white)
                        Text("20")
                            .font(.title2)
                            .foregroundColor(.white)
                            .bold()
                    }
                    Text("5:34")
                        .font(.custom("bruh.ttf", size: 100))
                        .foregroundColor(.white)
                        .zIndex(97)
                    Spacer()
                }
                VStack {
                    Spacer()
                        .frame(height: 168)
                    Image("zbg")
                        .resizable()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .zIndex(98)
                }
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .zIndex(100)
                    .foregroundColor(Color.black.opacity(0.7))
                    .padding(10)
                    .frame(width: UIScreen.main.bounds.width - 40 , height: UIScreen.main.bounds.height / 10)
                    .overlay(
                        HStack {
                            Image("insta_noti")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .padding(.leading, 20)
                            VStack(alignment: .leading) {
                                Text("Instagram")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                                Text("[code.poggies] rdhoott would like to send you a message")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding(.trailing, 20)
                            }
                        }
                )
                
                // noti 2
                
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .zIndex(100)
                    .foregroundColor(Color.black.opacity(0.8))
                    .padding(10)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 10)
                    .padding(.bottom, 70)
                    .overlay(
                        HStack {
                            Image("fb")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .padding(.leading, 20)
                            Spacer()
                            VStack(alignment: .leading) {
                                Text("Facebook")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                                Text("code.poggies would like to be friends with you on facebook.")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding(.trailing, 20)
                            }
                            Spacer()
                        }
                            .padding(.bottom, 70)
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
