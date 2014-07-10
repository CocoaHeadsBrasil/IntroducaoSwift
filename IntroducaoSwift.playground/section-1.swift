// Playground - noun: a place where people can play

import Cocoa

// *************************
// * DEFININDO VARIAVEIS
// *************************
var nomeDoEvento: String = "CocoaHeads Goiânia"
var ano: Int = 2014
var temperatura: Double = 30.4
var estaChovendo: Bool = false

// constantes
let constante = "Não vai mudar nunca" // immutable

// pode-se usar qualquer unicode!
let 🐷 = "Oinc!"
let 🐔 = "Cocorocó!"
println(🐔)

// *************************
// * Strings
// *************************
// O que é: Classe para se implementar strings. Se parece muito com as strings e c, mas com o poder de NSStrings
let umaString = "String"

// Lembrar que é uma coleção de caracteres.
for letra in umaString{
    println(letra)
}

// *************************
// * Caracteres
// *************************
// O que é: Caracteres unicode
let triste:Character = "😢"
let cerveja:Character = "🍺"
let alegre:Character = "😄"
let muitaCerveja = cerveja+cerveja+cerveja

// composition
var formulaDaFelicidade = "Como ficar alegre: \(triste) + \(cerveja) = \(alegre)"

// NSString = let
// NSMutableString = var

// *************************
// * Coleções
// *************************
// O que é: Arrays e dictionaries

var cidades = ["Goiania", "Sao Paulo", "Rio de Janeiro"]

var populacaoPorCidade = ["Goiania" : 1.5, "São Paulo" : 20.0, "Rio de Janeiro" : 10.0]

// No Beta 3 do Xcode 6, a maneira de criar array de determinado tipo mudou.
// Antigo:
//var cidadesSoStrings: String[] = ["Goiânia", "São Paulo", "Rio de Janeiro"]
// Novo:
var cidadesSoStrings: [String] = ["Goiânia", "São Paulo", "Rio de Janeiro"]

// Isto significa código seguro!

// acesasndo
cidades[1]
populacaoPorCidade["Goiania"]

// modificando
cidades += "Brasília"
cidades += ["Belo Horizonte", "Alagoas", "Fortaleza"]
cidades[0] = "Gyn"
cidades

populacaoPorCidade["Goiania"] = 100
populacaoPorCidade["Goiania"] = 1.5

// *************************
// * Loops
// *************************
// O que é: Repetições

// while(){}
// for(var i = 0; i < 10 ; ++i)
for numero in 1...10{   // closed range
    println("\(numero) ao quadrado = \(numero * numero)")
}

// No Beta 3 do Xcode 6, a maneira half closed ranges modou
// Antigo:
// for numero in 0..10{   // half closed range
// Novo:
for numero in 0..<10{   // half closed range
    println("\(numero) ao quadrado = \(numero * numero)")
}

for local in cidades{
    println("Olá \(local)")
}

// TUPLES
for (cidade, populacao) in populacaoPorCidade{
    println("Populacao em \(cidade) é: \(populacao)")
}

// *************************
// * OPTIONALS
// *************************
// O que é: Uma forma de verificar se determinado valor existe ou nao dentro da coleção. Isto não existe no Obj-C, que poderia retornar nil, porém, apenas em Objetos. Structs, C-types, etc.
// Ex.:

// ou um inteiro ou NADA! (nil)
// nil swift diferente nil obj-c
let populacaoDeSalvador:Double? = populacaoPorCidade["Salvador"]

// *************************
// * UNWRAPPING OPTIONALS
// *************************
// O que é: É uma forma de acessar o valor dos optionals.

// Valor existe?
if populacaoDeSalvador == nil {
    println("Cidade não encontrada")
}
else{
    // utiliza-se "!" para dizer que você tem certeza que o valor existe e deseja ter acesso ao seu conteúdo
    let pop = populacaoDeSalvador!
    println("A cidade de Salvador possui \(pop)M de pessoas.")
}

// Este é um padrão tão comum do Swift, que existe uma maneira melhor de implementar. Muito mais segura.
if let pop = populacaoDeSalvador{
    println("A cidade de Salvador possui \(pop)M de pessoas.")
}

// *************************
// * CONTROLES IF
// *************************
// O que é: IF típico de qualquer linguagem.

// if x {} - sem parenteses
let populacao = 100
if populacao > 10{
    println("Metropole")
}
else{
    println("Megalopole")
}

// *************************
// * Switch
// *************************
// O que é: Switch tipico

// Note: Sem breaks!
// match com qualquer objeto!

let localizacao = cidades[4]
switch localizacao{
    case "Goiania":
        println("Você esta em Goiânia")
    case "Sao Paulo", "Belo Horizonte":
        println("Você esta no sudeste!")
    default:
        println("Você esta perdido")
}

// *************************
// * Functions
// *************************
// O que é: Funcoes tipicas de qualquer linguagem

// Descomente para executar
func digaOla(){
    println("Olá!")
}

digaOla()

// Descomente para executar
//func digaOla(nome: String){
//    println("Olá \(nome)!")
//}
//
//digaOla("CocoaHeads")

// Descomente para executar
//func digaOla(nome: String = "Mundo"){
//    println("Olá \(nome)!")
//}
//
//digaOla()


// *************************
// * Functions retornando valor
// *************************
// O que é: Funcoes tipicas de qualquer li87nguagem com return

func digaOi(nome: String = "Mundo") -> String {
    return "Oi " + nome
}

// nao e necessario especificar o tipo... o compilador sabe
let oi = digaOi(nome: "CocoaHeads")

// *************************
// * Functions multiplos retornando valores (Tuples)
// *************************
// O que é: Funcoes tipicas de qualquer linguagem com return

// Descomente para executar
//func recarregueWebsite() -> (Int, String) {
//    return (404, "Não encontrado!")
//}
//
//let (status, mensagem) = recarregueWebsite()
//println("Recebido \(status): \(mensagem)")

// Descomente para executar
//func recarregueWebsite() -> (codigo: Int, mensagem: String) {
//    return (404, "Não encontrado!")
//}
//
//let status = recarregueWebsite()
//println("Recebido \(status.codigo): \(status.mensagem)")
