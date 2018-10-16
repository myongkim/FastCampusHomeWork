//
//  ViewController.swift
//  ScrollViewExample
//
//  Created by giftbot on 2018. 6. 18..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit


final class ViewController: UIViewController {

  // MARK: Properties
  
  @IBOutlet private weak var scrollView: UIScrollView!
  @IBOutlet private weak var imageView: UIImageView!
    private var zoomScale: CGFloat = 1 {
        didSet {
            print("Current Zoom Scale :", String(format: "%.2f", zoomScale))//"%.2f" is a only show two decimal place.
             scrollView.setZoomScale(zoomScale, animated: true)
            
            print("ImageView frame: ",imageView.frame)
            print("ImageView Boudns: ",imageView.bounds)
            
            
        }
    }
  
  // MARK: LifeCycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    scrollView.delegate = self
    updateScrollViewZoomScale()
  }
  
  private func updateScrollViewZoomScale() {
    let widthScale = view.bounds.width / imageView.bounds.width
    let heightScale = view.bounds.height / imageView.bounds.height
    let minScale = min(widthScale, heightScale) // 작은 놈을 선택해서 민 스캐일에 넣는것
    
    scrollView.minimumZoomScale = minScale
    scrollView.maximumZoomScale = 3
    scrollView.zoomScale = minScale
    
    
    
    
  }
  
  // MARK: Action Handler
  
  @IBAction private func fitToWidth(_ sender: Any) {
    print("\n---------- [ fitToWidth ] ----------")
    
//    let widthScale = view.bounds.width / imageView.bounds.width
//    let heightScale = view.bounds.height / imageView.bounds.height
//    let minScale = min(widthScale, heightScale)
//
//    zoomScale = minScale
    updateScrollViewZoomScale()
//    zoomScale = scrollView.frame.width / imageView.bounds.width
  }
  
  @IBAction private func scaleDouble(_ sender: Any) {
    print("\n---------- [ scaleDouble ] ----------")
    
//    scrollView.setZoomScale(zoomScale * 2, animated: true)
//    zoomScale = scrollView.zoomScale
    zoomScale *= 2
    }
    
  
  @IBAction private func moveContentToRight(_ sender: Any) {
    print("\n---------- [ moveContentToRight ] ----------")
    
    let newPosition = CGPoint(x: scrollView.contentOffset.x + 150, y: scrollView.contentOffset.y + 100)
    scrollView.setContentOffset(newPosition, animated: true)
    
   
  }
}

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
        
    }
}
