class PopularEvents {
  final String image;
  final String title;
  final String description;
  final String location;
  final String date;
  final String time;
  final double rating;

  PopularEvents({
    required this.image,
    required this.title,
    required this.description,
    required this.location,
    required this.date,
    required this.time,
    required this.rating,
  });
}

class PopularPlaces {
  final String image;
  final String title;
  final String description;
  final String location;
  final double rating;

  PopularPlaces({
    required this.image,
    required this.title,
    required this.description,
    required this.location,
    required this.rating,
  });
}

class PopularSouvenirs {
  final String image;
  final String title;
  final String description;
  final String location;
  final double rating;
  final String price;

  PopularSouvenirs({
    required this.image,
    required this.title,
    required this.description,
    required this.location,
    required this.rating,
    required this.price,
  });
}

final popularEventsList = [
  PopularEvents(
    image: "assets/images/popular_events/fulan_fehan_festival.jpg",
    title: "Fulan Fehan Festival",
    description:
        'A cultural celebration in Belu Regency, East Nusa Tenggara (NTT) called the Fulan Fehan Festival was held in the valley at the foot of Mount Lakaan. The valley is a beautiful and cool open earth day in Belu Regency, a border area between the Republic of Indonesia and the Democratic Republic of Timor Leste. Atambua, the capital city of Belu, is located about 26 kilometers from the harsh but beautiful Fulan Fehan Valley.In 2018, the Fulan Fehan Festival raises a treasure of art originating from the myth of human origins in the region, namely "Likurai Dance". In the mythology of the Belu people, it is stated that in ancient times, the world at that time was still narrow, there was conflict between humans and the monkey nation. Humans had to fight with the monkey nation in order to survive. Of course, the human managed to win the war. The king then ordered a ceremony to be held. welcoming the war heroes who have defeated the monkey nation. On that order, "ko lo kolo, bui muk” as a dance instrument. The women use kolo kolo bui muk as a dance property. Performed in front of the traditional house, this victory dance is then called Likurai. In accordance with the times, there are no more wars, so the Likurai dance is performed in official customary events, or for example welcoming guests at Belu. In 2016, the Ministry of Education and Culture established the Likurai dance as Indonesia\'s intangible cultural heritage. In the people of the Belu region and its surroundings, this dance is not only a vehicle for welcoming those who have won the battle, but also a vehicle for embodiment, glorification and dissemination of expressions of the values of cooperation, mutual cooperation, hospitality, mutual respect and tolerance.\nBefore the grand display in the Fulan Fehan Valley, the Foho Rai Festival was held, in five traditional village locations. The design of the Foho Rai Festival is a way to present the supporting ecosystem for the Likurai Dance. Likurai dance as a bud unit',
    location: 'Jakarta',
    date: '20/10/2021',
    time: '10:00',
    rating: 5.0,
  ),
  PopularEvents(
    image: "assets/images/popular_events/jember_fashion_carnival.jpg",
    description:
        'Jember Fashion Carnaval (Indonesia: Jember Fashion Carnival) or often called JFC is a fashion carnival event which is held every year in Jember Regency, East Java. This carnival was initiated by Dynand Fariz who is also the founder of the JFC Center. As many as 2,000 carnival participants in 4 days of holding the event include Kids Carnival, Artwear Carnival, Waci and Grand Carnival. On the main street of the city of Jember witnessed by hundreds of thousands of spectators on the right and left of the road. They are divided into 10 demonstrations, each reflecting the fashion trends of the year in question. The first march is the Archipelago parade which regularly carries the theme of national dress from certain regions such as Java, Bali, Madura, Dayak, Papua, Sumatra, and so on. Other marches raised the theme of fashion trends whether from a country, certain groups, movies, events or other global events. All clothing is made in the form of costumes, all of which are competed to win awards. The arena that is used to hold the JFC is the main road of the city of Jember, which is 3.6 kilometers long.',
    title: 'Jember Fashion Carnival',
    location: 'Jakarta',
    date: '20/10/2021',
    time: '10:00',
    rating: 5.0,
  ),
  PopularEvents(
    image: "assets/images/popular_events/lake_toba_festival.jpg",
    description:
        'The proud Batak people of Lake Toba in Northern Sumatra give thanks for the year’s blessings every September, with the staging of the Pesta Danau Toba (Lake Toba Festival) around its namesake lake and its biggest island, Samosir. The five-day festival showcases a series of Batak art, sports and cultural products: Batak opera, boat races with traditional long canoes called solu balon, Tortor dances, and ulos weaving. Tourists will be impressed with the robust cultural identity of the Batak people, who have thrived around Sumatra despite colonial intrusions and natural disaster. Throughout the festivities, the stunning views of Lake Toba and Samosir serve as a breathtaking backdrop. Toba is renowned as the largest volcanic crater lake in the world, all that remains of a supervolcano that last erupted about 70,000 years ago.',
    title: "Lake Toba Festival",
    location: 'Jakarta',
    date: '20/10/2021',
    time: '10:00',
    rating: 5.0,
  ),
  PopularEvents(
    image: "assets/images/popular_events/pasola.jpg",
    description:
        'The Pasola Festival in Southwest Sumba Regency is centered in Rara Winyo, Ate Ndalo Village, Kodi District. This traditional Sumba cultural attraction has always been on the agenda of world tourists, especially before the COVID-19 pandemic. The Pasola Festival is a tradition of indigenous peoples fighting on horseback while attacking opponents using blunt wooden javelins. Pasola is the culmination of a series of Nate or Nyale traditions, namely the embodiment of traditional community offerings of the Marapu belief system, the original religion of the people of Sumba. Pasola is also a manifestation of gratitude for the harvest. Therefore, when the Pasola is held, people flock to their traditional village to return to their traditional villages, bringing a variety of the best and newest crops to be used as a means of prayer.',
    title: "Pasola Festival",
    location: 'Jakarta',
    date: '20/10/2021',
    time: '10:00',
    rating: 5.0,
  ),
];

final popularPlacesData = [
  PopularPlaces(
    image: "assets/images/popular_places/pink_beach.jpeg",
    description:
        """ Pink Beach, or Pantai Merah, as it is aptly named, is one of seven pink beaches on the planet, and is just one of the many amazing features of Komodo Island that make it truly a Natural Wonder of Nature. This exceptional beach gets its striking color from microscopic animals called Foraminifera, which produces a red pigment on the coral reefs. For this reason, it is called Red Beach in the local tongue. When the tiny fragments of red coral combine with the white sands, this produces the soft pink color that is visible along the shoreline. Aside from Pink Beach itself, a few small segments along Komodo’s eastern bay also have a pinkish tint.

Located immediately west of Flores island in East Nusa Tenggara , Komodo Island is one of three larger and many islets that make up the Komodo National Park and is particularly well-known as the natural habitat of the Komodo dragon. The Komodo Dragon is the largest living lizard, and takes its name after the island.""",
    title: "Pink Beach",
    location: "NTB",
    rating: 5.0,
  ),
  PopularPlaces(
    image: "assets/images/popular_places/Bali.jpg",
    title: "Kelingking Beach",
    description:
        """ Kelingking Beach is one of the most famous spot of Nusa Penida. Major travel sites use its photo to advertise Bali and even sometimes Indonesia. The place is indeed very spectacular and really amazing. The rock of Kelingking Beach looks a little like the backbone of a dinosaur that would drink in the sea. And by the way, on Google Map the bay is called T-Rex Bay. If you are lucky you may even see Manta rays from the top of the cliff.

The esplanade overlooking the rock is now very popular with tourists and drone pilots. This is one of the places that contributed to the tourist development of Nusa Penida island, especially through social networks. Kelingking also means pinky finger in Indonesian. But it’s a little more complicated to understand why. Or it takes a lot of imagination …""",
    location: "Bali",
    rating: 5.0,
  ),
  PopularPlaces(
    image: "assets/images/popular_places/wae rebo milky way.jpg",
    title: "Wae Rebo Hills",
    description:
        """ According to oral tradition Wae Rebo was settled 18 generations ago. An elder from the community had a vision. He led his tribe into the highlands of Flores where they settled under the protection of a friendly spirit.
In 1997 the local government took the first steps in supporting the development of Wae Rebo as a tourism destination. They invested in the construction of two Mbaru Niang houses. In 2008 s group of 15 Jakarta based architects, with support of the local government and the community, renovated the remaining Mbaru Niang houses.
 """,
    location: "NTB",
    rating: 5.0,
  ),
  PopularPlaces(
    image: "assets/images/popular_places/padar island.jpg",
    title: "Padar Island",
    description:
        "Padar Island is the third largest island in the Komodo National Park area, after Komodo Island and Rinca Island. The island is relatively closer to Rinca Island than to Komodo Island, which is separated by the Lintah Strait. Padar Island is not inhabited by ora (Komodo monitor lizards). Around this island there are also three or four small islands. Padar Island is also accepted as a UNESCO World Heritage Site, because it is in the territory of the Komodo National Park, together with Komodo Island, Rinca Island and Gili Motang.",
    location: "NTB",
    rating: 5.0,
  ),
];

final popularSouvenirsData = [
  PopularSouvenirs(
    image: "assets/images/popular_souvenirs/souvenir 3.jpg",
    title: "Sasando",
    description:
        "Sasandu (Rote language) or Sasando (Kupang language) is a stringed instrument that is played by plucking using the fingers. Sasando is a traditional musical instrument from the Rote culture. The Sasando musical instrument has a simple shape, the main part is in the form of a long tube made of bamboo, the middle part is circular from top to bottom with a support (Rote language: senda) where the strings or strings are stretched on a bamboo tube from top to bottom resting. This support gives a different tone to each string, then the sasando tube is given a container made of woven palm leaves (haik). This container is a place of sasando resonance. The shape of the sasando is similar to other stringed instruments such as the guitar, violin and harp. Literally the name Sasando according to the origin of the word in Rote, sasandu, which means a tool that vibrates or sounds. It is said that sasando has been used by the people of Rote since the 7th century.",
    location: "",
    rating: 5,
    price: "Rp. 100.000",
  ),
  PopularSouvenirs(
    image: "assets/images/popular_souvenirs/Souvenirs 2.jpg",
    title: "Tenun",
    description:
        "East Nusa Tenggara (NTT) is world renowned for its beautiful weavings that depict stories of traditional life in this diverse province of Indonesia... The province of NTT has more than 500 islands, and the six largest islands are Timor, Flores, Sumba, Rote, Sabu and Alor... Each island or each tribe on the islands has its own color and design that distinguishes textiles, resulting in a variety of patterns /decorative motifs woven on traditional fabrics called woven ikat... The patterns depict mythical figures, plants, animals, as well as abstract motifs that show a deep appreciation for the power of nature... Traditional figurative motifs have meaning, for example the horse is usually associated with male prestige or wealth... Other animals such as snakes, which can be stylized and appear as geometric zigzag motifs, are very ancient and are often associated with the underworld and fertility... The oldest form of Ikat is Warp Ikat (woven ikat) and is the predominant technique used in NTT, a unique dye resistant process that can be broken down into three overarching categories of binding, dyeing and weaving which makes the whole process of creating a piece of textile very complicated and can be time consuming. it takes months or even years to produce one woven...",
    location: "",
    rating: 5,
    price: "Rp. 100.000",
  ),
  PopularSouvenirs(
    image: "assets/images/popular_souvenirs/souvenir 5.jpg",
    title: "Wayang Puppets",
    description: """
Wayang (derived from Javanese: ꦮꦪꦁ, translit. wayang, lit. 'shadow') is a traditional Indonesian performing art that originated and developed rapidly on the islands of Java and Bali.

On November 7, 2003, UNESCO, the institution in charge of culture of the United Nations, established wayang as the most famous shadow puppet show from Indonesia, an invaluable World Heritage Masterpiece in the Art of Speech (English: Masterpiece of Oral and Intangible Heritage of Humanity).[1] [2][3]

Until now, the earliest record that can be obtained about wayang performances comes from the Balitung Inscription in the 10th Century. In 903 AD, an inscription called the Balitung Inscription (Mantyasih) was created by King Balitung of the Sanjaya Dynasty, from the Ancient Medang Kingdom. They declared Si Galigi Mawayang for Hyang Macarita Bimma Ya Kumara, which means 'Galigi puts on a puppet show for the gods by taking the story of Bima Kumara'.[4] It seems that certain features of the traditional puppet theater have survived since then. Galigi was a traveling artist who was asked to perform for a special royal event. At that event he presented a story about the hero Bima from the Mahabharata.

Mpu Kanwa, the court poet of Airlangga from the Kahuripan Kingdom, wrote in 1035 AD in his kakawin Arjunawiwaha: santoṣâhĕlĕtan kĕlir sira sakêng sang hyang Jagatkāraṇa, which means, "He is steadfast and only a puppet screen is far from the 'Mover of the World'." Kelir is the Javanese word for wayang screen, a verse that eloquently compares real life to a wayang performance in which the almighty Jagatkāraṇa (world mover) as supreme dalang (wayang teacher) is but a thin screen of humans. This mention of wayang as wayang kulit indicates that wayang performances were already known at Airlangga's court and that wayang traditions were well established in Java, perhaps earlier. An inscription from this period also mentions some work as awayang and aringgit.[5]

When Hinduism entered Indonesia and adapted the existing culture, this performing arts became an effective medium for spreading Hinduism. Wayang shows use stories from the Ramayana and Mahabharata.

The Wali Songo in Java have divided the wayang into three. Wayang kulit in the east, wayang wong in Central Java and wayang golek in West Java. It is Raden Patah and Sunan Kali Jaga who have made great contributions. Look for wayang in West Java, golek ono in Jawi language, until you find the wong whose contents are in the middle, don't just find the skin in the East in wetan wiwitan. Looking for that identity in the West or Kulon or kula that is in the human heart. The intentions of the Wali are too noble and high in philosophy. Wayang is pure from the original Java, pakeliran means the pair between the shadows and the original object. Like two shahada sentences. As for God masyrik wal maghrib, it must first be translated into Javanese, which means wetan kawitan and kulon or kula or I who is inside. Seek the god who is first born and who is in the human heart. (sik)

Likewise, when Islam entered, when performances featuring "God" or "gods" in human form were prohibited, wayang puppets made of cowhide appeared, in which only their shadows were seen during the performance. This wayang is what we now know as wayang kulit. To spread Islam, Sadat puppets were also developed which introduced Islamic values.

When the Catholic missionary, Brother Timotheus L. Wignyosubroto, FIC, in 1960, was on his mission to spread Catholicism, he developed Wayang Wahyu, whose source of stories comes from the Bible.
""",
    location: "",
    rating: 5,
    price: "Rp. 100.000",
  ),
  PopularSouvenirs(
    image: "assets/images/popular_souvenirs/Souvenir 4.webp",
    title: "Ondel Ondel",
    description: """ 
    Traditionally, the figure of ondel-ondel was known as barongan, a word derived from barong, a protective spirit that can be found across the animistic Austronesian culture long before the arrival of Hinduism. The figure was performed around villages to provide protection against calamities or for warding off wandering evil spirits. It was thought as a representation of the ancestors protecting the village.[1]

The first record of ondel-ondel is probably by British merchant William Scot who noted that een reus raksasa ("a giant Rakshasa") was one of the figures included in the procession led by Prince Jayakarta Wijayakrama to celebrate the circumcision of 10 years old Prince Abdul Mafakhir in the year 1605.[2]

Up until the modern colonial period, ondel-ondel figure was recorded to have a gruesome facial feature such as large fangs and menacing goggle-eyes, similar to the Balinese Barong or Rangda figure. The ondel-ondel was performed on the streets and asked by-passers for opium. When opium was banned in the Dutch East Indies, the ondel-ondel would ask for cigars instead, which is done by placing a cigar on their mouth. During this period, local Betawi people still believe that ondel-ondel can protect a village against disease such as chickenpox. Ondel-ondel performance was recorded by American writer E.R. Scidmore who visited Batavia in late 19th-century who noted a street performance in the form of dances, which could be the ondel-ondel performance.[1]

The construction of an ondel-ondel must follow a certain ritual. Before the construction of an ondel-ondel, the maker must gives offering in the form of incense, kembang tujuh rupa, and a rice porridge. The offering was intended to ensure the process of making ondel-ondel is a smooth one and to allow benevolent spirit to enter the figure.[1]
    """,
    location: "",
    rating: 5,
    price: "Rp. 100.000",
  ),
];
