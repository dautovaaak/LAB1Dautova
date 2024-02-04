import Foundation

func add(_ num1: Double, _ num2: Double) -> Double {
    return num1 + num2
}

func subtract(_ num1: Double, _ num2: Double) -> Double {
    return num1 - num2
}

func multiply(_ num1: Double, _ num2: Double) -> Double {
    return num1 * num2
}

func divide(_ num1: Double, _ num2: Double) -> Double? {
    if num2 == 0 {
        print("Error: Cannot divide by zero")
        return nil
    }
    return num1 / num2
}

func power(_ base: Double, _ exponent: Double) -> Double {
    return pow(base, exponent)
}

func getUserInput() -> (Double, String, Double)? {
    print("Enter the number:")
    guard let num1 = Double(readLine() ?? "") else {
        print("Error: Invalid input for the number")
        return nil
    }

    print("Enter the operator (+, -, *, /, ^) :")
    guard let operatorSymbol = readLine(), ["+", "-", "*", "/", "^"].contains(operatorSymbol) else {
        print("Error: Invalid operator")
        return nil
    }

    print("Enter the number:")
    guard let num2 = Double(readLine() ?? "") else {
        print("Error: Invalid input for the number")
        return nil
    }

    return (num1, operatorSymbol, num2)
}

func performOperation(_ num1: Double, _ operatorSymbol: String, _ num2: Double) -> Double? {
    switch operatorSymbol {
    case "+":
        return add(num1, num2)
    case "-":
        return subtract(num1, num2)
    case "*":
        return multiply(num1, num2)
    case "/":
        return divide(num1, num2)
    case "^":
        return power(num1, num2)
    default:
        return nil
    }
}

if let userInput = getUserInput() {
    if let result = performOperation(userInput.0, userInput.1, userInput.2) {
        print("Result is: \(result)")
    }
}
