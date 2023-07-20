//
//  PopupView.swift
//  PageUI
//
//  Created by ABC on 21/03/23.
//

import UIKit

class PopupView: UIView {
    
    //MARK: - IBOutlet
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var mobileNumberLabel: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
    }
    
    func xibSetup(frame: CGRect)  {
        let view = loadxib()
        view.frame = frame
        addSubview(view)
    }
    
    func  loadxib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "PopupView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
}
