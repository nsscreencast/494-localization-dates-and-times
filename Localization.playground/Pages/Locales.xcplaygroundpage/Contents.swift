import Foundation

for locale in Locale.availableIdentifiers {
    print(locale)
}

let spanishSpeaking = Locale.availableIdentifiers.filter { $0.starts(with: "es_") }
print(spanishSpeaking)


Locale.autoupdatingCurrent
