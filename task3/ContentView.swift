
import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        VStack {
            // Header
            HStack {
                Text("Leaderboard")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading)
                Spacer()
                // Task points and balance displayed
                VStack {
                    HStack {
                        Text("3982")
                            .font(.headline)
                            .foregroundColor(.red)
                        Text("Points")
                            .foregroundColor(.white)
                    }
                    HStack {
                        Text("₹2875.00")
                            .font(.headline)
                            .foregroundColor(.green)
                    }
                }
                .padding(.trailing)
            }
            .padding()
            .background(Color.blue) 
            
            // Segmented control
            HStack {
                Text("Daily")
                    .font(.headline)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                Text("Weekly")
                    .font(.headline)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                Text("Monthly")
                    .font(.headline)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }
            .foregroundColor(.white)
            .padding()
            
            // User rows
            HStack {
                Spacer()
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.gray)
                    Text("ADARSH")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                Spacer()
                VStack {
                    Image(systemName: "crown.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)
                    Text("ABHISHEK KUMAR")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text("@abhishek")
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.gray)
                    Text("ADITYA")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                Spacer()
            }
            .padding()
            Spacer()
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ProfileDetailView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Profile Image (Using random profile pic URL)
            AsyncImage(url: URL(string: "https://i.pravatar.cc/300")) { image in
                image
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.blue, lineWidth: 2))
            } placeholder: {
                ProgressView()
            }
            
            // User Details
            VStack(alignment: .center, spacing: 10) {
                Text("ABHISHEK KUMAR")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("@abhishek")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                HStack(spacing: 10) {
                    Image(systemName: "person.fill")
                        .foregroundColor(.blue)
                    Text("Male")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                Text("Member Since: Sep 2024")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 20)
            
            // Leaderboard Statistics
            VStack {
                Text("Leaderboard Statistics")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.bottom, 10)
                
                HStack {
                    VStack {
                        Text("Daily")
                            .font(.headline)
                            .foregroundColor(.orange)
                        Text("Points: 77")
                        Text("⭐️ 5")
                    }
                    Spacer()
                    VStack {
                        Text("Weekly")
                            .font(.headline)
                            .foregroundColor(.orange)
                        Text("Points: 487")
                        Text("⭐️ 9")
                    }
                    Spacer()
                    VStack {
                        Text("Monthly")
                            .font(.headline)
                            .foregroundColor(.orange)
                        Text("Points: 1443")
                        Text("⭐️ 5")
                    }
                }
                .foregroundColor(.white)
                .padding()
            }
            Spacer()
        }
        .padding()
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ContentView: View {
    @State private var showingLeaderboard = true
    
    var body: some View {
        VStack {
            // Toggle between Leaderboard and Profile views
            HStack {
                Button(action: {
                    showingLeaderboard = true
                }) {
                    Text("Leaderboard")
                        .padding()
                        .background(showingLeaderboard ? Color.blue : Color.gray.opacity(0.3))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                
                Button(action: {
                    showingLeaderboard = false
                }) {
                    Text("Profile")
                        .padding()
                        .background(!showingLeaderboard ? Color.blue : Color.gray.opacity(0.3))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
            }
            .padding()
            
            if showingLeaderboard {
                LeaderboardView()
            } else {
                ProfileDetailView()
            }
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

//@main
//struct YourApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}

