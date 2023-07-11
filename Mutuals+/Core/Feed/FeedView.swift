//
//  FeedView.swift
//  Mutuals+
//
//  Created by magistra aptam on 11/07/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0...20, id: \.self){ _ in
                    TweetRow()
                    
                }
            }
            .padding()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
