//
//  QuizView.swift
//  FinalProject
//
//  Created by Averie Dow on 6/28/23.
//

import SwiftUI


struct Question {
    let text: String
    let options: [String]
    let correctAnswerIndex: Int
}
struct Book {
    let title: String
    let author: String
}
struct QuizView: View {
    @State private var isQuizShowing = false
    @State private var currentQuestionIndex = 0
    @State private var userAnswers: [Int] = []
    let questions = [
            Question(text: "What is your favorite genre?", options: ["Mystery", "Romance", "Fantasy"], correctAnswerIndex: 2),
            Question(text: "Which setting do you prefer?", options: ["Historical", "Contemporary", "Science Fiction"], correctAnswerIndex: 1),
            Question(text: "Do you enjoy character-driven or plot-driven stories?", options: ["Character-driven", "Plot-driven", "Both"], correctAnswerIndex: 0),
            Question(text: "How long do you prefer your books?", options: ["Short and sweet", "Moderate length", "Epic saga"], correctAnswerIndex: 1),
            Question(text: "Pick a writing style:", options: ["Descriptive and poetic", "Straightforward and concise", "Imaginative and whimsical"], correctAnswerIndex: 2)
        ]
    let bookRecommendations = [
            Book(title: "The Night Circus", author: "Erin Morgenstern"),
            Book(title: "Pride and Prejudice", author: "Jane Austen"),
            Book(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling"),
            Book(title: "To Kill a Mockingbird", author: "Harper Lee"),
            Book(title: "The Hobbit", author: "J.R.R. Tolkien"),
            Book(title: "My Year of Rest and Relaxation", author: "Otessa Moshfegh")
        ]
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            
            VStack {
                Text("Welcome to the Book Reccomendation Quiz!")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.115, saturation: 0.385, brightness: 0.171))
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button(action: {
                    isQuizShowing = true
                }) {
                    Text("Start Quiz")
                        .font(.title)
                        .padding()
                        .background(Color(red: 1.002, green: 0.584, blue: -0.009))
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }}
            .sheet(isPresented: $isQuizShowing) {
                    if currentQuestionIndex < questions.count {
                        QuestionView(question: questions[currentQuestionIndex]) { userAnswer in
                                userAnswers.append(userAnswer)
                                currentQuestionIndex += 1
                            }
                        } else {
                            ResultView(userAnswers: userAnswers, bookRecommendations: bookRecommendations)
                        }
                    }
                }
            }
struct QuestionView: View {
    let question: Question
    let didSelectAnswer: (Int) -> Void
    
    var body: some View {
        VStack {
            Text(question.text)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            ForEach(0..<question.options.count) { index in
                Button(action: {
                    didSelectAnswer(index)
                }) {
                    Text(question.options[index])
                        .font(.title)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom, 10)
            }
        }
    }
}
struct ResultView: View {
    let userAnswers: [Int]
    let bookRecommendations: [Book]
    
    var body: some View {
        VStack {
            Text("Quiz Result")
                .font(.largeTitle)
                .padding()
            
            Text("Congratulations!")
                .font(.title)
                .padding()
            
            Text("Based on your answers, we recommend the following book:")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            let recommendationIndex = calculateRecommendationIndex()
                        if recommendationIndex != -1 {
                            Text(bookRecommendations[recommendationIndex].title)
                                .font(.title)
                                .bold()
                                .padding()
                            
                            Text("by \(bookRecommendations[recommendationIndex].author)")
                                .font(.title)
                                .padding()
                        } else {
                            Text("Unable to provide a book recommendation.")
                                .font(.title)
                                .padding()
                        }
                    }
                }
    func calculateRecommendationIndex() -> Int {
            // Custom logic to calculate the recommendation based on user answers
            // Example: Summing up user answers and returning the index based on a threshold
            let totalAnswers = userAnswers.reduce(0, +)
            let threshold = totalAnswers % bookRecommendations.count
            return threshold
        }
    }






struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
