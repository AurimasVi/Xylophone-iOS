import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        var noteKey: String = sender.currentTitle!
        playSound(noteKey: noteKey)
    }
    
    func playSound(noteKey: String) {
        let url = Bundle.main.url(forResource: noteKey, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
