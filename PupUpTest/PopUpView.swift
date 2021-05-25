//
//  PopUpView.swift
//  PupUpTest
//
//  Created by Felipe Giampaoli on 21/05/21.
//

import UIKit

protocol PopUpViewDelegate: AnyObject {
    func didTapCloseButton()
}

@IBDesignable
class PopUpView: UIView {
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    weak var delegate: PopUpViewDelegate?
    
    var view: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    
    public func setup() {
        view = loadFromNib()
        view.frame = bounds
        view.backgroundColor = .gray
    
        addSubview(view)
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        delegate?.didTapCloseButton()
    }
    
    private func loadFromNib() -> UIView {
        let bundle = Bundle(for: PopUpView.self)
        let nib = UINib(nibName: "PopUpView", bundle: bundle)
        if let view = nib.instantiate(withOwner: self, options: nil)[0] as? UIView {
            return view
        }
        
        return UIView()
    }
}
