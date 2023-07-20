//
//  OfferPopupView.swift
//  PageUI
//
//  Created by ABC on 02/05/23.
//

import UIKit

class OfferPopupView: UIView {
    
    // MARK: - IBoutlet
    @IBOutlet weak var offerPopupView: view!
    @IBOutlet weak var closeButton: UIButton!
    
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
        let nib = UINib(nibName: "OfferPopupView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
}





