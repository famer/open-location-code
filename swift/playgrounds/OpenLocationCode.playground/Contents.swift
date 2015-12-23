//: Playground - noun: a place where people can play

import UIKit

class OpenLocationCode {
    
    let SEPARATOR = "+"
    let CHARACTER_SET = "23456789CFGHJMPQRVWX"
    let SUFFIX_PADDING = "0"
    
    func isValid(code: String) -> Bool {
        
        
        
        // Checks if code contains not more then one separator
        let splitBlocks = ["one", "two", "three"]//code.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: SEPARATOR))
        
        if ( splitBlocks.count > 2 ) {
            return false;
        } else {
            if ( count(splitBlocks[0]) != 4 ) {
                return false;
            }
        }
        
        // Checks if code contains only allowed characters
        if ( code.rangeOfCharacterFromSet(NSCharacterSet(charactersInString: CHARACTER_SET).invertedSet) != nil ) {
            return false;
        }
        return true;
    }
    
    func isShort(code: String) -> Bool {
        return true;
    }
    
    func isFull(code: String) -> Bool {
        return true;
    }
    
    func encode(latitude: Double, longitude: Double) -> String {
        return "0"
    }
    
    func decode(code: String) {
        
    }
    
    func shortenBy4(code: String) {}
    
    func shortenBy6(code: String) {}
    
    func recoverNearest(code: String, latitude: Double, longitude: Double) {}

}

var olc = OpenLocationCode()

olc.isValid("2Q")

"22+34+QQ".componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: "+")).count
