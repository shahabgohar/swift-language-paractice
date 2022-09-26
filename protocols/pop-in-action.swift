protocol Payable {
    func calculateWages() -> Int
}

extension Payable {
    func calculateWages() -> Int {
        return 10000
    }
}

protocol ProvidesTreatment {
    func treat(name: String)
}

extension ProvidesTreatment {
    func treat(name: String) {
        print("I have treated \(name)")
        
    }
}

protocol ProvideDiagnosis {
    func diagnose() -> String
}

extension ProvideDiagnosis {
    func diagnose() -> String {
        return "He is dead, Jim !"
    }
}

protocol ConductsSurgery {
    func performSurgery() -> Void
}

extension ConductsSurgery {
    func performSurgery() {
        print("Success !")
    }
}

protocol HasRestTime {
    func takeBreak()
}

extension HasRestTime {
    func takeBreak() {
        print("Time to watch TV")
    }
}

protocol NeedsTraining {
    func study()
}

extension NeedsTraining {
    func study () {
        print("I am reading a book")
    }
}

protocol Employee: Payable, HasRestTime, NeedsTraining {}

extension Employee {
    // added to all
    func generalToAll() {
        print("common functionality to all employees")
    }
}

// restricted extension

extension Employee where Self: ProvidesTreatment {
    func checkInsurance() {
        print("Yup i am totally insured")
    }
}

struct Receptionist {}
struct Nurse {}
struct Doctor {}
struct Surgeon {}

extension Receptionist: Employee {}

extension Nurse: Employee, ProvidesTreatment {}

extension Doctor: Employee, ProvideDiagnosis, ProvidesTreatment {}

extension Surgen: Employee, ProvideDiagnosis, ConductsSurgery {}