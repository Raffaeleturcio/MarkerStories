//
//  LocationRepository.swift
//  maplearn
//
//  Created by Raffaele Turcio on 16/12/24.
//

import SwiftUI
import MapKit

class LocationRepository: ObservableObject {
    
    static var allLocation: [LocationModel] {
        return [
            LocationModel(id: UUID(),
                          name: "7 settembre Square",
                          image: "piazzasette",
                          description: "On that September 7, 1860, Garibaldi made his entrance into Naples, the capital of the Kingdom of the Two Sicilies, welcomed by a plebiscite crowd. The official declaration took place the following November 3 in Piazza Regia, today Piazza Matteotti, and later in Piazza del Plebiscito by the president of the Supreme Court of Justice of Naples, he proclaiming the result of the plebiscite sanctioned 'annexation of the Neapolitan provinces of the Kingdom of the Two Sicilies to the Kingdom of Sardinia. His speech, I proclaim that the people of the southern provinces of Italy want Italy one and indivisible with Victor Emmanuel, Constitutional King and his legitimate descendants.",
                          coordinatex: 40.84736742091382,
                          coordinatey: 14.249481183689971),
            LocationModel(id: UUID(), name: "Castel dell'Ovo", image: "castel", description: "in 476 A.D. the king of the Heruli, Odoacer, occupied Ravenna, then capital of the western empire, and deposed the very young Romulus Augustus, who was given the nickname Augustulus, brought to power only a year earlier by his father, General Flavius Orestes. On that occasion Odoacer sent the imperial insignia to Zeno, the emperor of the East, and became governor of Italy with the title of patrician. Odoacer decided not to kill the young Romulus Augustulus, the Anonymous Valesian says that Romulus Augustulus was sent into exile in Naples, within the walls of Castellum Lucullanum, the ancient villa of the politician and military Lucullus, known today, after not a few transformations, as Castel dell'Ovo, one of the most important and famous monuments of the Neapolitan city. The last Roman emperor, at least as far as the western part was concerned, disappeared from the sources and, in all probability, always died in Naples after 511 AD.", coordinatex: 40.851053627510375, coordinatey: 14.268775510726114),
            LocationModel(id: UUID(), name: "Acquedotto", image: "ponte", description: "In 536 DC Belisarius, a general of the Eastern Roman Empire, on his mission to reconquer Italy found himself in front of the city of Naples. For twenty days, Belisarius looked for ways to make the city capitulate, until one of his scouts spotted an aqueduct near the city, where, behind a large boulder, a small opening could be glimpsed, enough for one man to pass through.  Informed immediately, Belisarius chose to give the Neapolitans one last chance by resuming contact with Stephen, governor of the city, saying that if he did not surrender, the men would be killed, the women brutally raped and all the children enslaved, again proposing an honorable surrender. Faced with Stephen's refusal, there was the final assault. Four hundred men led by Belisarius' centurions, Magnus and Enne, broke into the aqueduct and, following the underground route, suddenly burst inside the dwelling of a poor woman from Naples. The soldiers immediately killed the first sentries and, with a blast of a trumpet, warned their fellow soldiers. The Neapolitans were soon overrun, and although they tried to resist with all their might, they were quickly overwhelmed. Some Neapolitan Jews, hoping to calm the fury of the Byzantines, decided to open the gates of Naples, and the rest of Belisarius' army began the sacking.", coordinatex: 40.87234776393528, coordinatey: 14.265718469604403),
            LocationModel(id: UUID(), name: "University L'orientale", image: "orientale", description: "The name L'Orientale is an indication of the origins of the university. In the mid-17th century, the Manchus established the Qing Empire in China and started a remarkable period of openness towards the west. This included welcoming Christian missionaries and priests. One such person was the missionary Matteo Ripa of the Propaganda Fide from the Kingdom of Naples, who worked as a painter and copper engraver at the imperial court of the Kangxi Emperor between 1711 and 1723. He returned to Naples from China with four young Chinese Christians, all teachers of their native language; they formed the nucleus of what would become the Chinese College (Collegio de' Cinesi) of Naples, sanctioned by Pope Clement XII in 1732 to teach Chinese to missionaries and thus advance the propagation of Christianity in China.", coordinatex: 40.83174626919628, coordinatey: 14.244344626983164),
            LocationModel(id: UUID(), name: "Quartieri spagnoli", image: "bau", description: " The urban area known as Quartieri with the typical vocation of housing intended to house the fortress guard, arose around the 16th century, by the Sienese architect Giovanni Benincasa and the Neapolitan Ferdinando Manlio,[5] at the behest of the then viceroy Pedro de Toledo, in order to quarter the Spanish military garrisons intended for the repression of possible revolts of the Neapolitan population, or as a temporary dwelling for soldiers passing through Naples in the direction of other places of conflict, and, at the same time, as a social housing suitable to give accommodation to the numerous local inhabitants who, in those years, from the surrounding countryside had settled in the capital of the kingdom.", coordinatex: 40.841650343358495, coordinatey: 14.246553751017915)
        ]
            
            
    }
         
    @Published var place: [LocationModel] = LocationRepository.allLocation
}
