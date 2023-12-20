//
//  CoachMarkNextView.swift
//  Instructions
//
//  Created by Bhagwat Singh on 20/12/23.
//  Copyright © 2023 Ephread. All rights reserved.
//
import Foundation

public class CoachMarkNextDefaultView: UIButton , CoachMarkNextView{
    public var nextControl: UIControl? {
        return self
    }
    public override var isHighlighted: Bool {
        didSet {
            bodyBackground.isHighlighted = isHighlighted
        }
    }

    public var background: CoachMarkBodyBackgroundStyle { return bodyBackground }
    public var isStyledByInstructions = true {
        didSet {
            bodyBackground.isHidden = !isStyledByInstructions
        }
    }

    // MARK: Private properties
    private var bodyBackground = CoachMarkBodyBackgroundView()

    // MARK: Initialization
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    public convenience init() {
        self.init(frame: CGRect.zero)

        setTitleColor(InstructionsColor.coachMarkLabel, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 17.0)
        titleLabel?.textAlignment = .center

        bodyBackground.translatesAutoresizingMaskIntoConstraints = false
        bodyBackground.isUserInteractionEnabled = false

        addSubview(bodyBackground)
        sendSubviewToBack(bodyBackground)
        bodyBackground.fillSuperview()

        contentEdgeInsets = UIEdgeInsets(top: 10.0, left: 15.0, bottom: 10.0, right: 15.0)
        sizeToFit()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError(ErrorMessage.Fatal.doesNotSupportNSCoding)
    }
}
