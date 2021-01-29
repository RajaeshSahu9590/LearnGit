//
//  MusicCategory.swift
//  GanaMusicApp
//
//  Created by UTTAM on 29/01/21.
//  Copyright © 2021 UTTAM. All rights reserved.
//

import Foundation
struct MusicCategory {
    var categoryTitle: String = ""
    var songArray: [MusicModel] = [MusicModel]()
    
   static func getArray() -> [MusicCategory] {
    var modelArray = [MusicCategory]()
    
    let hindiAlbum = popularHindi()
    
    let oldAlbum = oldSongs()
    
    modelArray.append(hindiAlbum)
    modelArray.append(oldAlbum)
    modelArray.append(hindiAlbum)
    modelArray.append(oldAlbum)
    
    return modelArray
    }
    
     static func popularHindi() -> MusicCategory
       {
           let kabirSingh = MusicModel(img: "img90", songTitle: "Kabir Singh", description: "Arijit Singh,variaus Artist")
               
               let kedarNath = MusicModel(img: "img100", songTitle: "Kedar Nath", description: "Sushant Singh Rajput,Amit Trivedi")
               
               let bahubali = MusicModel(img: "imgPark", songTitle: "Bahubali", description: "Prabhas,Tamana,prakash jha")
               
               let krish = MusicModel(img: "RHTDM", songTitle: "Krish", description: "HRithik Roshan,kangana Raunawat")
               
               let dhoom = MusicModel(img: "imgDarbaan", songTitle: "Dhoom", description: "Aamir khan,Abhishek Bachchan")
           
               let populerAlbum = MusicCategory(categoryTitle: "Popular Hindi Album", songArray: [kabirSingh,bahubali,krish,dhoom,kedarNath])
           
           return populerAlbum

       }
       
      static func oldSongs() -> MusicCategory {
           let aashiqi = MusicModel(img: "Aashiqi2", songTitle: "Aashiqi2", description: "Shrada kapoor, Arijit singh")
           
           let bandish = MusicModel(img: "bandish", songTitle: "Bandish", description: "Shrada kapoor, Arijit singh")
           
           let msDhoni = MusicModel(img: "msdhoni", songTitle: "MSDhoni", description: "Shrada kapoor, Arijit singh")
           
           let villan = MusicModel(img: "villan", songTitle: "Villan", description: "Shrada kapoor, Arijit singh")
           
           let shorCity = MusicModel(img: "ShorCity", songTitle: "ShorCity", description: "Shrada kapoor, Arijit singh")
           
           let aeDil = MusicModel(img: "AeDil", songTitle: " Ae Dil Hai ", description: "Shrada kapoor, Arijit singh")
           
           let drive = MusicModel(img: "Drive", songTitle: " Drive ", description: "Shrada kapoor, Arijit singh")
           
           let popularSong = MusicCategory(categoryTitle: "Old Songs", songArray: [aashiqi,bandish,msDhoni,villan,shorCity,aeDil,drive])
           
           return popularSong
           
       }
}
