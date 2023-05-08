import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String firstName;
  final String lastName;

  const UserEntity({
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastName,
      ];
}
