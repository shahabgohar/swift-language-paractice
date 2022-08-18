enum WeatherType {
   case cloudy(coverage: Int)
   case sunny
   case windy
}

let today = WeatherType.cloudy(coverage: 100)

switch today {
case .sunny:
    print("today is sunny")
case .windy:
    print("today is windy")
case .cloudy(let coverage):
    print("today is cloudy with coverage \(coverage)")
default:
    print("touched the default")
    
}

// filter with associated values

switch today {
case .cloudy(let coverage) where coverage < 100:
    print("today is cloudy with coverage \(coverage)")
case .cloudy(let coverage) where coverage == 100:
    print("you must live in UK \(coverage)")
default:
    print("touched the default")
    
}

// filter with associated values and range


switch today {
case .cloudy(let coverage) where coverage == 0:
    print("you ust live in death valley")

case .cloudy(let coverage) where (1...50).contains(coverage):
    print("it is a bit cloudy with coverage of \(coverage) %")

case .cloudy(let coverage) where(51...99).contains(coverage):
    print("its very cloudy with a coverage of \(coverage) %")

case .cloudy(let coverage) where coverage == 100:
    print("you must be living in UK")

case .windy:
    print("today is windy")

default: 
    print("today is sunny")
    
}

// where you can use where in swift
/**
* you can use where keyword in a case label of a switch statement,
* a catch clause of a do statement, or in the case condition of an if, 
* while, guard, for-in statement, or to define type constraints.
*
***/
