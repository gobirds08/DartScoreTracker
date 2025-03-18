//
//  GameManager.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/18/25.
//

import Foundation

class GameManager<model: Codable>{
    let modelData : model?
    init(){
        let fileURL = URL.documentsDirectory.appendingPathComponent("Game.json")
        if(FileManager.default.fileExists(atPath: fileURL.path)){
            do{
                let content = try Data(contentsOf: fileURL)
                let decoder = JSONDecoder()
                modelData = try decoder.decode(model.self, from: content)
            }catch{
                modelData = nil
            }
            return
        }
        
        let bundle = Bundle.main
        let url = bundle.url(forResource: "Game", withExtension: "json")
        
        guard let url = url else {modelData = nil; return}
        do{
            let content = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            modelData = try decoder.decode(model.self, from: content)
        }catch{
            modelData = nil
        }
    }
    
    func save(game: Game){
         let encoder = JSONEncoder()
         let url = URL.documentsDirectory.appendingPathComponent("Game.json")
         do{
             let data = try encoder.encode(game)
             try data.write(to: url)
         }catch{
             
         }
     }
 }
