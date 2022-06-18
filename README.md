# Xylophone
Simples aplicação com teclas, com cada tecla gera um som do,re,mi,fa

## Motivação
Aprender novos eventos de botões no IOS e utilizar novos recursos

## Feature
- Para capturar um evento assim que é acionado o botão  pode usar o touch dow
- Com esse recurso apliquei opacidade no botão 
- Para acessar sons locais no projeto usei o [AVFoundation](https://developer.apple.com/documentation/avfoundation/audio_playback_recording_and_processing)
- Bundle e objeto que consigo acessar recursos locais da aplicação
- Aprendi casos de uso para ! e o ?
- Com ! estou garantindo que aquela propriedade opcional vai existir, preciso tomar cuidado com essa abordagem, caso não exista o valor pode quebrar aplicativo
- Com ? garanto que aquela propriedade e opcional
- Toda vez que referencio um botão a função recebe automaticamente o selecionado  por sender
- Assim todas propriedades do botão estão instanciadas no sender

```swift

   
    @IBAction func handleKeyPress(_ sender: UIButton) {
        playSound(soundName:sender.currentTitle!)
        sender.alpha = 1
        
    }

  func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    
    }
    


```
