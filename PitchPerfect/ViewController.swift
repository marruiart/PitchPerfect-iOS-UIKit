//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Marina on 11/3/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeButtonState(stopRecordingButton, false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    @IBAction func recordAudio(_ sender: Any) {
        changeRecordingState("Recording in Progress", true, false)
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        changeRecordingState("Tap to Record", false, true)
    }
    
    private func changeRecordingState(
        _ recordingMessage: String,
        _ showStopButton: Bool,
        _ showRecordButton: Bool) {
            recordingLabel.text = recordingMessage
            changeButtonState(stopRecordingButton, showStopButton)
            changeButtonState(recordButton, showRecordButton)
    }
    
    private func changeButtonState(_ button: UIButton, _ isEnabled: Bool) {
        button.isEnabled = isEnabled
    }
}

