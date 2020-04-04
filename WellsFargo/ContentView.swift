import SwiftUI

struct ContentView: View {
    
    // to change these you have to make them state
    @State var checkings = 3229
    @State var savings = 1428018
    
    // functions go here
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                
                Text("WELLS FARGO")
                    .bold()
                    .frame(width: geometry.size.width, height: 100)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20))
                Text("")
                .frame(width: geometry.size.width, height: 10)
                .background(Color.yellow)
                    
                
                HStack(alignment: .top, spacing: 40) {
                    Button(action: {
                        self.savings += 10000
                        // need custom amount
                    }) {
                        Text("Deposit")
                        .bold()
                            .font(.system(size: 20))
                    }
                    
                    Button(action: {
                        self.savings -= 10000
                        // need custom amount
                    }) {
                        Text("Purchase")
                        .bold()
                        .font(.system(size: 20))
                    }
                    
                    Button(action: {
                        // need custom amounts
                    }) {
                        Text("Transfer")
                        .bold()
                        .font(.system(size: 20))
                    }
                }
                    .padding()
                    .frame(width: geometry.size.width, height: 100)
                    //.border(Color.red, width: 2)
                
                Spacer()
                
                VStack {
                    VStack {
                        Text("Sole Checkings").font(.system(size: 20))
                        Text("$\(self.checkings).00").font(.system(size: 40))
                    }.frame(height: 150)
                    VStack {
                        Text("Sole Savings").font(.system(size: 20))
                        Text("$\(self.savings).00").font(.system(size: 40))
                    }
                    .frame(height: 150)
                }
                .offset(y: -330)
                .frame(width: geometry.size.width)
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
