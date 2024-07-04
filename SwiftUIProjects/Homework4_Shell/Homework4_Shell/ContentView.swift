//========================================================
// Name:Yanelys Velarde
// Date:06-22-2024
//========================================================

import SwiftUI
import Charts

struct ContentView: View {
    @State private var selectedLocation: Location? = nil

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text(selectedLocation?.imageName ?? "Click on Location")
                    .font(.system(size: 35, weight: .bold))
                    .padding(.leading) //title

                VStack(alignment: .leading) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(locations) { location in
                                VStack {
                                    Text(location.imageName)  // image header

                                    Image(location.imageName)  //images1
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 200)
                                        .cornerRadius(20)
                                        .padding(.leading)
                                        .onTapGesture {
                                            self.selectedLocation = location
                                        }
                                }
                            }
                        }
                    }
                    .padding()
                    Spacer()

                    if let selectedLocation = selectedLocation {
                        let population2023 = selectedLocation.populationData.first { $0.date == "2023" }?.population ?? 0

                        List {
                            Section(header:  Text(selectedLocation.imageName)  // list header
                                .font(.system(size: 11))
                                .foregroundColor(.gray)
                                .padding([.leading, .trailing, .top])) {
                                
                                DisclosureGroup("Info") {  // list w info and population data
                                    HStack {
                                        Text("Population:")
                                        Spacer()
                                        Text("\(population2023)")
                                            .font(.system(size: 17, weight: .bold))
                                    }
                                    .padding()

                                    VStack {  //chart gradient
                                        Chart(selectedLocation.populationData) { dataPoint in
                                            LineMark(
                                                x: .value("Year", dataPoint.date),
                                                y: .value("Population", dataPoint.population)
                                            )
                                            .foregroundStyle(Color.gray)
                                            .interpolationMethod(.catmullRom)

                                            AreaMark(
                                                x: .value("Year", dataPoint.date),
                                                y: .value("Population", dataPoint.population)
                                            )
                                            .foregroundStyle(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [Color.pink.opacity(0.5), Color.purple.opacity(0.3)]),
                                                    startPoint: .top,
                                                    endPoint: .bottom
                                                )
                                            )
                                            .interpolationMethod(.catmullRom)
                                        }
                                        .chartXAxis {
                                            let first = selectedLocation.populationData[1].date
                                            let middle = selectedLocation.populationData[selectedLocation.populationData.count / 2].date
                                            let last = selectedLocation.populationData[selectedLocation.populationData.count - 2].date

                                            AxisMarks(values: [first, middle, last]) { value in
                                                AxisValueLabel {
                                                    Text(value.as(String.self) ?? "").font(.system(size: 14, weight: .bold))
                                                }
                                            }
                                        }
                                        .chartYAxis {
                                            AxisMarks() { value in
                                                if let population = value.as(Int.self) {
                                                    AxisValueLabel {
                                                        Text("\(population)")
                                                            .font(.system(size: 14, weight: .bold))
                                                    }
                                                }
                                            }
                                        }
                                        .frame(height: 250)
                                        .padding()
                                    }
                                }
                            }
                        }
                        // botton to go to detail view 
                        NavigationLink(destination: DetailView(location: selectedLocation)) {
                            Text("Go to Detail View")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .padding()
                    }
                }
            }
        }
    }
}


        
        
        
        
//========================================================
        #Preview {
            ContentView()
        }
    
