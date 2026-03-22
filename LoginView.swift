import SwiftUI

extension Color {
    static let loginButtonColor = Color(red: 0.4, green: 0.05, blue: 0.85) //
    static let signUpTextColor = Color.gray
    static let fieldTextColor = Color.gray
    static let pinkBackground = Color(red: 0.98, green: 0.9, blue: 0.9)
}

struct LoginView: View {
    @State private var id: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView()
            
            Spacer().frame(height: 60)
            
            InputFieldView(id: $id, password: $password)
            
            Spacer().frame(height: 24)
            
            LoginButtonView()
            
            Spacer().frame(height: 12)
            
            SignUpButtonView()
            
            Spacer().frame(height: 24)
            
            SocialLoginView()
            
            Spacer().frame(height: 24)
            
            PosterImageView()
            
            Spacer()
        }
        .background(Color.pinkBackground)
    }
}

struct NavigationBarView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("로그인")
                .font(.xFont(.bold, size: 24))
                .foregroundColor(.black)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 60)
        .padding(.bottom, 16)
    }
}

struct InputFieldView: View {
    @Binding var id: String
    @Binding var password: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading, spacing: 1) {
                TextField("아이디", text: $id)
                    .font(.xFont(.semi, size: 14))
                    .foregroundColor(.fieldTextColor)
                Divider()
            }
            
            VStack(alignment: .leading, spacing: 1) {
                SecureField("비밀번호", text: $password)
                    .font(.xFont(.semi, size: 14))
                    .foregroundColor(.fieldTextColor)
                Divider()
            }
        }
        .padding(.horizontal, 24)
    }
}

struct LoginButtonView: View {
    var body: some View {
        Button(action: {
        }) {
            Text("로그인")
                .font(.xFont(.bold, size: 20))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.loginButtonColor)
                .cornerRadius(25)
        }
        .padding(.horizontal, 24)
    }
}

struct SignUpButtonView: View {
    var body: some View {
        Text("회원가입")
            .font(.xFont(.semi, size: 13))
            .foregroundColor(.signUpTextColor)
    }
}

struct SocialLoginView: View {
    var body: some View {
        HStack(spacing: 24) {
            Image(.social) // 네이버
                .resizable()
                .frame(width: 266, height: 40, alignment: .top)
            
        }
    }
}

struct PosterImageView: View {
    var body: some View {
        Image(.umc)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 408, height: 103)
            .clipped()
            .cornerRadius(8)
            .padding(.horizontal, 24)
    }
}

#Preview {
    LoginView()
}
