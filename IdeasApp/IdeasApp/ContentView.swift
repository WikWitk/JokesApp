//
//  ContentView.swift
//  IdeasApp
//
//  Created by Wiktor Witkowski on 14/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var ideasVM = IdeasVM()
    
    var body: some View {
        
        
        
        NavigationView{
            
            List(ideasVM.jokes){ element in
                
                Text(element.joke)
                
                
            }.toolbar{
                Button(action: addJoke){
                    Text("Get New Joke")
                }
            }
            
            .navigationTitle("Jokes App")
            
        }
    }
    func addJoke(){
//        ideasVM.getIdeas(count: 1)
    }
}

#Preview {
    ContentView()
}
