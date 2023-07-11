//
//  ExploreView.swift
//  Mutuals+
//
//  Created by magistra aptam on 11/07/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    LazyVStack{
                        ForEach(0...20, id: \.self){_ in
                            NavigationLink {
                                ProfileView()
                            } label: {
                                UserRow()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
