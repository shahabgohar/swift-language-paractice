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