01 - Atividade Prática MongoDB - Etapa 01

Show databases

Use aula

Show collections

db.livros.count() Resultado:431

db.livros.count({pageCount:{$lte: 100}}) Resultado:166

db.livros.count({isbn:{$gte: " 1933988746"}}) Resultado:428

db.livros.count({isbn:{$lte: " 1617200000"}})

db.livros.count({isbn:{$lte: " 1617200000"}},{“title”:1})

Resultado:Graphics File Formats

db.livros.insertMany([{"title":"SaciPererê","isbn":"100","pageCount":0,"publishedDate":ISODate("2000-10-01T07:00:00Z"), "status" : "PUBLISH", "authors" : [ ],"categories" : [ ]},{"title":"ACuca","isbn":"99","pageCount":0,"publishedDate":ISODate("2000-10-01T07:00:00Z"), "status" : "PUBLISH","authors" : [ ],"categories" : [ ]},{"title":"Curupira","isbn":"98","pageCount":0,"publishedDate":ISODate("2000-10-01T07:00:00Z"), "status":"PUBLISH", "authors":[ ], "categories" : [ ]},{"title":"JecaTatu","isbn":"97","pageCount":0,"publishedDate":ISODate("2000-10-01T07:00:00Z"),"status":"PUBLISH", "authors" : [ ],"categories" : [ ]}])

db.livros.count({isbn:{$lte: " 10"}}) Resultado:4

db.livros.count({isbn:{$lte: " 100"}}) Resultado:5

db.livros.find({isbn:{$lte: " 10"}}).limit(2) Resultado:’Comprehensive Networking Glossary and Acronym Guide’, ’Personal Videoconferencing’

O comando db.livros.find({isbn:{$lte: "100"}}).pretty().skip(2) mostra todos os livres com isbn menor ou igual a 100 e pula dois primeiros resultados apresentando os 3 últimos livros ao em vez de 5 livros Resultado:”Multimedia Computing”, “Implementing SAP R/3, Second Edition”, “SaciPererê”

db.livros.find({title: /Windows/})

O comando mostra todos os livros que possuem a palavra “Windows” no campo “title”, ele retorna 11 livros

db.livros.find({},{“pageCount”:1,”_id”:0}).sort({pageCount:--1}).limit(2)
Resultado:1101 e 1096
