//
//  ContentView.swift
//  MyTop10SongsUnitProjekt
//
//  Created by Dittrich, Jan - Student on 9/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHorizontal = false
    
    var body: some View {
            
            VStack {
                Text("My Top 10 Songs")
                    .font(.system(size: 40, weight: .black))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("(for right now)")
                    .font(.system(size: 15, weight: .light))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Button {
                    isHorizontal.toggle()
                } label: {
                    if isHorizontal==true {
                        Image(systemName:"arrow.up.and.line.horizontal.and.arrow.down")
                            .foregroundColor(.black)
                            .font(.system(size: 30))
                    }
                    else{
                        Image(systemName: "arrow.left.and.line.vertical.and.arrow.right")
                            .foregroundColor(.black)
                            .font(.system(size: 30))
                    }
                }
                
                ScrollView(isHorizontal ? .horizontal : .vertical){
                    if isHorizontal {
                        HStack {
                            CardsView()
                        }
                    } else {
                        VStack {
                            CardsView()
                        }
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct CardsView: View {
    var body: some View {
        Group {
            CardView(number: "#10", cover: "GodsPlan", color1: .black, color2: .white, textColor1: .white, textColor2: .black, songName: "God's Plan", CreatorName: "Drake", why: "Why This Song?", answer: "I've heard it enough to like it\n(somehow)", numberX: -110, songNameX: -75, creatorNameX: -120, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -25,answerY: 220,spotifyURL: "https://open.spotify.com/track/6DCZcSspjsKoFjzjrWoCdn?si=8f8d03ce67ad4355")
            
            CardView(number: "#9", cover: "DontStopMeNow", color1: .passionateR, color2: .electricY, textColor1: .electricY, textColor2: .passionateR, songName: "Don't Stop me Now", CreatorName: "Queen", why: "Why This Song?", answer: "It's Just good vibes", numberX: -120, songNameX: -10, creatorNameX: -115, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -65,answerY: 220,spotifyURL: "https://open.spotify.com/track/5T8EDUDqKcs6OSOwEsfqG7?si=66f5a570146b4ef9")
            
            CardView(number: "#8", cover: "Numb", color1: .faddedB, color2: .conctreteGr, textColor1: .conctreteGr, textColor2: .faddedB, songName: "Numb", CreatorName: "Linkin Park", why: "Why This Song?", answer: "just a banger, it's my childhood\nGerman show intro", numberX: -120, songNameX: -105, creatorNameX: -95, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -10,answerY: 220,spotifyURL: "https://open.spotify.com/track/2nLtzopw4rPReszdYBJU6h?si=3e4f7049a950427c")
            
            CardView(number: "#7", cover: "Paranoid", color1: .acidG, color2: .bruisedP, textColor1: .bruisedP, textColor2: .acidG, songName: "Paranoid", CreatorName: "Black Sabbath", why: "Why This Song?", answer: "Like it a lot, mostly though        \nsocial media", numberX: -120, songNameX: -90, creatorNameX: -78, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -10,answerY: 220,spotifyURL: "https://open.spotify.com/track/3Jnxngdff0lVu2rza1GVx6?si=7ac2fa8cebbc4ce0")
            
            CardView(number: "#6 ", cover: "Airwaves", color1: .midnightB, color2: .streetlightA, textColor1: .streetlightA, textColor2: .midnightB, songName: "Airwaves", CreatorName: "Pashanim          ", why: "Why This Song?", answer: "The Lyrics are just good, same  \nfor the vibe", numberX: -120, songNameX: -90, creatorNameX: -78, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -10,answerY: 220,spotifyURL: "https://open.spotify.com/track/5CqkgDH8QZjSqqI3HmYxDD?si=4f3ae0d9a4734b6f")
            
            CardView(number: "#5 ", cover: "Cities", color1: .sunsetO, color2: .electricCy, textColor1: .electricCy, textColor2: .sunsetO, songName: "Cities       ", CreatorName: "Throttle              ", why: "Why This Song?", answer: "Memories. A lot, mostly             \nthrough Rocket League", numberX: -120, songNameX: -90, creatorNameX: -78, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -10,answerY: 220,spotifyURL: "https://open.spotify.com/track/6t67COokESOCeqHkMNroSu?si=365688a168e54752")
            
            CardView(number: "#4 ", cover: "CloseEyes", color1: .neonMa, color2: .asphaltBl, textColor1: .asphaltBl, textColor2: .neonMa, songName: "Close Eyes", CreatorName: "DVRST              ", why: "Why This Song?", answer: "It's perfect.Not to much phonk\nor too less of it.", numberX: -120, songNameX: -76, creatorNameX: -78, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -10,answerY: 220,spotifyURL: "https://open.spotify.com/track/3CLSHJv5aUROAN2vfOyCOh?si=c3e8260eb0b34e5c")
            
            CardView(number: "#3", cover: "Drive", color1: .deepIndi, color2: .dashboardGold, textColor1: .dashboardGold, textColor2: .deepIndi, songName: "Drive         ", CreatorName: "Ed Sheeran  ", why: "Why This Song?", answer: "F1 - The Movie.                              \nAbsolute Cinema", numberX: -120, songNameX: -76, creatorNameX: -78, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -10,answerY: 220,spotifyURL: "https://open.spotify.com/track/0iIcuwia47B5bzjVpyUwyI?si=e4c341cff52d4234")
            
            CardView(number: "#2", cover: "Fighters", color1: .charcoalGr, color2: .fieryOrange, textColor1: .fieryOrange, textColor2: .charcoalGr, songName: "Fighters   ", CreatorName: "Conro             ", why: "Why This Song?", answer: "I have only good memories       \nand vibes for this song", numberX: -120, songNameX: -76, creatorNameX: -78, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -10,answerY: 220,spotifyURL: "https://open.spotify.com/track/1eYxa4UQo3ElMrX5n5J3CF?si=fab082995c7d483e")
            
            CardView(number: "#1", cover: "WhereUAre", color1: .twilightPurple, color2: .sunsetGold, textColor1: .sunsetGold, textColor2: .twilightPurple, songName: "     Where U Are", CreatorName: "Throttle           ", why: "Why This Song?", answer: "This was my favourite song in    \n2018 and throughout the years,\nit couldn't be reached by\nany other song.", numberX: -120, songNameX: -76, creatorNameX: -78, numberY: -300, songNameY: -260, creatorNameY: -225, whyX: -75, whyY: 180, answerX: -10,answerY: 240,spotifyURL: "https://open.spotify.com/track/31eOi2Kn9rhdU2Ss1eAPrq?si=b9152899ccee4bd7")
        }
    }
}
