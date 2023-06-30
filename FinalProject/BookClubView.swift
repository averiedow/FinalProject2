import SwiftUI


struct BookClubView: View {
    var body: some View {
        Home()
    }
}
struct BookClubView_Previews: PreviewProvider {
    static var previews: some View {
        BookClubView()
    }
}
struct Home : View {
    
    @State var index = 0
    @State var expand = false
    
    var body : some View{
      
        ZStack {
            
            VStack{
                
            }
            VStack{
                
                ZStack {
                    
                    Chat(expand: self.$expand).opacity(self.index == 0 ? 1 : 0)
                    
                    Groups().opacity(self.index == 1 ? 1 : 0)
                    
                    Settings().opacity(self.index == 2 ? 1 : 0)
                }
                
                BottomView(index: self.$index)
                
            }.background(Color.gray.opacity(0.07))
        }
        
        
        .edgesIgnoringSafeArea(.all)
    }
}
struct Chat : View {
   
    @Binding var expand : Bool
    var body : some View{
     
        VStack(spacing: 0){
            
            TopView(expand: self.$expand).zIndex(25)
            
            CenterView(expand: self.$expand).offset(y: -25)
        }
    }
}
struct Groups : View {
   
    var body : some View{
        
        GeometryReader{_ in
            
            VStack {
                
                Spacer()
                
                Text("Group")
                
                Spacer()
            }
            
        }.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(Color.white)
        .clipShape(shape())
        .padding(.bottom, 25)
    }
}
struct Settings : View {
   
    var body : some View{
        
        GeometryReader{_ in
            
            VStack {
                
                Spacer()
                
                Text("Settings")
                
                Spacer()
                                
            }
            
        }.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
        .background(Color.white)
        .clipShape(shape())
        .padding(.bottom, 25)
    }
}
struct TopView : View {
    
    @State var search = ""
    @Binding var expand : Bool
    
    var body : some View{
        
        VStack(spacing: 22){
            
            if self.expand{
                
                HStack{
                    
                    Text("Book Club Chats!")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.7))
                    
                    Spacer()
                    
                    Button(action:{}) {
                        Image(systemName:"poweroutlet.type.l")
                            .resizable()
                            .frame(width: 20, height: 35)
                            .foregroundColor(Color.orange.opacity(0.75))
                        
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                  
                    HStack(spacing: 18){
                       
                        Button(action: {
                            
                        }) {
                            
                            Image(systemName: "plus")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.orange)
                            .padding(18)
                            
                        }.background(Color.orange.opacity(0.25))
                            .clipShape(Circle())
                        
                        ForEach(1...7,id: \.self){i in
                            
                            Button(action: {
                                
                            }) {
                                
                                Image("p\(i)")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 70, height: 70)
                                .foregroundColor(Color.orange)
                                                            
                            }
                        }
                    }
                }
                
            }
           
            HStack(spacing: 15){
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundColor(Color.orange.opacity(0.5))
                
                TextField("Search", text: self.$search)
                
            }.padding()
            .background(Color.white)
            .cornerRadius(8)
            .padding(.bottom, 10)
            
        }.padding()
        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
        .background(Color.gray.opacity(0.15))
        .clipShape(shape())
        .animation(.default)
    }
}
struct CenterView : View {
    
    @Binding var expand : Bool
    var body : some View{
        
        List(data){i in
           
            if i.id == 0{
                
                cellView(data: i)
                .onAppear {
                    
                    self.expand = true
                }
                .onDisappear {
                    
                    self.expand = false
                }
            }
            else{
                
                cellView(data: i)
            }
 
        }
        .padding(.top, 20)
        .background(Color.white)
        .clipShape(shape())
    }
}
struct BottomView: View {
    
    @Binding var index : Int
    var body : some View{
        
        HStack{
//
            Button(action:{

                self.index = 0
            }) {

                Image(systemName: "message.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(self.index == 0 ? Color.clear : Color.clear.opacity(0.5))
                    .padding(.horizontal)
                    .padding(.all)
            }.background(Color.clear.opacity(0.2))
            .clipShape(Circle())


            Spacer(minLength: 5)

            Button(action:{

                self.index = 1
            }) {

                Image(systemName: "person.2.fill")
                    .resizable()
                    .frame(width: 35, height: 25)
                    .foregroundColor(self.index == 1 ? Color.clear : Color.clear.opacity(0.5))
                    .padding(.horizontal)
                    .padding(.all)
            }.background(Color.clear.opacity(0.2))
            .clipShape(Circle())

            Spacer(minLength: 5)

            Button(action:{

                self.index = 2
            }) {

                Image(systemName: "gearshape.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(self.index == 2 ? Color.clear : Color.clear.opacity(0.5))
                    .padding(.horizontal)
                    .padding(.all)
            }.background(Color.clear.opacity(0.2))
            .clipShape(Circle())

        }.padding(.horizontal, 30)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
    }
}
struct cellView : View {
    
    var data : Msg
    
    var body : some View {
        
        HStack(spacing:12) {
            
            Image(data.img)
                .resizable()
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 12) {
                
                Text(data.name)
                
                Text(data.msg).font(.caption2)
            }
            Spacer(minLength: 0)
            
            VStack{
                
                Text(data.date)
                
                Spacer()
            }
        }.padding(.vertical)
    }
}
struct shape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft,.bottomRight], cornerRadii: CGSize(width: 30, height: 30))
        
        return Path(path.cgPath)
    }
}
struct Msg: Identifiable {
    
    var id : Int
    var name : String
    var msg : String
    var date : String
    var img : String
}
var data = [
    
    Msg(id: 0, name: "pinkUnicorn95", msg: "Harry Potter and the Sorcerer's Stone", date: "6/20/23", img: "p1"),
    Msg(id: 1, name: "blueTiger82", msg: "Daughter of Pirate King", date: "6/21/23", img: "p2"),
    Msg(id: 2, name: "purpleCat74", msg: "The Hate U Give", date: "6/22/23", img: "p3"),
    Msg(id: 3, name: "whitePuffin38", msg: "Crying in H Mart", date: "6/23/23", img: "p4"),
    Msg(id: 4, name: "brownSiren29", msg: "Cinder", date: "6/24/23", img: "p5"),
    Msg(id: 5, name: "greenDragon9", msg: "Amari and the Night Brothers", date: "6/25/23", img: "p6"),
    Msg(id: 6, name: "mintMermaid3", msg: "Caraval", date: "6/26/23", img: "p7"),
    Msg(id: 7, name: "getianGiant26", msg: "Harley Merlin & the Secret Coven", date: "6/27/23", img: "p8"),
    Msg(id: 8, name: "pinePanda24", msg: "Their Eyes Were Watching God", date: "6/28/23", img: "p9"),
    Msg(id: 9, name: "turquoiseDog4", msg: "Purple Hibiscus", date: "6/29/23", img: "p10"),
    Msg(id: 10, name: "pastelHorse30", msg: "The Idiot", date: "6/30/23", img: "p11"),
    Msg(id: 11, name: "ironFish48", msg: "Normal People", date: "7/1/23", img: "p12"),
    Msg(id: 12, name: "silverFlower59", msg: "My Year of Rest and Relaxation", date: "7/2/23", img: "p13"),
    Msg(id: 13, name: "stoneShark59", msg: "The Shadows Between Us", date: "7/3/23", img: "p14"),
    Msg(id: 14, name: "sageAardvark26", msg: "The Kinder Poison", date: "7/4/23", img: "p15"),
    
]

