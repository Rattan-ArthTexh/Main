import UIKit

// swift port of stackoverflow answer
// http://stackoverflow.com/a/31301238/2048130
extension CGFloat {
  /** Degrees to Radian **/
  var degrees: CGFloat {
    return self * (180.0 / .pi)
  }

  /** Radians to Degrees **/
  var radians: CGFloat {
    return self / 180.0 * .pi
  }
}



func drawText(on layer: CALayer, text: NSAttributedString, frame: CGRect) -> CATextLayer {
  let textLayer = CATextLayer()
  textLayer.frame = frame
  textLayer.string = text
    textLayer.alignmentMode = CATextLayerAlignmentMode.center
  textLayer.contentsScale = UIScreen.main.scale
  return textLayer
}
