// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class Png105_View: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 380, height: 380)
        public static let backgroundColor = UIColor.clear
    }

    public var png105: UIImageView!

    public override var intrinsicContentSize: CGSize {
        return Defaults.size
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = Defaults.backgroundColor
        clipsToBounds = false
        createViews()
        addSubviews()
        //scale(to: frame.size)
    }

    /// Scales `self` and its subviews to `size`.
    ///
    /// - Parameter size: The size `self` is scaled to.
    ///
    /// UIKit specifies: "In iOS 8.0 and later, the transform property does not affect Auto Layout. Auto layout
    /// calculates a view's alignment rectangle based on its untransformed frame."
    ///
    /// see: https://developer.apple.com/documentation/uikit/uiview/1622459-transform
    ///
    /// If there are any constraints in IB affecting the frame of `self`, this method will have consequences on
    /// layout / rendering. To properly scale an animation, you will have to position the view manually.
    public func scale(to size: CGSize) {
        let x = size.width / Defaults.size.width
        let y = size.height / Defaults.size.height
        transform = CGAffineTransform(scaleX: x, y: y)
    }

    private func createViews() {
        CATransaction.suppressAnimations {
            createPng105()
        }
    }

    private func createPng105() {
        png105 = UIImageView(frame: CGRect(x: 196, y: 369, width: 168, height: 242))
        png105.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        png105.layer.shadowOffset = CGSize(width: 0, height: 0)
        png105.layer.shadowColor = UIColor.clear.cgColor
        png105.layer.shadowOpacity = 1
        png105.layer.position = CGPoint(x: 196, y: 369)
        png105.layer.bounds = CGRect(x: 0, y: 0, width: 168, height: 242)
        png105.layer.masksToBounds = false
        png105.image = #imageLiteral(resourceName: "png105")
        png105.layer.contentsGravity = .resize
    }

    private func addSubviews() {
        addSubview(png105)
    }
}
