enum WeatherType {
    case cloudy
    case sunny
    case windy
}

let today = WeatherType.cloudy

switch today {
case .sunny:
    print("today is sunny")
case .windy:
    print("today is windy")
case .cloudy:
    print("today is cloudy")
default:
    print("touched the default")
    
}

// use in if

if today == WeatherType.cloudy {
    print("today is cloudy")
}