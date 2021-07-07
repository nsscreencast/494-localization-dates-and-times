import Foundation

let prices = [1452.27, -19822.05, 99.84]


let numberFormatter = NumberFormatter()
numberFormatter.generatesDecimalNumbers = true
numberFormatter.maximumFractionDigits = 2
numberFormatter.numberStyle = .currency


let locales = [
    Locale(identifier: "en_US"),
    Locale(identifier: "fr_FR"),
    Locale(identifier: "de_DE"),
    Locale(identifier: "es_MX"),
    Locale(identifier: "ar_AE")
]

for locale in locales {
    print("Locale: \(locale.identifier)")
    print("-----------------------------------------")
    numberFormatter.locale = locale
    for price in prices {
        let priceString = numberFormatter.string(from: NSNumber(floatLiteral: price))!
        print("The prices is: \(priceString)")
    }
    
    let listFormatter = ListFormatter()
    listFormatter.locale = locale
    listFormatter.itemFormatter = numberFormatter
    
    let listString = listFormatter.string(from: prices)!
    print("The prices are: \(listString)")
    
    print("")
}

