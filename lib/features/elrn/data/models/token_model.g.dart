// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TokenModelBoxAdapter extends TypeAdapter<TokenModelBox> {
  @override
  final int typeId = 0;

  @override
  TokenModelBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TokenModelBox(
      accessToken: fields[0] as String,
      refreshToken: fields[1] as String,
      tokenType: fields[2] as String,
      expiresIn: fields[3] as DateTime,
      scopes: (fields[4] as List).cast<String>(),
      idToken: fields[5] as String,
      authorizationAdditionalParameters:
          (fields[6] as Map).cast<String, dynamic>(),
      tokenAdditionalParameters: (fields[7] as Map).cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, TokenModelBox obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.refreshToken)
      ..writeByte(2)
      ..write(obj.tokenType)
      ..writeByte(3)
      ..write(obj.expiresIn)
      ..writeByte(4)
      ..write(obj.scopes)
      ..writeByte(5)
      ..write(obj.idToken)
      ..writeByte(6)
      ..write(obj.authorizationAdditionalParameters)
      ..writeByte(7)
      ..write(obj.tokenAdditionalParameters);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenModelBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
