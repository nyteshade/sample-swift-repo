//
//  SomeLibs.swift
//  MyFuncsAndLibs
//
//  Created by Brielle Harrison on 3/6/19.
//  Copyright © 2019 Nyteshade Enterprises. All rights reserved.
//

import Foundation

public enum Gender: String {
  case Male = "Male"
  case Female = "Female"
  case NonBinary = "Non-binary"
}

open class Peep : NSObject {
  // MARK: - Properties
  
  /// The name property defines the Peep in control
  open var name: String = "Jane Doe"
  
  /// The gender property defines the gender identity of the Peep
  open var gender: Gender = .Female
  
  /// The version of the framework
  open var version: SemVer = SemVer(1,0,0)
  
  // MARK: - Initializers
  override init() {
    super.init()
    
    self.name = "Brielle"
  }

  // MARK: - Singleton Instantiation Boilerplate
  
  /**
   The singleton instance this class shares with all other libraries
   and functions.
   
   - returns: a configured and created instance for all to use
   */
  private static var _instance: Peep = {
    let instance = Peep()
    
    /// do any configuration here
    return instance
  }()
  
  /**
   This computed property allows a singleton view of the only allowed
   instantiated instance for use with your code.
   
   An example of usage:
   ```
   Peep.shared.doSomething()
   ```
   
   - returns: the only instantiated Peep instance for use.
   */
  open class var shared: Peep {
    get {
      return _instance
    }
  }
  
  // look here for fetching JSON payload
  // https://code.bradymower.com/swift-3-apis-network-requests-json-getting-the-data-4aaae8a5efc0
  
}
