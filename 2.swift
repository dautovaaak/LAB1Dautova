import Foundation

print("Enter the first line:")
if let firstLine = readLine() {
    print("Enter the second line:")
    if let secondLine = readLine() {
        let combinedString = firstLine + secondLine
        print("Result of combining: \(combinedString)")
    }
}

print("Enter the string to flip:")
if let inputString = readLine() {
    let reversedString = String(inputString.reversed())
    print("Result of flipping: \(reversedString)")
}

print("Enter the string for character count:")
if let countString = readLine() {
    let characterCount = countString.filter { !$0.isWhitespace }.count
    print("Number of characters (excluding spaces): \(characterCount)")
}

print("Enter the main string:")
if let mainString = readLine() {
    print("Enter the substring to search for:")
    if let substring = readLine() {
        if let range = mainString.range(of: substring) {
            let startIndex = mainString.distance(from: mainString.startIndex, to: range.lowerBound)
            print("First occurrence of substring \"\(substring)\" at position: \(startIndex + 1)")
        } else {
            print("Substring not found in the string.")
        }
    }
}
