import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

class Token {
  Token({
    this.tokenType,
    this.token,
    this.expiresAt,
  });

  String tokenType;
  String token;
  String expiresAt;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
    tokenType: json["token_type"],
    token: json["token"],
    expiresAt: json["expires_at"],
  );

  Map<String, dynamic> toJson() => {
    "token_type": tokenType,
    "token": token,
    "expires_at": expiresAt,
  };
}
