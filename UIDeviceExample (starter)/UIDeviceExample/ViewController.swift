//
//  ViewController.swift
//  UIDeviceExample
//
//  Created by giftbot on 2018. 2. 5..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

/***************************************************
 UIDevice
 - 디바이스 이름 / 모델 / 화면 방향 등
 - OS 이름 / 버전
 - 인터페이스 형식 (phone, pad, tv 등)
 - 배터리 정보
 - 근접 센서 정보
 - 멀티태스킹 지원 여부
 ***************************************************/

final class ViewController: UIViewController {
  
  @IBOutlet private weak var label: UILabel!
  let device = UIDevice.current
  
  @IBAction private func systemVersion() {
    /***************************************************
     Version: Major, Minor (public), Minor (non-public)
     ***************************************************/
    
    print("\n---------- [ System Version ] ----------\n")
    print("System Name:", device.systemName)
    
    let systemVersion = device.systemVersion
    print(systemVersion)
   
    let splitVersion = systemVersion.split(separator: ".").compactMap{ Int($0)}
    print(splitVersion)
    
    if splitVersion.count > 2 {
        label.text = "\(splitVersion[0]).\(splitVersion[1]).\(splitVersion[2])"
    } else {
        label.text = "\(splitVersion[0]).\(splitVersion[1])"
    }
    
  }
  
  @IBAction private func architecture() {
    print("\n---------- [ Architecture ] ----------\n")
    
//    #if (arch(i386) || arch(x86_64)) && os(iOS)
    #if targetEnvironment(simulator)
      print("Simulator")
      label.text = "Simulator"
    #else
      print("Device")
      label.text = "Device"
    #endif
    
    // 1 1 0 1 1 1 1 0 0 0   Simulator
    // 1 1 0 0 0 1 1 0 0 1   Device: iPhoneX
    print("TARGET_OS_MAC : ", TARGET_OS_MAC)
    print("TARGET_OS_IOS : ", TARGET_OS_IOS)
    print("TARGET_CPU_X86 : ", TARGET_CPU_X86)
    print("TARGET_CPU_X86_64 : ", TARGET_CPU_X86_64)
    print("TARGET_OS_SIMULATOR : ", TARGET_OS_SIMULATOR)
    print("TARGET_RT_64_BIT : ", TARGET_RT_64_BIT)
    print("TARGET_RT_LITTLE_ENDIAN :", TARGET_RT_LITTLE_ENDIAN)
    print("TARGET_RT_BIG_ENDIAN :", TARGET_RT_BIG_ENDIAN)
    print("TARGET_CPU_ARM : ", TARGET_CPU_ARM)
    print("TARGET_CPU_ARM64 : ", TARGET_CPU_ARM64)
  }
  
    
    // we need to know this
  @IBAction private func deviceModel() {
    print("\n===============deviceModel========================\n")
    print("name :", device.name)
    print("model :", device.model)
    print("localizedModel :", device.localizedModel)
    print("userInterfaceIdom :", device.userInterfaceIdiom)
    print("orientation :", device.orientation)
    print("isMultitaskSupported :", device.isMultitaskingSupported) // 최신 기기는 항상 true
    
    
    // extension
    print("modelIdentifier :", device.modelIdentifier)
    print("modelName :", device.modelName)
    label.text = "\(device.modelIdentifier): \(device.modelName)"
  }
  
  
  // MARK: - Battery
  
  @IBAction private func battery() {
    /***************************************************
     public enum UIDeviceBatteryState : Int {
       case unknown
       case unplugged // on battery, discharging
       case charging  // plugged in, less than 100%
       case full      // plugged in, at 100%
     }
     ***************************************************/

    print("\n===============Battery Info========================\n")
    label.text = "\(device.batteryState) : \(device.batteryLevel)"
    print("batteryState :", device.batteryState)
    print("batteryLevel :", device.batteryLevel)
    print("isBatteryMonitoringEnabled :", device.isBatteryMonitoringEnabled)
    
    
  }
  
  @IBAction private func batteryMonitoring(_ sender: UIButton) {
    print("\n===============BatteryMonitoring========================\n")

//    device.isBatteryMonitoringEnabled = !device.isBatteryMonitoringEnabled
    device.isBatteryMonitoringEnabled.toggle()
    print(device.isBatteryMonitoringEnabled)
    
    
    if device.isBatteryMonitoringEnabled {
        NotificationCenter.default.addObserver(self, selector: #selector(batteryStateDidChange), name: .UIDeviceBatteryStateDidChange, object: nil)
    } else {
        NotificationCenter.default.removeObserver(self, name: .UIDeviceBatteryStateDidChange, object: nil)
    }
    
  }
  
    @objc func batteryStateDidChange(_ sender: Notification) {
        if let device = sender.object as? UIDevice {
            print("batteryState :", device.batteryState)
            print("batteryLevel :", device.batteryLevel)
        }
    }
    
    
  // MARK: - Proximity State
  
  @IBAction private func proximityMonitoring(_ sender: UIButton) {
    print("\n===============Proximity Sensor========================\n")
    
    // it will allow on and off when object is near camera
    device.isProximityMonitoringEnabled = !device.isProximityMonitoringEnabled
    print("ProximityMonitoring :", device.isProximityMonitoringEnabled)
    
    if device.isProximityMonitoringEnabled {
        NotificationCenter.default.addObserver(self, selector: #selector(proximityStateDidChange(_:)), name: .UIDeviceProximityStateDidChange, object: nil)
    } else {
        NotificationCenter.default.removeObserver(self, name: .UIDeviceProximityStateDidChange, object: nil)
    }
    
  }
  
    @objc func proximityStateDidChange(_ sender: Notification) {
        print(UIDevice.current.proximityState)
        label.text = "\(UIDevice.current.proximityState)"
    }
  
  // MARK: - Orientation Notification
  
  @IBAction private func beginOrientationNotification() {
    /***************************************************
     public enum UIDeviceOrientation : Int {
       case unknown
       case portrait        // Device oriented vertically, home button on the bottom
       case portraitUpsideDown // Device oriented vertically, home button on the top
       case landscapeLeft   // Device oriented horizontally, home button on the right
       case landscapeRight  // Device oriented horizontally, home button on the left
       case faceUp          // Device oriented flat, face up
       case faceDown        // Device oriented flat, face down
     }
     
     UIDeviceOrientation은 프로젝트 설정에서 지정한 방향과 관계없이 기기 방향 변경시마다 이에 해당하는 방향 출력
     ***************************************************/

    print(device.isGeneratingDeviceOrientationNotifications) // 기본적으로 on 상태로 시작
    

    device.beginGeneratingDeviceOrientationNotifications() // 중첩되어 올라감, count 형태
    
    label.text = "\(device.isGeneratingDeviceOrientationNotifications)"
    NotificationCenter.default.addObserver(self, selector: #selector(orientationDidChange(_:)), name: .UIDeviceOrientationDidChange, object: nil)
  }
  
  @objc func orientationDidChange(_ noti: Notification) {
    print("\n===============Orientation Did Change========================\n")
    if let device = noti.object as? UIDevice {
        print("Device Orientation :", device.orientation)
    }
    print("Orientation :", UIApplication.shared.statusBarOrientation)
    
  }
  
    
  @IBAction private func endOrientationNotification() {
    while device.isGeneratingDeviceOrientationNotifications {
        device.endGeneratingDeviceOrientationNotifications()
        print("noti :", device.isGeneratingDeviceOrientationNotifications)
    }
    NotificationCenter.default.removeObserver(self, name: .UIDeviceOrientationDidChange, object: nil)
    }
  }
  
  /***************************************************
   * UIInterfaceOrientation 과 UIDeviceOrientation 의 차이 주의 *
   UIApplication.shared.statusBarOrientation   - statusBar 의 위치 기준
   
   public enum UIInterfaceOrientation : Int {
     case unknown
     case portrait
     case portraitUpsideDown
     case landscapeLeft
     case landscapeRight
   }
   
   UIDeviceOrientation.landscapeRight = UIInterfaceOrientation.landscapeLeft
   UIDeviceOrientation.landscapeLeft = UIInterfaceOrientation.landscapeRight
   
   UIDeviceOrientation : 디바이스 기준
   UIInterfaceOrientation : 컨텐츠 기준
   ***************************************************/
  




// because UIUserInterfaceIdiom is enum type and do not have description with it. So
extension UIUserInterfaceIdiom: CustomStringConvertible {
    public var description: String {
        switch self {
        case .unspecified: return "unspecified"
        case .phone: return "phone"
        case .pad: return "pad"
        case .tv: return "tv"
        case .carPlay: return "carPlay"
            
        }
    }
}

extension UIDeviceOrientation: CustomStringConvertible {
    public var description: String {
        switch self {
        case .unknown: return "unknown"
        case .portrait: return "portrait"
        case .portraitUpsideDown: return "portraitUpsideDown"
        case .landscapeLeft: return "landscapeLeft"
        case .landscapeRight: return "landscapeRight"
        case .faceUp: return "faceUp"
        case .faceDown: return "faceDown"
        }
    }
}

extension UIDeviceBatteryState: CustomStringConvertible {
    public var description: String {
        switch self {
        case .unknown: return "unknown"
        case .unplugged: return "unplugged"
        case .charging: return "charging"
        case .full: return "full"
        }
    }
}

extension UIInterfaceOrientation: CustomStringConvertible {
    public var description: String {
        switch self {
        case .unknown: return "unknown"
        case .portrait: return "portrait"
        case .portraitUpsideDown: return "portraitUpsideDown"
        case .landscapeLeft: return "landscapeLeft"
        case .landscapeRight: return "landscapeRight"
        }
    }
}
