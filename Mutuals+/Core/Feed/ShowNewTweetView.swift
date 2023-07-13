//
//  ShowNewTweetView.swift
//  Mutuals+
//
//  Created by magistra aptam on 13/07/23.
//

import SwiftUI

struct ShowNewTweetView: View {
    @State var tweet: String = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Cancel")
                    }
                    Spacer()
                    Button {
                        //some code
                    } label: {
                        ZStack{
                            Capsule()
                                .frame(width: 80, height: 32)
                            Text("Tweet")
                                .foregroundColor(.white).bold()
                        }
                    }
                }
                HStack(alignment: .top){
                    Circle()
                        .frame(width: 48)
                    TextArea($tweet, placehoder: "what's happening?...")
                }
                
                
                Spacer()
                
            }
            .padding()
            
        }
    }
}

struct ShowNewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        ShowNewTweetView()
    }
}
