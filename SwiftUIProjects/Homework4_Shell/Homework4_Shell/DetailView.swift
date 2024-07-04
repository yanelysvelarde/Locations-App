import SwiftUI
struct DetailView: View {
    var location: Location

    var body: some View {
        VStack {
            Image(location.imageName2)  //image2
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(20)
              
            Text(location.description).padding()
            Text("Population Data") .font(.system(size: 15, weight: .bold))
             
            List(location.populationData) { data in
                HStack() {
                    Text((data.date)) //list w year  and population of that year
                    Spacer()
                    Text("\(data.population)")
                }
            }
        }
        .navigationTitle(location.imageName)
    }
}

#Preview {
    ContentView()
}
