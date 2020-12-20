//
//  ContentView.swift
//  SecouerDes
//
//  Created by Philippe MICHEL on 05/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var de1:String = "1"
    @State var de2:String = "3"
    @State var de3:String = "6"
    var hauteur:CGFloat = 100
    var largeur:CGFloat = 100
    
    var body: some View {
        VStack {
            Text("Lancer de Dés")
                .foregroundColor(.red)
                .shadow(color: .yellow, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0.5, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            HStack {
                
                Image(de1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: largeur, height: hauteur, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Image(de2)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: largeur, height: hauteur, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image(de3)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: largeur, height: hauteur, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
                .padding()
            BoutonLance(resultatAletoire1: $de1, resultatAletoire2: $de2, resultatAletoire3: $de3)
            
        }
        
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: [Color("MonVert"), Color("MonJaune")]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(de1: "1", de2: "2", de3: "3", hauteur: 60, largeur: 60)
    }
}
