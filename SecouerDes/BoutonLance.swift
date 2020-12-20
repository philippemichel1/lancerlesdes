//
//  BoutonLance.swift
//  SecouerDes
//
//  Created by Philippe MICHEL on 05/11/2020.
//

import SwiftUI

struct BoutonLance: View {
    @Binding var resultatAletoire1 :String
    @Binding var resultatAletoire2 :String
    @Binding var resultatAletoire3 :String
    let monDe = MecaniqueDe()
    
    
    var body: some View {
        Button(action: {
            demarreLance()
        }, label: {
            Text("Lancer")
        })
        .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .foregroundColor(.black)
        .background(Color.yellow)
        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
    // lance les des
    func demarreLance() {
        JouerSon(nomDuSon: "desquiroulent", typeSon: "mp3")
        var nbTour = 0
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { (timer) in
            if nbTour <= 10 {
                resultatAletoire2 = monDe.faceAleatoire()
                resultatAletoire1 = monDe.faceAleatoire()
                resultatAletoire3 = monDe.faceAleatoire()
                nbTour += 1
            } else {
            timer.invalidate()
            }
        }
    }
    
}

struct BoutonLance_Previews: PreviewProvider {
   static var previews: some View {
    BoutonLance(resultatAletoire1: .constant("1"), resultatAletoire2:.constant("2"), resultatAletoire3: .constant("3")).previewLayout(.sizeThatFits)
    }
}
