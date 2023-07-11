//
//  ProfileView.swift
//  Mutuals+
//
//  Created by magistra aptam on 11/07/23.
//

import SwiftUI

extension ProfileView{
    var headerView: some View{
        ZStack(alignment: .bottomLeading){
            Rectangle()
                .foregroundColor(.blue)
                .ignoresSafeArea()
            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 22, height: 16)
                        .offset(x:16, y:12)
                        .foregroundColor(.white)
                        
                }

                Circle()
                    .frame(width: 72)
                .offset(x: 16, y: 24)
            }
            
        }
        .frame(height: 96)
    }
    
    var actionButtons: some View{
        HStack(spacing:12){
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray))
            Button {
                //action
            } label: {
                Text("edit profile")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray))
            }
        }
    }
    
    var userInfo: some View{
        VStack(alignment: .leading,spacing:12){
            VStack(alignment: .leading){
                Text("Magistra Apta")
                    .font(.title2).bold()
                Text("@magistraapta")
                    .foregroundColor(.secondary)
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("this is my bio")
                    .fontWeight(.semibold)
                HStack{
                    HStack{
                        Image(systemName: "balloon")
                        Text("Born 9 August 2002")
                    }
                    HStack{
                        Image(systemName: "mappin")
                        Text("Lombok, Indonesia")
                    }
                    
                }
                .foregroundColor(.secondary)
                
            }
            UserStatsView()
        }
        .padding()
    }
    
    var tweetFilter: some View{
        HStack{
            ForEach(FilterViewModel.allCases, id: \.rawValue){item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .secondary)
                    
                    if selectedFilter == item {
                        Capsule()
                            .frame(height: 3)
                            .foregroundColor(.blue)
                    } else{
                        Capsule()
                            .frame(height: 3)
                            .foregroundColor(.clear)
                        
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut){
                        self.selectedFilter = item
                    }
                }
                
            }
        }
        .overlay(Divider().offset(x:0, y:16))
    }
    
    var tweetView: some View{
        ScrollView{
            LazyVStack{
                ForEach(0...9, id: \.self){ _ in
                    TweetRow()
                        .padding()
                }
            }
        }
    }
}


struct ProfileView: View {
    @State private var selectedFilter: FilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading){
            headerView
            actionButtons
            userInfo
            tweetFilter
            tweetView
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .ignoresSafeArea(edges: .bottom)
    }
}
