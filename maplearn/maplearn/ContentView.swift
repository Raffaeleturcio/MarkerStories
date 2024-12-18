//
//  ContentView.swift
//  maplearn
//
//  Created by Raffaele Turcio on 09/12/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @StateObject var repository = LocationRepository()
    
    let tower = CLLocationCoordinate2D(latitude: 40.84736742091382,longitude: 14.249481183689971)
    let mario = CLLocationCoordinate2D(latitude: 40.851053627510375, longitude: 14.268775510726114)
    let sette = CLLocationCoordinate2D(latitude: 40.87234776393528, longitude: 14.265718469604403)
    let gennaro = CLLocationCoordinate2D(latitude: 40.83174626919628,longitude: 14.244344626983164)
    let mare = CLLocationCoordinate2D(latitude: 40.841650343358495, longitude:  14.246553751017915)
    
    @State private var camera: MapCameraPosition = .automatic
    @State private var currentMarkerIndex = 0
    @State private var selectedMarker: CLLocationCoordinate2D? = nil
    @State private var showSheet = false
    @State private var deposito = 0
    
    let markers: [CLLocationCoordinate2D]
    let locationNames = ["7 settembre Square", "Castel dell'Ovo", "Acquedotto", "University L'orientale"]
    
    init() {
        markers = [tower, mario, sette, gennaro, mare]
    }
    
    var body: some View {
        Map(position: $camera) {
            // Add MapAnnotation for each coordinate
            Annotation("Piazza 7 Setttembre", coordinate: tower) {
                Image(systemName: "building.fill")
                    .font(.title)
                    .foregroundColor(.blue)
                    .onTapGesture {
                        selectedMarker = tower
                        deposito = 0
                        showSheet.toggle()
                        
                    }
                    .padding(10)
                    .background(Circle().fill(Color.white).shadow(radius: 5))
            }
            Annotation("Castel dell'Ovo", coordinate: mario) {
                Image(systemName: "person.fill")
                    .font(.title)
                    .foregroundColor(.red)
                    .onTapGesture {
                        selectedMarker = mario
                        deposito = 1
                        showSheet.toggle()
                        
                    }
                    .padding(10)
                    .background(Circle().fill(Color.white).shadow(radius: 5))
            }
            
            Annotation("Acquedotto", coordinate: sette) {
                Image(systemName: "person.3.sequence.fill")
                    .font(.title)
                    .foregroundColor(.green)
                    .onTapGesture {
                        selectedMarker = sette
                        deposito = 2
                        showSheet.toggle()
                        
                    }
                    .padding(10)
                    .background(Circle().fill(Color.white).shadow(radius: 5))
            }
            
            Annotation("University L'orientale", coordinate: gennaro) {
                Image(systemName: "person.3.sequence.fill")
                    .font(.title)
                    .foregroundColor(.purple)
                    .onTapGesture {
                        selectedMarker = gennaro
                        deposito = 3
                        showSheet.toggle()
                        
                    }
                    .padding(10)
                    .background(Circle().fill(Color.white).shadow(radius: 5))
            }
            Annotation("Quartieri Spagnoli", coordinate: mare) {
                Image(systemName: "person.3.sequence.fill")
                    .font(.title)
                    .foregroundColor(.yellow)
                    .onTapGesture {
                        selectedMarker = mare
                        deposito = 4
                        showSheet.toggle()
                        
                    }
                    .padding(10)
                    .background(Circle().fill(Color.white).shadow(radius: 5))
                
            }
        }
        .safeAreaInset(edge: .bottom) {
            HStack {
                // "Back" button
                Button {
                    moveToPreviousLocation()
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                }
                .padding()
                
                Spacer()
                
                    
               
                Text(locationNames[currentMarkerIndex])
                    .font(.title2)
                    .foregroundColor(.primary)
                    .padding(.horizontal)
                
                Spacer()
                    
                // "Next" button
                Button {
                    moveToNextLocation()
                } label: {
                    Image(systemName: "arrow.right.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                }
                .padding()
            }
            .padding(.top)
            .background(.thinMaterial)
        }
        .mapStyle(.standard)
        
        .sheet(isPresented: $showSheet) {
            NavigationStack {
                VStack   {
                    ScrollView {
                        
//                        Text(repository.place[deposito].name)
//                        //.font(.title2)
//                        //.bold()
//                        // .alignmentGuide(.leading) { $0[.leading] }
//                            .padding()
//                        //                        .navigationTitle(repository.place[deposito].name)
                        
                        Image(repository.place[deposito].image)
                            .resizable()
                            .scaledToFit()
                            .frame(width:400, height: 400)
                        
                        Text(repository.place[deposito].description)
                            .italic()
                            .padding()
                    }
                    //}
                }
                //.padding()
                .navigationTitle(repository.place[deposito].name)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            showSheet = false
                        } label: {
                            HStack {
                                Image(systemName: "chevron.left")
                                Text("Back")
                            }
                            .font(.headline)
                        }
                    }
                }
            }
        }
        .onChange(of: deposito) {
            print("\n\n")
            print(deposito)
            print("\n\n")
        }
    }
    
    // Function to go to the next marker
    func moveToNextLocation() {
        currentMarkerIndex = (currentMarkerIndex + 1) % markers.count
        camera = .region(MKCoordinateRegion(center: markers[currentMarkerIndex], latitudinalMeters: 200, longitudinalMeters: 200))
    }
    
    // Function to go to the previous marker
    func moveToPreviousLocation() {
        currentMarkerIndex = (currentMarkerIndex - 1 + markers.count) % markers.count
        camera = .region(MKCoordinateRegion(center: markers[currentMarkerIndex], latitudinalMeters: 200, longitudinalMeters: 200))
    }
}

struct MarkerDetailView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        VStack {

            
            
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
