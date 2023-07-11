//
//  UserStatsView.swift
//  Mutuals+
//
//  Created by magistra aptam on 11/07/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 12){
            HStack(spacing: 4){
                Text("200")
                    .bold()
                Text("Following")
                    .foregroundColor(.secondary)
            }
            
            HStack(spacing: 4){
                Text("500K")
                    .bold()
                Text("followers")
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
