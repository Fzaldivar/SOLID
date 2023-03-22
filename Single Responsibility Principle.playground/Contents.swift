import Foundation

// Single Responsibility Principle

// It states that every module should have only one responsibility and reason to change.
// SRP starts with small concrete and specific cases such as a class and/or an object having only one purpose and being used only for one thing.
// This principle helps you to keep your classes as clean as possible.

// FIRST the error
// In this class DataHandlerMistake does everything

class DataHandlerMistake {
    
    func handle() {
        let data = loadData()
        let list = parse(data: data)
        
        save(model: list)
    }
    
    func loadData() -> Data {
        return Data()
    }
    
    func parse(data: Data) -> Any {
        return ""
    }
    
    func save(model: Any) {
        // save data
    }
}


// SOLUTION

class DataHandler {
    let apiHandler: APIHandler
    let parseHandler: ParseHandler
    let storageHandler: StorageHandler
    
    init(apiHandler: APIHandler, parseHandler: ParseHandler, storageHandler: StorageHandler) {
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.storageHandler = storageHandler
    }
    
    func handle() {
        let data = apiHandler.loadData()
        let model = parseHandler.parse(data: data)
        storageHandler.save(model: model)
    }
}

class APIHandler {
    func loadData() -> Data {
        return Data()
    }
}

class ParseHandler {
    func parse(data: Data) -> Any {
        return ""
    }
}

class StorageHandler {
    func save(model: Any) {
        // save data
    }
}
