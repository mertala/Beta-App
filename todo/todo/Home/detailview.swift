



import SwiftUI

struct Detail : View {
    var body : some View{
        
        VStack{
            
            Image("46")
                .resizable()
                .renderingMode(.original)
                .frame(width: 400, height: 400)
    
                VStack{
                    Text("BT-234521").font(.headline)
                      Divider()
                  
                    HStack{
                   Spacer()
                        VStack {
                                Text("MANKENİN BOYU: 177 cm. ")
                                Text("Dirsek altına kadar uzanan balon kollu bisiklet yakadır. ").font(.body)
                                Text("kısa elbise. Büzgülü, beli fiyonklu")
                                Text("Kumaş kodu - #201055")
                            Text("Tasarımcı: MERT ALA")
                    }
                }
            }
        }
    }
}

