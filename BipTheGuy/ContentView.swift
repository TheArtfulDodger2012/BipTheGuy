//
//  ContentView.swift
//  BipTheGuy
//
//  Created by Ron Lane on 3/31/24.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        VStack {
            Spacer()
            Image("clown")
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    playSound(soundName: "punchSound")
                }
            Spacer()
            
            Button(action: {
                
            }
            , label: {
                Label("Photo Library", systemImage: "photo.fill.on.rectangle.fill")
            })
        }
        .padding()
    }
    
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else { return }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("ERROR: \(error.localizedDescription) creating audioPlayer.")
        }
    }
}

#Preview {
    ContentView()
}
