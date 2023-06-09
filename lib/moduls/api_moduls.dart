import 'package:flutter/material.dart';

class PersonData {
  final String titleName;
  final String firstName;
  final String lastName;
  final String email;
  final int age;
  final String city;
  final String state;
  final String country;
  final String image;
  final String gender;
  final String phone;

  PersonData({
    required this.titleName,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.age,
    required this.city,
    required this.state,
    required this.country,
    required this.image,
    required this.gender,
    required this.phone,
  });

  factory PersonData.fromJSON({required Map<String, dynamic> data}) {
    return PersonData(
      titleName: data['results'][0]['name']['title'],
      firstName: data['results'][0]['name']['first'],
      lastName: data['results'][0]['name']['last'],
      email: data['results'][0]['email'],
      age: data['results'][0]['dob']['age'],
      city: data['results'][0]['location']['city'],
      state: data['results'][0]['location']['state'],
      country: data['results'][0]['location']['country'],
      image: data['results'][0]['picture']['large'],
      gender: data['results'][0]['gender'],
      phone: data['results'][0]['phone'],
    );
  }
}