//
//  LoginView.swift
//  TodoList
//
//  Created by Shaheem PP on 13/09/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                //             Header
                HeaderView()
                
                //            Login Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button{
                        // do login
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                .background(Color.white)
                
                
                //            Create
                VStack{
                    Text("New Around here?")
                        .padding(.bottom, 10)
                        .padding(.top, 90)
                    
                    //                Button("Create An Account"){
                    //                    // show registration
                    //                }
                    
                    NavigationLink("Create an Account", destination: RegisterView())
                    
                    
                }
                .padding(.bottom, 90)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
    
}
