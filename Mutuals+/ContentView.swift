//
//  ContentView.swift
//  Mutuals+
//
//  Created by magistra aptam on 08/07/23.
//

import SwiftUI


struct ContentView: View {
    @State private var showMenu = false
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading){
                MainTabView()
                    
                
                if showMenu == true{
                    ZStack{
                        Color(.black).opacity(0.25)
                            .ignoresSafeArea()
                    }
                    .onTapGesture {
                        withAnimation (.easeInOut){
                            showMenu = false
                        }
                    }
                }
                SideMenu()
                    .frame(width: 300)
                    .offset(x: showMenu ? 0 : -300, y: 0)
                    .background(showMenu ? Color.white : Color.clear)
            }
            .navigationTitle("home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(showMenu)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        withAnimation(.easeInOut) {
                            showMenu.toggle()
                        }
                    } label: {
                        Circle()
                            .frame(width: 32)
                    }
                }
            }
            .onAppear{
                showMenu = false
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
