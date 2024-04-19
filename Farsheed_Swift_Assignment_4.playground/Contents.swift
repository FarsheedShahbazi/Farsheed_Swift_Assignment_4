import Foundation

// Protocol for WaterSystem Property: waterCapacity (Double) Methods: fillWaterTank(), drainWaterTank()
protocol WaterSystem {
    var waterCapacity: Double { get set }
    
    func fillWaterTank()
    func drainWaterTank()
}

//protocol for EntertainmentSystem Property: hasTV (Bool) Methods: turnOnTV(), turnOffTV()
protocol EntertainmentSystem {
    var hasTV: Bool { get set }
    var currentMonth: Int { get set }
    
    func turnOnTV()
    func turnOffTV()
    func poolAvailability()
}

// Create a Camper class that conforms to waterSystem and entertainmentSystem protocols

class Camper: WaterSystem, EntertainmentSystem {
    var waterCapacity: Double
    var hasTV: Bool
    var currentMonth: Int
    var waterCapacityMax: Double

    init(waterCapacity: Double, hasTV: Bool, currentMonth: Int) {
        self.waterCapacity = waterCapacity
        self.hasTV = hasTV
        self.currentMonth = currentMonth
        self.waterCapacityMax = 100
    }

    // EntertainmentSystem protocol methods
    func turnOnTV() {
        if self.hasTV {
            print("Turning on the TV!")
        } else {
            print("No TV")
        }
    }

    func turnOffTV() {
        if self.hasTV {
            print("Turning off the TV!")
        } else {
            print("No TV")
        }
    }

    // WaterSystem protocol methods
    func fillWaterTank() {
        if self.waterCapacity > 0 &&  self.waterCapacity < self.waterCapacityMax {
            print("Filling water tank")
        } else {
            print("Stop Filling")
        }
    }

    func drainWaterTank() {
        if self.waterCapacity > self.waterCapacityMax {
            print("Draining water tank")
        } else {
            print("Water tank already empty")
        }
    }
    
    // check pool
    
    func poolAvailability() {
        if self.currentMonth >= 6 && self.currentMonth <= 9 {
                    print("Pool is available from June to September.")
                } else {
                    print("Pool is not available.")
                }
            }
}


var camper = Camper(waterCapacity: 120.0, hasTV: true, currentMonth: 7)
camper.turnOnTV()
camper.fillWaterTank()
camper.poolAvailability()
        
  
