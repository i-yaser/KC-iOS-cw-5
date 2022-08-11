//
//  ContentView.swift
//  myGrocery
//
//  Created by Yasr Alajmi on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Grocery = ["kinder" , "pepsi" , "shani" , "twix-ice" , "Liss" , "eva" , "Maltesers"]
    @State var newitem = ""
    var body: some View {
        VStack{
       
        List(Grocery, id: \.self) { Grocery in
          
            HStack{
            Image(Grocery)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text(Grocery)
            }
            
        }
            
            HStack{
                Button {
                    Grocery.append(newitem)
                } label: {
                    Image(systemName: "plus")
                        .frame(width: 50, height: 50)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                TextField("New Item", text: $newitem)
                Button {
                    Grocery.remove(at: 0)
                } label: {
                    Image(systemName: "minus")
                        .frame(width: 50, height: 50)
                        .background(Color.red)
                        .cornerRadius(10)
                }

            }.padding()
            }
        }
        
        
        
        
        
        }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
