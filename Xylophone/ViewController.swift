import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        var noteKey: String = sender.currentTitle!
        sender.alpha = 0.5
        playSound(noteKey: noteKey)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
            sender.alpha = 1.0
            
            
        }
        
        func playSound(noteKey: String) {
            let url = Bundle.main.url(forResource: noteKey, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
        }
        
    }
}
