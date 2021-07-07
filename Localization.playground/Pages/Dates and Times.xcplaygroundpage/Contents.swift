import Foundation

let date = Date()

let dateFormatter = DateFormatter()
// print(date)

dateFormatter.locale = Locale(identifier: "es_ES")

let styles: [DateFormatter.Style] = [
    .none,
    .short,
    .medium,
    .long,
    .full
]

for style in styles {
    dateFormatter.dateStyle = style
    for timeStyle in styles {
        dateFormatter.timeStyle = timeStyle
        print(dateFormatter.string(from: date))
        print()
    }
}

let apiDate = "2021-06-29T16:48:55+0000"
dateFormatter.locale = Locale(identifier: "en_US_POSIX")
dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

let parsedDate = dateFormatter.date(from: apiDate)






