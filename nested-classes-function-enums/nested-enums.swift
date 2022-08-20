enum London {
    // named tuples
    static let coordinates = (lat: 51.7777, long: -0.125)

    enum SubwayLines {
        case  bakerloo, central, circle, district, elizabeth,
              hammersmithCity, jubilee, metropolitan, northern, piccadilly,
              victoria, waterlooCity
    }

    enum Places {
        case buckinghamPalace, cityHall, oldBailey, piccadilly, stPaulsCathedral
    }

}

print(London.Places.buckinghamPalace)