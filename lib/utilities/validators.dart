validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter the email to proceed.';
  } else {
    return null;
  }
}

validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your password.';
  } else if (value.length < 6) {
    return 'Password is too short';
  } else {
    return null;
  }
}

validateConfirmPassword(String? confirmPwd, String? pwd) {
  if (confirmPwd!.trim() != pwd!.trim()) {
    return 'The passwords don\'t match.';
  } else {
    return null;
  }
}
