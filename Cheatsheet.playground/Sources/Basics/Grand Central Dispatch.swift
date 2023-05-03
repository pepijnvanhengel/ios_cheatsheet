import Foundation

class GrandCentralDispatch {
    init() {
        performTask()
    }
    
    func performTask() {
        // Get a reference to a global background queue
        let backgroundQueue = DispatchQueue.global(qos: .background)
        
        // Submit a task to the background queue asynchronously
        backgroundQueue.async {
            // Perform some time-consuming task here
            print("Task started")
            sleep(3)
            print("Task completed")
        }
        
        // Continue doing other work on the main thread
        print("Continuing with other work")
    }
}
