import Foundation

// Open/Closed principle
// In simple term, Open for extension but closed for modification.
//
// Open for extension: You should be able to extend or change the behaviors of a class without efforts.
// Closed for modification: You must extend a class without changing the implementation.

// ERROR

class PaymentManagerMistake {
    func makeCashPayment(amount: Double) {
        //perform
    }
    
    func makeVisaPayment(amount: Double) {
        //perform
    }
    
    func makeMasterCardPayment(amount: Double) {
        //perform
    }
}


// SOLUTION

protocol PaymentProtocol {
    func makePayment(amount: Double)
}

class CashPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        //perform
    }
}


class VisaPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        //perform
    }
}

class MastercardPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        //perform
    }
}
