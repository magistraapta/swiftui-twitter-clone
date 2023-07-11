//
//  SideMenu.swift
//  Mutuals+
//
//  Created by magistra aptam on 11/07/23.
//

import SwiftUI

extension SideMenu{
    var sideMenuNavigation: some View {
        VStack(spacing: 24){
            Button {
                //some action
            } label: {
                HStack(spacing: 16){
                    Image(systemName: "person")
                    Text("Profile")
                        .bold()
                }
            }
            Button {
                //some action
            } label: {
                HStack(spacing: 16){
                    Image(systemName: "list.bullet")
                    Text("Profile")
                        .bold()
                }
            }
            Button {
                //some action
            } label: {
                HStack(spacing: 16){
                    Image(systemName: "bookmark")
                    Text("Profile")
                        .bold()
                }
            }
            Button {
                //some action
            } label: {
                HStack(spacing: 16){
                    Image(systemName: "logout")
                    Text("Profile")
                        .bold()
                }
            }

        }
        .foregroundColor(.black)
    }
}

struct SideMenu: View {
    var body: some View {
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
            
            sideMenuNavigation
        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}
