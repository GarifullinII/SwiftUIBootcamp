//
//  OnboardingView.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 04.12.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    //Onboarding states:
    /*
     0 - welcome screen
     1 - add name
     3 - add gender
     */
    
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                RadialGradient(
                    colors: [
                        Color.yellow,
                        Color.green
                    ],
                    center: .center,
                    startRadius: 5,
                    endRadius: 400
                ).ignoresSafeArea()
                
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(
                        cornerRadius: 25
                    )
                    .foregroundStyle(
                        Color.green
                    )
                }
                
                // buttons
                VStack {
                    Spacer()
                    bottomButton
                }
                .padding(30)
            }
            .alert(isPresented: $showAlert) {
                return Alert(title: Text(alertTitle))
            }
        }
    }
}

#Preview {
    OnboardingView()
}

// MARK: - COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign Up" :
                onboardingState == 3 ? "Finish" :
                "Next")
        .font(.headline)
        .foregroundStyle(Color.orange)
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 10))
        .animation(nil)
        .onTapGesture {
            handleNextButtonPressed()
        }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(Color.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(Color.white), alignment: .bottom
                )
            Text("This is the one app for finding your match online!")
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .clipShape(
                    .rect(cornerRadius: 10)
                )
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            Slider(
                value: $age,
                in: 18...100,
                step: 1
            )
            .accentColor(Color.white)
            Spacer()
            Spacer()
        }
        .padding(
            30
        )
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .accentColor(Color.white)
            Picker(
                selection: $gender,
                label:
                    Text("Select a gender")
                //                    Text((gender.count > 1 ) ? gender : "Select a gender")
                //                    .font(.headline)
                //                    .foregroundStyle(Color.white)
                //                    .frame(height: 55)
                //                    .frame(maxWidth: .infinity)
                //                    .background(Color.white)
                //                    .clipShape(.rect(cornerRadius: 10))
                ,
                content: {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                })
            .pickerStyle(MenuPickerStyle())
            Spacer()
            Spacer()
        }
        .padding(
            30
        )
    }
}

// MARK: - FUNCTIONS

extension OnboardingView {
    func handleNextButtonPressed(){
        // check inputs
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlertOne(title: "Your name must be at least 3 characters long! 😟")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlertOne(title: "Please select a gender before moving forward! 😣")
                return
            }
        default:
            break
        }
        
        // go to next section
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlertOne(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
