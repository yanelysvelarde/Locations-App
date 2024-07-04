import Foundation

// Define the PopulationData struct
struct PopulationData : Identifiable {
    var id = UUID() // Unique identifier for each data point
    let date: String // Year of the population data
    let population: Int // Population count for the year
}

// Define the Location struct
struct Location : Identifiable {
    var id = UUID() // Unique identifier for each location
    let imageName: String // Name of the primary image for the location
    let imageName2: String // Name of the secondary image for the location
    let populationData: [PopulationData] // Array of population data points
    let description: String // Description of the location
}

// Create an array to hold Colorado's population data
let coloradoPopulationData = [
    PopulationData(date: "2013", population: 5270774),
    PopulationData(date: "2014", population: 5352637),
    PopulationData(date: "2015", population: 5454328),
    PopulationData(date: "2016", population: 5543844),
    PopulationData(date: "2017", population: 5617421),
    PopulationData(date: "2018", population: 5697155),
    PopulationData(date: "2019", population: 5758486),
    PopulationData(date: "2020", population: 5784865),
    PopulationData(date: "2021", population: 5811297),
    PopulationData(date: "2022", population: 5839926),
    PopulationData(date: "2023", population: 5877610)
]

// Create an array to hold Florida's population data
let floridaPopulationData = [
    PopulationData(date: "2013", population: 19551678),
    PopulationData(date: "2014", population: 19853880),
    PopulationData(date: "2015", population: 20219111),
    PopulationData(date: "2016", population: 20627237),
    PopulationData(date: "2017", population: 20977089),
    PopulationData(date: "2018", population: 21254926),
    PopulationData(date: "2019", population: 21492056),
    PopulationData(date: "2020", population: 21589602),
    PopulationData(date: "2021", population: 21828069),
    PopulationData(date: "2022", population: 22244823),
    PopulationData(date: "2023", population: 22610726)
]

// Create an array to hold Wyoming's population data
let wyomingPopulationData = [
    PopulationData(date: "2013", population: 582620),
    PopulationData(date: "2014", population: 583159),
    PopulationData(date: "2015", population: 586389),
    PopulationData(date: "2016", population: 585243),
    PopulationData(date: "2017", population: 579994),
    PopulationData(date: "2018", population: 579054),
    PopulationData(date: "2019", population: 580116),
    PopulationData(date: "2020", population: 577605),
    PopulationData(date: "2021", population: 579483),
    PopulationData(date: "2022", population: 581381),
    PopulationData(date: "2023", population: 584057)
]

// Create an array to hold location data for Florida, Wyoming, and Colorado
let locations = [
    Location(
        imageName: "Florida",
        imageName2: "Florida2",
        populationData: floridaPopulationData,
        description: "Florida, known as the “Sunshine State,” is famous for its warm climate, beautiful beaches, and diverse ecosystems, including the unique Everglades. It is a top destination for tourists, offering attractions such as Walt Disney World, Universal Studios, and vibrant cities like Miami and Orlando. Florida’s economy thrives on tourism, agriculture, and aerospace, making it a dynamic and culturally rich state"
    ),
    Location(
        imageName: "Wyoming",
        imageName2: "Wyoming2",
        populationData: wyomingPopulationData,
        description: "Wyoming, often referred to as the “Equality State,” is celebrated for its vast open spaces, rugged mountain ranges, and iconic national parks such as Yellowstone and Grand Teton. With its rich history in the Old West, Wyoming offers a unique blend of outdoor adventure and cultural heritage. The state’s economy is driven by mineral extraction, agriculture, and tourism, making it a key destination for those seeking both natural beauty and historical exploration"
    ),
    Location(
        imageName: "Colorado",
        imageName2: "Colorado2",
        populationData: coloradoPopulationData,
        description: "Colorado, known as the “Centennial State,” is renowned for its stunning natural landscapes, which include the Rocky Mountains, vast plains, and desert lands. The state boasts numerous outdoor recreational activities such as hiking, skiing, and mountain biking, making it a paradise for nature enthusiasts. Colorado is also home to vibrant cities like Denver, which is known for its cultural scene, breweries, and diverse population"
    )
]
