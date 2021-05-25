//
//  ViewController.swift
//  PupUpTest
//
//  Created by Felipe Giampaoli on 21/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var popUPView: PopUpView!
    @IBOutlet private var closeButton: UIButton!
    @IBOutlet private var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUPView.delegate = self
    }
    
    @IBAction
    public func didTapShowPopUpView() {
        popUPView.isHidden = !popUPView.isHidden
    }

}

extension ViewController: PopUpViewDelegate {
    func didTapCloseButton() {
        popUPView.isHidden = !popUPView.isHidden
    }
}

