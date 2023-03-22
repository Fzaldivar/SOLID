import Foundation

// Dependency Inversion Principle

// High-level modules should not depend on low-level modules both should depend on Abstractions. (Abstractions should not depend upon details. Details should depend upon abstractions)

// ERROR
// The Employer structure is directly linked to the non-abstract Employee structure. Th

struct EmployeeMistake {
    func work() {
        print("working...")
    }
}

struct EmployerMistake {
    var employees: [EmployeeMistake]
    
    func manage() {
        employees.forEach { employee in
            employee.work()
        }
    }
}

func run() {
    let employer = EmployerMistake(employees: [EmployeeMistake()])
    employer.manage()
}

print(run())


// SOLUTION

protocol Workable {
    func work()
}

struct Employee: Workable {
    func work() {
        print("working...")
    }
}

struct Employer {
    var workables: [Workable]
    
    func manage() {
        workables.forEach { workable in
            workable.work()
        }
    }
}

func example() {
    let employer = Employer(workables: [Employee()])
    employer.manage()
}
