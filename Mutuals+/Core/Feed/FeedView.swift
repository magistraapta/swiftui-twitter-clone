//
//  FeedView.swift
//  Mutuals+
//
//  Created by magistra aptam on 11/07/23.
//

import SwiftUI

struct FeedView: View {
    @State var showNewTweet = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach(0...20, id: \.self){ _ in
                        TweetRow()
                        
                    }
                }
                .padding()
            }
            
            Button {
                showNewTweet.toggle()
            } label: {
                ZStack{
                    Circle()
                        .frame(width: 48)
                    Image(systemName: "plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .frame(width: 20)
                }
            }
            .padding()
            .fullScreenCover(isPresented: $showNewTweet) {
                ShowNewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
