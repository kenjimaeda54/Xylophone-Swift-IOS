//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //https://developer.apple.com/documentation/avfoundation/audio_playback_recording_and_processing
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //evento touch dow: e acionado assim que enconsta no botao
    @IBAction func handleKeyOut(_ sender: UIButton) {
        sender.alpha = 0.7
    }
    
    
    @IBAction func handleKeyPress(_ sender: UIButton) {
        //nill e ausencia de valor, em C ou objetic-C e um ponteiro para um objeto inexistente
        //entao para usar o sender.currentTitle ou garanto que sempre vai possuir a propriedade title nos botoes,entao tipo com ! ou deixo opcional com ? neste caso sempre vai possuir o title.
        playSound(soundName:sender.currentTitle!)
        sender.alpha = 1
        
    }
    
    func playSound(soundName: String) {
        //bundle referencia ao projeto,consigo referenciar aonde esta o arquivo de som
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    
    }
    
    

}

