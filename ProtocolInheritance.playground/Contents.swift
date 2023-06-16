
//protocol inheritance
//Use of protocol to achive multiple inheritance
//mutiple inheritance means one child class have two or more than two parent class
//protocol also used to achive the abtraction


//created Playable protocol which have only one function play()
protocol Playable{
  func play()
}

//created Recordable protocol which have only one function record()
protocol Recordable{
  func record()
}

//created AudioPlayer protocol which have only one function pause()
// It inherits Playable and Recordable protocol
protocol AudioPlayer: Playable, Recordable{
  func pause()
}

//created the MusicPlayer class which inherit AudioPlayer Protocol and implements all protocols methods
class MusicPlayer: AudioPlayer{
  func play(){
    print("Music is playing...")
  }

  func record(){
    print("Recording music...")
  }

  func pause(){
    print("Music is pause")
  }
}

//created VideoPlayer class by inheriting Playable and Recordable protocol
class VideoPlayer: Playable, Recordable{
    
//This is the method of the Playable
  func play(){
    print("Video is playing...")
  }
    
//This is the method of Recordable
  func record(){
    print("Video is recording...")
  }
}

let musicPlayer = MusicPlayer()
let videoPlayer = VideoPlayer()

musicPlayer.play()
musicPlayer.record()
musicPlayer.pause()

videoPlayer.play()
videoPlayer.record()

/*output
 Music is playing...
 Recording music...
 Music is pause
 Video is playing...
 Video is recording...
 */
