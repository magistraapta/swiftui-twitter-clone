//
//  SideMenu.swift
//  Mutuals+
//
//  Created by magistra aptam on 11/07/23.
//

import SwiftUI

extension SideMenu{
    var sideMenuNavigation: some View {
        VStack(alignment:.leading, spacing: 32){
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){ item in
                HStack(spacing: 12){
                    Image(systemName: item.imagName)
                    Text(item.title)
                    Spacer()
                }
            }
            
        }
    }
}

struct SideMenu: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48)
                VStack(alignment: .leading, spacing: 4){
                    Text("Magistra")
                        .font(.title2).bold()
                    Text("@magistraapta")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            sideMenuNavigation
                .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}
