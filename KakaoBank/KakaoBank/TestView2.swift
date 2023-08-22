//
//  TestView2.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/21.
//

import SwiftUI


struct PageControl: UIViewRepresentable {
    @Binding var currentPage: Int
    var numberOfPages: Int
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(currentPage: $currentPage)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = 1
        control.setIndicatorImage(UIImage(systemName: "location.fill"), forPage: 0)
        control.pageIndicatorTintColor = UIColor(.primary)
        control.currentPageIndicatorTintColor = UIColor(.accentColor)
        control.translatesAutoresizingMaskIntoConstraints = false
        control.setContentHuggingPriority(.required, for: .horizontal)
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.pageControlDidFire(_:)),
            for: .valueChanged)
        return control
    }
    
    func updateUIView(_ control: UIPageControl, context: Context) {
        context.coordinator.currentPage = $currentPage
        control.numberOfPages = numberOfPages
        control.currentPage = currentPage
    }
    
    class Coordinator {
        var currentPage: Binding<Int>
        
        init(currentPage: Binding<Int>) {
            self.currentPage = currentPage
        }
        
        @objc
        func pageControlDidFire(_ control: UIPageControl) {
            currentPage.wrappedValue = control.currentPage
        }
    }
}


struct TestView2: View {
    @State var page = 0
    var locations = ["Current Location", "San Francisco", "Chicago", "New York", "London"]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            tabView
            
            VStack {
                Spacer()
                controlBar.padding()
                Spacer().frame(height: 60)
            }
        }
    }
    
    
      @ViewBuilder
      private var tabView: some View {
          TabView(selection: $page) {
              ForEach(locations.indices, id: \.self) { i in
                  WeatherPage(location: locations[i])
                      .tag(i)
              }
          }
          .tabViewStyle(.page(indexDisplayMode: .never))
      }
    
    
    @ViewBuilder
    private var controlBar: some View {
        HStack {
            Image(systemName: "map")
            Spacer()
            PageControl(
                currentPage: $page,
                numberOfPages: locations.count
            )
            Spacer()
            Image(systemName: "list.bullet")
        }
    }
}


struct WeatherPage: View {
    var location: String
    
    var body: some View {
        VStack {
            Spacer()
            Text("Weather in \(location)")
            Spacer()
        }
    }
}


struct TestView2_Previews: PreviewProvider {
    static var previews: some View {
        TestView2()
    }
}
