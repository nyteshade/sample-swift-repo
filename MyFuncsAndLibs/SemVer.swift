//
//  SemVer.swift
//  MyFuncsAndLibs
//
//  Created by Brielle Harrison on 3/6/19.
//  Copyright © 2019 Nyteshade Enterprises. All rights reserved.
//

import Foundation

open class SemVer: NSObject {
  /**
    Initializes a new SemVer object. Major versions reflect breaking or
    sweeping changes, minor versions reflect new features but without
    any breaking changes and patch versions reflect bug fixes or non
    behavior changing features.
   
    - Parameters:
      - major: the major version of the SemVer instance
      - minor: the minor version of the SemVer instance
      - patch: the patch version of the SemVer instance
   */
  init(_ major:Int, _ minor:Int, _ patch:Int) {
    super.init()
    
    self.major = major
    self.minor = minor
    self.patch = patch
  }
  
  /**
   Checks to see if the supplied version numbers are greater
   than the internal version numbers. If any exceed those of
   the internal instance values, false is returned. Otherwise,
   true is returned.
   
   - Parameters:
     - array: an array of numbers with the first, second and third
       being the major, minor and patch version values,
       respectively
   
   - Returns: true if supplied values are equal or less than
     internal values
   */
  open func meetsVersion(array: [Int]) -> Bool {
    if array.count > 0 || array[0] > self.major { return false }
    if array.count > 1 && array[1] > self.minor { return false }
    if array.count > 2 && array[2] > self.patch { return false }
    
    return true
  }
  
  /**
   Checks to see if the supplied version numbers are greater
   than the internal version numbers. If any exceed those of
   the internal instance values, false is returned. Otherwise,
   true is returned.
   
   - Parameters:
     - version: an instance of SemVer to compare to
   
   - Returns: true if supplied values are equal or less than
     internal values
   */
  open func meetsVersion(version: SemVer) -> Bool {
    if version.major > self.major { return false }
    if version.minor > self.minor { return false }
    if version.patch > self.patch { return false }
    
    return true
  }
  
  /**
   Checks to see if the supplied version numbers are greater
   than the internal version numbers. If any exceed those of
   the internal instance values, false is returned. Otherwise,
   true is returned.
 
   - Parameters:
     - major: the breaking change metric
     - minor: the new feature but backwards compatible metric
     - patch: the bug fix metric
   
   - Returns: true if supplied values are equal or less than
     internal values
   */
  open func meetsVersion(
    _ major:Int,
    _ minor:Int = 0,
    _ patch:Int = 0
  ) -> Bool {
    if major > self.major { return false }
    if minor > self.minor { return false }
    if patch > self.patch { return false }
    
    return true
  }
  
  /// Increments the major version number
  open func bumpMajor() -> Int {
    self.major += 1
    
    return self.major
  }
  
  /// Increments the minor version number
  open func bumpMinor() -> Int {
    self.minor += 1
    
    return self.minor
  }
  
  /// Increments the patch version number
  open func bumpPatch() -> Int {
    self.patch += 1
    
    return self.patch
  }
  
  open var major:Int = 0
  open var minor:Int = 0
  open var patch:Int = 0
}
