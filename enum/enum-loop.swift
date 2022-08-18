enum WeatherType {
   case cloudy(coverage: Int)
   case sunny
   case windy
}

let forecast: [WeatherType] = [.cloudy(coverage: 40), .sunny, .windy, .cloudy(coverage: 100), .sunny]

// below commented is wrong approach
// for day in WeatherType where day == .cloudy {
//     print(day)
    
// }

for case let .cloudy(coverage) in forecast {
    print(coverage)
}