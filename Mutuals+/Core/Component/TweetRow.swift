//
//  TweetRow.swift
//  Mutuals+
//
//  Created by magistra aptam on 11/07/23.
//

import SwiftUI

struct TweetRow: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56)
                .foregroundColor(.blue)
                VStack(alignment: .leading, spacing: 4){
                    HStack {
                        //username
                        Text("Magistra")
                            .fontWeight(.bold)
                        //account name
                        Text("@magistraapta")
                            .foregroundColor(.secondary)
                        //tweet posted date
                        Text("2h")
                            .foregroundColor(.secondary)
                    }
                    // tweet content
                    Text("Just setting up my tweet. I will be CEO of Twitter one day")
                    //tweet action
                    HStack{
                        Button {
                            //action goes here
                        } label: {
                            Image(systemName: "bubble.left")
                                .font(.subheadline)
                        }
                        Spacer()
                        Button {
                            //action goes here
                        } label: {
                            Image(systemName: "arrow.2.squarepath")
                                .font(.subheadline)
                        }
                        Spacer()
                        Button {
                            //action goes here
                        } label: {
                            Image(systemName: "heart")
                                .font(.subheadline)
                        }
                        Spacer()
                        Button {
                            //action goes here
                        } label: {
                            Image(systemName: "bookmark")
                                .font(.subheadline)
                        }

                    }
                    .padding(.vertical)
                    .foregroundColor(.gray)
                   
                }
            }
            
            Divider()
        }
    }
}

struct TweetRow_Previews: PreviewProvider {
    static var previews: some View {
        TweetRow()
    }
}
