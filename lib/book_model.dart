import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Book {
  String? iSBN;
  bool? like;
  String? imageURL;
  String? name;
  String? publisher;
  List<String>? authors;

  Book({this.iSBN,
    this.like,
    this.imageURL,
    this.name,
    this.publisher,
    this.authors});

  Book.fromJson(Map<String, dynamic> json) {
    iSBN = json['ISBN'];
    like = json['like'];
    imageURL = json['imageURL'];
    name = json['name'];
    publisher = json['publisher'];
    authors = json['authors'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ISBN'] = this.iSBN;
    data['like'] = this.like;
    data['imageURL'] = this.imageURL;
    data['name'] = this.name;
    data['publisher'] = this.publisher;
    data['authors'] = this.authors;
    return data;
  }
}

List<Book> books = [
  new Book(iSBN: '1234568790',
      name: "The Brothers of Kamazrov",
      imageURL: "https://m.media-amazon.com/images/I/41PTrm1-hpL._SX333_BO1,204,203,200_.jpg",
      authors: ["Dostoevsky", "Vladmir Karlos"],
      like: true,
      publisher: "Farrar, Straus and Giroux"),
  new Book(iSBN: '32789564128',
      name: "Crime and Punishment",
      imageURL: "https://m.media-amazon.com/images/P/0486415872.01._SCLZZZZZZZ_SX500_.jpg",
      authors: ["Dostoevsky"],
      like: true,
      publisher: "Farrar, Straus and Giroux"),

];