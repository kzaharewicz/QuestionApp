//
//  ContentView.swift
//  QuestionApp
//
//  Created by Scholar on 7/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack() {
                Color(hue: 0.651, saturation: 1.0, brightness: 0.90)
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 20) {
                    HStack(alignment: .center, spacing: 20) {
                        Text("🎧🎶")
                            .font(.title)
                        Text("Music Quiz!")
                            .font(.title)
                            .foregroundColor(Color.black)
                        Text("🎶🎧")
                            .font(.largeTitle)
                    }
                    Text("Ready to play? Click here!")
                        .font(.title)
                        .foregroundColor(Color.black)
                    Text("⬇️⬇️⬇️")
                        .font(.title)
                    
                    NavigationLink(destination: Question1().navigationBarBackButtonHidden(true)) {
                        Text("🕹️")
                            .font(.largeTitle)
                    }
                }
                .padding()
                .background(Rectangle())
                .foregroundColor(Color(hue: 0.339, saturation: 0.0, brightness: 0.88))
                .cornerRadius(15)
                .padding()
            }
            }
        }
    }
    
    #Preview {
        ContentView()
    }
