import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player:AVAudioPlayer=AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            let audiopath=Bundle.main.path(forResource: "song", ofType: "mp3")
            try player=AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!) as URL)
        }catch{
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func playb(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pauseb(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func replayb(_ sender: Any) {
        player.stop()
        player.play()
        player.currentTime=0
        
    }
}
