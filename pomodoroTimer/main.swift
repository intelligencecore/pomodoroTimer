//
//  main.swift
//  pomodoroTimer
//






import Foundation

print("Hello! Welcome to the Pomodoro Timer!")


// Validation of the input and then assigning the input to the global variable.
var userInput = ""

while userInput.lowercased() != "yes" {
    print("Do you want to start a session now?")
    
    if let input = readLine(), !input.isEmpty {
        userInput = input
    } else {
        print("This is an invalid input.")
    }

    if userInput.lowercased() != "yes" {
        print("Okay, I'll ask again.")
    }
}

print("Great! Starting your session...")


let pomodoroDuration = 25 * 60 // 1500 seconds,25 minutes.
counterFunction(pomodoroDuration: pomodoroDuration)



// Function that accepts the number of seconds.
// Decrement each second
// Prints a message when the time is up.
func counterFunction(pomodoroDuration:Int){
    
    //convert the integers to readable minutes nad seconds (MM:SS)
    
    var remainingSeconds = pomodoroDuration
    
    
    // while remainingMinutes is greater than zeron the
    while remainingSeconds > 0 {
        
        let minutes = remainingSeconds / 60
        let seconds = remainingSeconds % 60
        remainingSeconds -= 1
        
        // wait one second and then continue
        sleep(1)
        
     print("Time left:\(minutes): \(seconds)")
    }
    print("Time is up!, you can take a break now!")
}







