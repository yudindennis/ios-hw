
import Foundation

struct ValidationData {
    let defaultLogin = "Login@mail.ru"
    let defaultPassword = "Password%12"
    let invalidEmailAndPassword = "Invalid Email and password"
    let invalidEmailText = "Invalid Email"
    let invalidPasswordText = "Password should be longer than 6 characters and contains at least one:\n- uppercase and lowercase letter (A, z)\n- numeric character (0-9)\n- special character (any character your environment will accept that is not an uppercase or a lowercase letter or a numeric character — for example, !, %, @, #, and so on)"
}
