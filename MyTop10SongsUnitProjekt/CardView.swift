//
//  CardView.swift
//  MyTop10SongsUnitProjekt
//
//  Created by Dittrich, Jan - Student on 9/8/25.
//

import SwiftUI

struct CardView: View {
    
    var number : String
    var cover : String
    var color1 : Color
    var color2 : Color
    var textColor1 : Color
    var textColor2 : Color
    var songName : String
    var CreatorName : String
    var why : String
    var answer : String
    var numberX : CGFloat
    var songNameX: CGFloat
    var creatorNameX : CGFloat
    var numberY : CGFloat
    var songNameY: CGFloat
    var creatorNameY : CGFloat
    var whyX : CGFloat
    var whyY : CGFloat
    var answerX : CGFloat
    var answerY : CGFloat
    var spotifyURL: String
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        colors: [color1, color2],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 360,height: 700)
            
            Text(number)
                .font(.system(size: 45, weight: .bold))
                .foregroundColor(textColor1)
                .offset(x: numberX ,y: numberY)
            
            Text(songName)
                .font(.system(size: 35, weight: .light))
                .foregroundColor(textColor1)
                .offset(x: songNameX,y: songNameY)
            
            Text(CreatorName)
                .font(.system(size: 25, weight: .light))
                .foregroundColor(textColor1)
                .offset(x: creatorNameX,y: creatorNameY)
            
            Link(destination: URL(string: spotifyURL)!) {
                Image(cover)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: 310, height: 310)
            }
            
            Text(why)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(textColor2)
                .offset(x: whyX, y: whyY)
            
            Text(answer)
                .font(.system(size: 20, design: .serif))
                .foregroundColor(textColor2)
                .offset(x: answerX, y: answerY)
            
        }
    }
}

#Preview {
    CardView(number: "#10", cover: "GodsPlan", color1: .black, color2: .white, textColor1: .white, textColor2: .black, songName: "God's Plan", CreatorName: "Drake", why: "Why This Song?", answer: "I've heard it enough to like it\n(somehow)", numberX: -110, songNameX: -75, creatorNameX: -120, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -25,answerY: 220,spotifyURL: "https://open.spotify.com/track/6DCZcSspjsKoFjzhevrjNN")
}
