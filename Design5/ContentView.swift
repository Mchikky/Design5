//
//  ContentView.swift
//  Design5
//
//  Created by Chikaodili Deng on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = "Select a suit"
    
    
    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 30) {
                Button {
                    text = "♣️"
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius:20)
                            .fill(.black)
                            .frame(width:120, height: 30)
                        HStack {
                            Image(systemName: "suit.club.fill")
                                .imageScale(.large)
                                .foregroundColor(.white)
                            Text("club")
                                .foregroundColor(.white)
                        }
                    }
                }
                Button {
                    text = "♠️"
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius:20)
                            .fill(.black)
                            .frame(width:120, height: 30)
                        HStack {
                            Image(systemName: "suit.spade.fill")
                                .imageScale(.large)
                                .foregroundColor(.white)
                            Text("spade")
                                .foregroundColor(.white)
                        }
                    }
                }
                
            }
            Spacer()
            Text(text)
                .foregroundColor(.gray)
                .font(.title2)
            Spacer()
            HStack(spacing: 30){
                Button {
                    text = "♦️"
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius:20)
                            .fill(.red)
                            .frame(width:120, height: 30)
                        HStack {
                            Image(systemName: "suit.diamond.fill")
                                .imageScale(.large)
                                .foregroundColor(.white)
                            Text("diamond")
                                .foregroundColor(.white)
                        }
                        
                    }
                }
                Button {
                    text = "❤️"
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius:20)
                            .fill(.red)
                            .frame(width:120, height: 30)
                        HStack {
                            Image(systemName: "heart.fill")
                                .imageScale(.large)
                                .foregroundColor(.white)
                            Text("heart")
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            Spacer()
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
