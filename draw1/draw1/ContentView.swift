//
//  ContentView.swift
//  draw1
//
//  Created by User02 on 2020/9/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Circle().size(CGSize(width: 90.0, height: 90.0)).offset(x:5)
            Circle().size(CGSize(width: 90.0, height: 90.0)).offset(x:155)
            
           
            Path { (path) in
                path.addArc(center: CGPoint(x:125,y:130), radius: 70, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
            }.fill(Color.black)
            Path{(path) in
                path.move(to: CGPoint(x:77,y:140))
                path.addQuadCurve(to: CGPoint(x:87,y:78), control: CGPoint(x:60,y:90))
                path.addQuadCurve(to: CGPoint(x:122,y:90), control: CGPoint(x:100,y:69))
                path.addQuadCurve(to: CGPoint(x:171,y:91), control: CGPoint(x:150,y:55))
                path.addQuadCurve(to: CGPoint(x:169,y:144), control: CGPoint(x:175,y:100))
                path.addQuadCurve(to: CGPoint(x:159,y:193), control: CGPoint(x:237,y:130))
                path.addQuadCurve(to: CGPoint(x:90,y:193), control: CGPoint(x:127,y:210))
                path.addQuadCurve(to: CGPoint(x:77,y:140), control: CGPoint(x:15,y:130))
                
                
            }.fill(Color.yellow)
            Path{(path) in
                path.move(to: CGPoint(x:103,y:100))
                path.addQuadCurve(to: CGPoint(x:105,y:142), control: CGPoint(x:90,y:122))
                path.addQuadCurve(to: CGPoint(x:103,y:100), control: CGPoint(x:116,y:122))
                path.move(to: CGPoint(x:140,y:100))
                path.addQuadCurve(to: CGPoint(x:140,y:142), control: CGPoint(x:123,y:122))
                path.addQuadCurve(to: CGPoint(x:140,y:100), control: CGPoint(x:152,y:122))
                path.move(to: CGPoint(x:103,y:150))
                path.addQuadCurve(to: CGPoint(x:104,y:167), control: CGPoint(x:98,y:161))
                path.addQuadCurve(to: CGPoint(x:134,y:167), control: CGPoint(x:113,y:169))
                path.addQuadCurve(to: CGPoint(x:134,y:151), control: CGPoint(x:139,y:158))
                path.addQuadCurve(to: CGPoint(x:103,y:150), control: CGPoint(x:124,y:147))
                
            }
            Path{(path) in
                path.move(to: CGPoint(x:96,y:147))
                path.addQuadCurve(to: CGPoint(x:148,y:148), control: CGPoint(x:123,y:131))
                path.move(to: CGPoint(x:69,y:150))
                path.addQuadCurve(to: CGPoint(x:176,y:150), control: CGPoint(x:118,y:210))
                
            }.stroke()
            Text("mickey mouse")
            
        }.background(Color.blue)
        
    }
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}
}
