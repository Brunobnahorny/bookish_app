import 'package:bookish_app/src/data/datasources/api/models/book_volume_api_model.dart';
import 'package:bookish_app/src/data/datasources/api/models/book_volume_partial_api_model.dart';
import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});

  test('partial model from api', () async {
    final apiMap = (responseMap['items']! as List<dynamic>).first;

    final apiModel = BookVolumePartialApiModel.fromMap(apiMap);

    expect(
      apiModel,
      isA<BookVolumePartialEntity>(),
    );
  });

  test('parse model from api', () async {
    final apiMap = (responseMap['items']! as List<dynamic>).first;

    final apiModel = BookVolumeApiModel.fromMap(apiMap);

    expect(
      apiModel,
      isA<BookVolumePartialEntity>(),
    );
  });
}

final responseMap = {
  "kind": "books#volumes",
  "totalItems": 1111,
  "items": [
    {
      "kind": "books#volume",
      "id": "zqw4DwAAQBAJ",
      "etag": "83YVlXb1T2U",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/zqw4DwAAQBAJ",
      "volumeInfo": {
        "title": "Introdução Ao Teste De Software",
        "authors": ["Marcio Delamaro", "Mario Jino", "José Maldonado"],
        "publisher": "Elsevier Brasil",
        "publishedDate": "2013-09-10",
        "description":
            "O primeiro objetivo deste livro é servir como livro-texto para disciplinas de cursos relacionados ao desenvolvimento de software como Ciência ou Engenharia da Computação e Sistemas de Informação. Acreditamos servir, também, como um texto introdutório para profissionais da área que necessitam de uma fonte de consulta e aprendizado. Neste livro, tal profissional poderá encontrar as informações básicas relativas às técnicas de teste, bem como formas de aplicá-las nos mais variados domínios e tipos de software. Em 2006, a Sociedade Brasileira de Computação (SBC) organizou o seminário Grandes Desafios da Computação, onde foram identificados os mais importantes temas relacionados à área para a próxima década. Dentre eles, está o desenvolvimento tecnológico de qualidade e, conseqüentemente, a disponibilização de sistemas corretos, confiáveis e seguros. Nota-se também que, nos últimos anos, a indústria de software, no Brasil e no resto do mundo, tem empregado cada vez mais recursos na busca pela qualidade de seus produtos e na redução de seus custos de desenvolvimento e manutenção. Além da demanda criada pelas principais companhias de desenvolvimento de software, nota-se uma acentuada carência de profissionais aptos a atuar na área de qualidade e, mais especificamente, de teste de software. Essas são apenas algumas razões que devem incentivar a leitura deste livro. Nele, procura-se apresentar as principais técnicas de teste de software, mostrando suas origens, evolução e tendências. Mostra, também, como essas técnicas vêm sendo aplicadas em domínios específicos como o desenvolvimento de software para a Web ou baseado em aspectos. Trata, ainda, de dois tópicos importantes e fortemente relacionados ao teste e qualidade de software que são: depuração e confiabilidade. Assim, a utilização deste livro é recomendada tanto na academia, onde pode ser empregado como livro-texto de cursos relacionados à Engenharia e Qualidade de Software, quanto na indústria, como um guia para aqueles desenvolvedores que desejem implementar técnicas que melhorem suas práticas de teste, e também para aqueles que estejam dispostos a assumir uma posição que vem ganhando cada vez mais importância nas organizações de software: a de testador.",
        "industryIdentifiers": [
          {"type": "ISBN_13", "identifier": "9788535267495"},
          {"type": "ISBN_10", "identifier": "8535267492"}
        ],
        "readingModes": {"text": true, "image": false},
        "pageCount": 433,
        "printType": "BOOK",
        "categories": ["Computers"],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "1.1.2.0.preview.2",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail":
              "http://books.google.com/books/content?id=zqw4DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail":
              "http://books.google.com/books/content?id=zqw4DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "pt-BR",
        "previewLink":
            "http://books.google.com.br/books?id=zqw4DwAAQBAJ&printsec=frontcover&dq=teste&hl=&cd=1&source=gbs_api",
        "infoLink":
            "http://books.google.com.br/books?id=zqw4DwAAQBAJ&dq=teste&hl=&source=gbs_api",
        "canonicalVolumeLink":
            "https://books.google.com/books/about/Introdu%C3%A7%C3%A3o_Ao_Teste_De_Software.html?hl=&id=zqw4DwAAQBAJ"
      },
      "saleInfo": {
        "country": "BR",
        "saleability": "NOT_FOR_SALE",
        "isEbook": false
      },
      "accessInfo": {
        "country": "BR",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Introdu%C3%A7%C3%A3o_Ao_Teste_De_Software-sample-epub.acsm?id=zqw4DwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "pdf": {"isAvailable": false},
        "webReaderLink":
            "http://play.google.com/books/reader?id=zqw4DwAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {
        "textSnippet":
            "O primeiro objetivo deste livro é servir como livro-texto para disciplinas de cursos relacionados ao desenvolvimento de software como Ciência ou Engenharia da Computação e Sistemas de Informação."
      }
    },
    {
      "kind": "books#volume",
      "id": "oMBADwAAQBAJ",
      "etag": "WNJ4CP4oZ5g",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/oMBADwAAQBAJ",
      "volumeInfo": {
        "title": "Teste de desempenho com JMeter 3",
        "subtitle": "Melhore o desempenho de sua aplicação web",
        "authors": ["Bayo Erinle"],
        "publisher": "Novatec Editora",
        "publishedDate": "2017-11-30",
        "description":
            "O JMeter é uma aplicação Java projetado para carregar e testar o desempenho de aplicações web. Este livro é um ótimo ponto de partida para conhecê-lo. Ele aborda os novos recursos introduzidos com o JMeter3 e permite conhecer a fundo as novas técnicas necessárias para a avaliação do desempenho de um site. O livro começa com os aspectos básicos do teste de desempenho e nos guia pelo registro do primeiro cenário de teste, antes de se aprofundar no JMeter. Além disso, ensina a configurar o JMeter e os navegadores para nos ajudarem a registrar planos de teste. Ao avançar, você aprenderá a capturar o envio de formulários no JMeter, examinará o gerenciamento de sessões com a ferramenta e verá como se beneficiar de alguns dos componentes fornecidos pelo JMeter para a manipulação de sessões HTTP de aplicações web. Também aprenderá como o JMeter pode ajudar a monitorar testes em tempo real. Examinaremos detalhadamente a execução de testes distribuídos e veremos como nos beneficiar dos recursos do JMeter para realizá-los. Você também conhecerá algumas dicas e melhores práticas relacionadas ao teste de desempenho. Ao terminar o livro, saberá extrair o máximo do poder fornecido pelo Apache JMeter. Você aprenderá: por que o teste de desempenho é necessário e a configurar o JMeter a registrar e testar com JMeter a manipular entradas de formulário no JMeter e analisar os resultados durante o teste a gerenciar sessões de usuário em aplicações web no contexto de um teste do JMeter a monitorar os resultados do JMeter em tempo real a executar testes distribuídos com JMeter dicas e melhores práticas úteis para o trabalho com JMeter",
        "industryIdentifiers": [
          {"type": "ISBN_13", "identifier": "9788575226414"},
          {"type": "ISBN_10", "identifier": "857522641X"}
        ],
        "readingModes": {"text": true, "image": true},
        "pageCount": 178,
        "printType": "BOOK",
        "categories": ["Computers"],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": true,
        "contentVersion": "3.6.7.0.preview.3",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail":
              "http://books.google.com/books/content?id=oMBADwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail":
              "http://books.google.com/books/content?id=oMBADwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "pt-BR",
        "previewLink":
            "http://books.google.com.br/books?id=oMBADwAAQBAJ&printsec=frontcover&dq=teste&hl=&cd=2&source=gbs_api",
        "infoLink":
            "https://play.google.com/store/books/details?id=oMBADwAAQBAJ&source=gbs_api",
        "canonicalVolumeLink":
            "https://play.google.com/store/books/details?id=oMBADwAAQBAJ"
      },
      "saleInfo": {
        "country": "BR",
        "saleability": "FOR_SALE",
        "isEbook": true,
        "listPrice": {"amount": 42.4, "currencyCode": "BRL"},
        "retailPrice": {"amount": 42.4, "currencyCode": "BRL"},
        "buyLink":
            "https://play.google.com/store/books/details?id=oMBADwAAQBAJ&rdid=book-oMBADwAAQBAJ&rdot=1&source=gbs_api",
        "offers": [
          {
            "finskyOfferType": 1,
            "listPrice": {"amountInMicros": 42400000, "currencyCode": "BRL"},
            "retailPrice": {"amountInMicros": 42400000, "currencyCode": "BRL"},
            "giftable": true
          }
        ]
      },
      "accessInfo": {
        "country": "BR",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Teste_de_desempenho_com_JMeter_3-sample-epub.acsm?id=oMBADwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "pdf": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Teste_de_desempenho_com_JMeter_3-sample-pdf.acsm?id=oMBADwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink":
            "http://play.google.com/books/reader?id=oMBADwAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {
        "textSnippet":
            "O JMeter é uma aplicação Java projetado para carregar e testar o desempenho de aplicações web."
      }
    },
    {
      "kind": "books#volume",
      "id": "sQFyDwAAQBAJ",
      "etag": "egTOHJbKs/o",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/sQFyDwAAQBAJ",
      "volumeInfo": {
        "title": "Teste",
        "authors": ["Teste"],
        "publisher": "Clube de Autores",
        "publishedDate": "2015-11-13",
        "description": "teste",
        "industryIdentifiers": [
          {"type": "OTHER", "identifier": "PKEY:CLDEAU26730"}
        ],
        "readingModes": {"text": false, "image": true},
        "pageCount": 377,
        "printType": "BOOK",
        "categories": ["House & Home"],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "0.11.1.0.preview.1",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail":
              "http://books.google.com/books/content?id=sQFyDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail":
              "http://books.google.com/books/content?id=sQFyDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "pt-BR",
        "previewLink":
            "http://books.google.com.br/books?id=sQFyDwAAQBAJ&printsec=frontcover&dq=teste&hl=&cd=3&source=gbs_api",
        "infoLink":
            "http://books.google.com.br/books?id=sQFyDwAAQBAJ&dq=teste&hl=&source=gbs_api",
        "canonicalVolumeLink":
            "https://books.google.com/books/about/Teste.html?hl=&id=sQFyDwAAQBAJ"
      },
      "saleInfo": {
        "country": "BR",
        "saleability": "NOT_FOR_SALE",
        "isEbook": false
      },
      "accessInfo": {
        "country": "BR",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {"isAvailable": false},
        "pdf": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Teste-sample-pdf.acsm?id=sQFyDwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink":
            "http://play.google.com/books/reader?id=sQFyDwAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {"textSnippet": "teste"}
    },
    {
      "kind": "books#volume",
      "id": "afB7DwAAQBAJ",
      "etag": "pDAq/mRSiFg",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/afB7DwAAQBAJ",
      "volumeInfo": {
        "title": "Qualidade E Teste Em Software",
        "authors": ["Fernando Gandara"],
        "publisher": "Clube de Autores",
        "publishedDate": "2012-03-06",
        "description":
            "Muito se fala em testes de software, como necessidade, mas que nem sempre é levado em conta com a seriedade que é preciso. Quando se tem um projeto, de desenvolver um sistema ou uma manutenção, leva-se em conta o desenvolvimento, mas quando ocorre algum atraso, a área de testes sempre é penalizada, diminuindo o período de testes e sendo pressionada para a liberação da nova versão do produto. Queremos neste livro, orientar que a qualidade começa antes dos testes e orientar o que são os testes necessários, com uma ideia de montagem da equipe de testes e orientar nos princípios básicos para isto. Este conhecimento foi adquirido durante mais de 10 anos trabalhando nos provedores de softwares e soluções de requisitos, versionamento, gerenciamento de aplicações e acompanhamento do ciclo de vida de uma aplicação, em vários países na América Latina. Com esta leitura, iremos transmitir para você o que é o teste de caixa branca e caixa preta, testes funcionais, testes de carga e a diferença para testes de stress, bem como orientar nos trabalhos de requisitos e versionamento. Também falo como criei o termo do Teste Caminho Suave. Atualmente, podemos encontrar empresas especializadas em testes automatizados, para auxiliar o seu trabalho, mas é necessário sabre o que irá solicitar.",
        "industryIdentifiers": [
          {"type": "OTHER", "identifier": "PKEY:CLDEAU7545"}
        ],
        "readingModes": {"text": false, "image": true},
        "pageCount": 94,
        "printType": "BOOK",
        "categories": ["Technology & Engineering"],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "0.37.1.0.preview.1",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail":
              "http://books.google.com/books/content?id=afB7DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail":
              "http://books.google.com/books/content?id=afB7DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "pt-BR",
        "previewLink":
            "http://books.google.com.br/books?id=afB7DwAAQBAJ&printsec=frontcover&dq=teste&hl=&cd=4&source=gbs_api",
        "infoLink":
            "http://books.google.com.br/books?id=afB7DwAAQBAJ&dq=teste&hl=&source=gbs_api",
        "canonicalVolumeLink":
            "https://books.google.com/books/about/Qualidade_E_Teste_Em_Software.html?hl=&id=afB7DwAAQBAJ"
      },
      "saleInfo": {
        "country": "BR",
        "saleability": "NOT_FOR_SALE",
        "isEbook": false
      },
      "accessInfo": {
        "country": "BR",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {"isAvailable": false},
        "pdf": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Qualidade_E_Teste_Em_Software-sample-pdf.acsm?id=afB7DwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink":
            "http://play.google.com/books/reader?id=afB7DwAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {
        "textSnippet":
            "Muito se fala em testes de software, como necessidade, mas que nem sempre é levado em conta com a seriedade que é preciso."
      }
    },
    {
      "kind": "books#volume",
      "id": "6G2CCwAAQBAJ",
      "etag": "LXEp4ke/HMY",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/6G2CCwAAQBAJ",
      "volumeInfo": {
        "title": "Test-Driven Development",
        "subtitle": "Teste e Design no Mundo Real com .NET",
        "authors": ["Mauricio Aniche"],
        "publisher": "Editora Casa do Código",
        "publishedDate": "2014-04-16",
        "description":
            "Por que não testamos software? Porque é caro? Porque é demorado? Porque é chato? Testes automatizados são a solução para todos esses problemas. Aprenda a escrever um programa que testa seu programa de forma rápida, barata e produtiva, e aumente a qualidade do seu produto final. Neste livro, você aprenderá sobre TDD, uma das práticas ágeis de desenvolvimento de software mais populares, através da linguagem C#. TDD faz o desenvolvedor escrever o teste antes mesmo de implementar o código. Essa simples inversão na maneira de se trabalhar faz com o que o desenvolvedor escreva código mais testado, com menos bugs, e inclusive com mais qualidade. Seja profissional, teste seu software! Todos os exemplos desse livro foram escritos em C#.",
        "industryIdentifiers": [
          {"type": "ISBN_13", "identifier": "9788566250749"},
          {"type": "ISBN_10", "identifier": "8566250745"}
        ],
        "readingModes": {"text": true, "image": true},
        "pageCount": 172,
        "printType": "BOOK",
        "categories": ["Computers"],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": true,
        "contentVersion": "1.8.8.0.preview.3",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail":
              "http://books.google.com/books/content?id=6G2CCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail":
              "http://books.google.com/books/content?id=6G2CCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "pt-BR",
        "previewLink":
            "http://books.google.com.br/books?id=6G2CCwAAQBAJ&printsec=frontcover&dq=teste&hl=&cd=5&source=gbs_api",
        "infoLink":
            "https://play.google.com/store/books/details?id=6G2CCwAAQBAJ&source=gbs_api",
        "canonicalVolumeLink":
            "https://play.google.com/store/books/details?id=6G2CCwAAQBAJ"
      },
      "saleInfo": {
        "country": "BR",
        "saleability": "FOR_SALE",
        "isEbook": true,
        "listPrice": {"amount": 49.9, "currencyCode": "BRL"},
        "retailPrice": {"amount": 49.9, "currencyCode": "BRL"},
        "buyLink":
            "https://play.google.com/store/books/details?id=6G2CCwAAQBAJ&rdid=book-6G2CCwAAQBAJ&rdot=1&source=gbs_api",
        "offers": [
          {
            "finskyOfferType": 1,
            "listPrice": {"amountInMicros": 49900000, "currencyCode": "BRL"},
            "retailPrice": {"amountInMicros": 49900000, "currencyCode": "BRL"},
            "giftable": true
          }
        ]
      },
      "accessInfo": {
        "country": "BR",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Test_Driven_Development-sample-epub.acsm?id=6G2CCwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "pdf": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Test_Driven_Development-sample-pdf.acsm?id=6G2CCwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink":
            "http://play.google.com/books/reader?id=6G2CCwAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {"textSnippet": "Por que não testamos software?"}
    },
    {
      "kind": "books#volume",
      "id": "SGmCCwAAQBAJ",
      "etag": "9G+FgYVlRqk",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/SGmCCwAAQBAJ",
      "volumeInfo": {
        "title": "Test-Driven Development",
        "subtitle": "Teste e Design no Mundo Real com PHP",
        "authors": ["Andre Cardoso", "Mauricio Aniche"],
        "publisher": "Editora Casa do Código",
        "publishedDate": "2015-01-23",
        "description":
            "Por que não testamos software? Porque é caro? Porque é demorado? Porque é chato? Testes automatizados são a solução para todos esses problemas. Aprenda a escrever um programa que testa seu programa de forma rápida, barata e produtiva, e aumente a qualidade do seu produto final. Neste livro, você aprenderá sobre TDD, uma das práticas ágeis de desenvolvimento de software mais populares. TDD faz o desenvolvedor escrever o teste antes mesmo de implementar o código. Essa simples inversão na maneira de se trabalhar faz com o que o desenvolvedor escreva um código mais testado, com menos bugs, e, inclusive, com mais qualidade. Seja profissional, teste seu software! Todos os exemplos desse livro foram escritos em PHP.",
        "industryIdentifiers": [
          {"type": "ISBN_13", "identifier": "9788555190629"},
          {"type": "ISBN_10", "identifier": "8555190622"}
        ],
        "readingModes": {"text": true, "image": true},
        "pageCount": 247,
        "printType": "BOOK",
        "categories": ["Computers"],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": true,
        "contentVersion": "0.6.6.0.preview.3",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail":
              "http://books.google.com/books/content?id=SGmCCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail":
              "http://books.google.com/books/content?id=SGmCCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "pt-BR",
        "previewLink":
            "http://books.google.com.br/books?id=SGmCCwAAQBAJ&printsec=frontcover&dq=teste&hl=&cd=6&source=gbs_api",
        "infoLink":
            "https://play.google.com/store/books/details?id=SGmCCwAAQBAJ&source=gbs_api",
        "canonicalVolumeLink":
            "https://play.google.com/store/books/details?id=SGmCCwAAQBAJ"
      },
      "saleInfo": {
        "country": "BR",
        "saleability": "FOR_SALE",
        "isEbook": true,
        "listPrice": {"amount": 49.9, "currencyCode": "BRL"},
        "retailPrice": {"amount": 49.9, "currencyCode": "BRL"},
        "buyLink":
            "https://play.google.com/store/books/details?id=SGmCCwAAQBAJ&rdid=book-SGmCCwAAQBAJ&rdot=1&source=gbs_api",
        "offers": [
          {
            "finskyOfferType": 1,
            "listPrice": {"amountInMicros": 49900000, "currencyCode": "BRL"},
            "retailPrice": {"amountInMicros": 49900000, "currencyCode": "BRL"},
            "giftable": true
          }
        ]
      },
      "accessInfo": {
        "country": "BR",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Test_Driven_Development-sample-epub.acsm?id=SGmCCwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "pdf": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Test_Driven_Development-sample-pdf.acsm?id=SGmCCwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink":
            "http://play.google.com/books/reader?id=SGmCCwAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {"textSnippet": "Por que não testamos software?"}
    },
    {
      "kind": "books#volume",
      "id": "x2olDAAAQBAJ",
      "etag": "+IQUm7ROBtg",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/x2olDAAAQBAJ",
      "volumeInfo": {
        "title": "Livro Como Passar no Teste de Proficiência da ICAO",
        "subtitle": "",
        "authors": [" Daniel Celso Calazans", "Marina Renata de Menezes"],
        "publisher": "Editora Bianch",
        "publishedDate": "2015-06-03",
        "description":
            "Como passar no Teste de Proficiência? Esta foi uma pergunta feita por um piloto brasileiro com experiência nacional e internacional na atividade aérea. Embora fluente na língua inglesa e também em fraseologia de tráfego aéreo, nãofoi bem sucedido no teste de proficiência aplicado aos pilotos e controladores como uma exigência da OACI (Organização da Aviação Civil Internacional), também conhecida por sua sigla em inglês, ICAO (International Civil Aviation Organization). Este tipo de teste exige o conhecimento de alguns técnicas que poderão surpreender os profissionais mais preparados, pois nem sempre o candidato sabe o que e como será avaliado. O desconhecimento da finalidade do teste tem levado vários pilotos e controladores proficientes no idioma inglês, os quais também dominam a fraseologia de tráfego aéreo, a fracassarem na prova.",
        "industryIdentifiers": [
          {"type": "ISBN_13", "identifier": "9788566282320"},
          {"type": "ISBN_10", "identifier": "8566282329"}
        ],
        "readingModes": {"text": true, "image": true},
        "pageCount": 112,
        "printType": "BOOK",
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": true,
        "contentVersion": "1.1.1.0.preview.3",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail":
              "http://books.google.com/books/content?id=x2olDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail":
              "http://books.google.com/books/content?id=x2olDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "pt-BR",
        "previewLink":
            "http://books.google.com.br/books?id=x2olDAAAQBAJ&printsec=frontcover&dq=teste&hl=&cd=7&source=gbs_api",
        "infoLink":
            "https://play.google.com/store/books/details?id=x2olDAAAQBAJ&source=gbs_api",
        "canonicalVolumeLink":
            "https://play.google.com/store/books/details?id=x2olDAAAQBAJ"
      },
      "saleInfo": {
        "country": "BR",
        "saleability": "FOR_SALE",
        "isEbook": true,
        "listPrice": {"amount": 24.9, "currencyCode": "BRL"},
        "retailPrice": {"amount": 24.9, "currencyCode": "BRL"},
        "buyLink":
            "https://play.google.com/store/books/details?id=x2olDAAAQBAJ&rdid=book-x2olDAAAQBAJ&rdot=1&source=gbs_api",
        "offers": [
          {
            "finskyOfferType": 1,
            "listPrice": {"amountInMicros": 24900000, "currencyCode": "BRL"},
            "retailPrice": {"amountInMicros": 24900000, "currencyCode": "BRL"},
            "giftable": true
          }
        ]
      },
      "accessInfo": {
        "country": "BR",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Livro_Como_Passar_no_Teste_de_Profici%C3%AAn-sample-epub.acsm?id=x2olDAAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "pdf": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Livro_Como_Passar_no_Teste_de_Profici%C3%AAn-sample-pdf.acsm?id=x2olDAAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink":
            "http://play.google.com/books/reader?id=x2olDAAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {"textSnippet": "Como passar no Teste de Proficiência?"}
    },
    {
      "kind": "books#volume",
      "id": "rl3fZwEACAAJ",
      "etag": "qGEHPxDqU8Q",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/rl3fZwEACAAJ",
      "volumeInfo": {
        "title": "Guia completo ao teste de software",
        "authors": ["W. Hetzel"],
        "publishedDate": "1987",
        "description":
            "O que e teste de software; Metodos e ferramentas de teste; Gerenciamento dos testes.",
        "industryIdentifiers": [
          {"type": "ISBN_10", "identifier": "8570014708"},
          {"type": "ISBN_13", "identifier": "9788570014702"}
        ],
        "readingModes": {"text": false, "image": false},
        "pageCount": 206,
        "printType": "BOOK",
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "preview-1.0.0",
        "language": "pt-BR",
        "previewLink":
            "http://books.google.com.br/books?id=rl3fZwEACAAJ&dq=teste&hl=&cd=8&source=gbs_api",
        "infoLink":
            "http://books.google.com.br/books?id=rl3fZwEACAAJ&dq=teste&hl=&source=gbs_api",
        "canonicalVolumeLink":
            "https://books.google.com/books/about/Guia_completo_ao_teste_de_software.html?hl=&id=rl3fZwEACAAJ"
      },
      "saleInfo": {
        "country": "BR",
        "saleability": "NOT_FOR_SALE",
        "isEbook": false
      },
      "accessInfo": {
        "country": "BR",
        "viewability": "NO_PAGES",
        "embeddable": false,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {"isAvailable": false},
        "pdf": {"isAvailable": false},
        "webReaderLink":
            "http://play.google.com/books/reader?id=rl3fZwEACAAJ&hl=&source=gbs_api",
        "accessViewStatus": "NONE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {
        "textSnippet":
            "O que e teste de software; Metodos e ferramentas de teste; Gerenciamento dos testes."
      }
    },
    {
      "kind": "books#volume",
      "id": "_ySzDQAAQBAJ",
      "etag": "P4pVyhbSaXA",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/_ySzDQAAQBAJ",
      "volumeInfo": {
        "title": "Avaliação motora em educação física",
        "subtitle": "Teste KTK",
        "authors": [
          "José Irineu Gorla",
          "Paulo Ferreira de Araújo",
          "José Luiz Rodrigues"
        ],
        "publisher": " Phorte Editora LTDA",
        "publishedDate": "2010-12-14",
        "description":
            "Este livro oferece um referencial teórico e prático acerca do Teste de Coordenação Corporal para Crianças - KTK (Körperkoordinations Test für Kinder), importante ferramenta de avaliação motora para auxiliar os profi ssionais da área de Educação Física, em particular aqueles que atuam com a Educação Física Adaptada.",
        "industryIdentifiers": [
          {"type": "ISBN_13", "identifier": "9788576555261"},
          {"type": "ISBN_10", "identifier": "8576555263"}
        ],
        "readingModes": {"text": true, "image": true},
        "pageCount": 168,
        "printType": "BOOK",
        "categories": ["Education"],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": true,
        "contentVersion": "2.4.6.0.preview.3",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail":
              "http://books.google.com/books/content?id=_ySzDQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail":
              "http://books.google.com/books/content?id=_ySzDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "pt-BR",
        "previewLink":
            "http://books.google.com.br/books?id=_ySzDQAAQBAJ&printsec=frontcover&dq=teste&hl=&cd=9&source=gbs_api",
        "infoLink":
            "https://play.google.com/store/books/details?id=_ySzDQAAQBAJ&source=gbs_api",
        "canonicalVolumeLink":
            "https://play.google.com/store/books/details?id=_ySzDQAAQBAJ"
      },
      "saleInfo": {
        "country": "BR",
        "saleability": "FOR_SALE",
        "isEbook": true,
        "listPrice": {"amount": 18.2, "currencyCode": "BRL"},
        "retailPrice": {"amount": 18.2, "currencyCode": "BRL"},
        "buyLink":
            "https://play.google.com/store/books/details?id=_ySzDQAAQBAJ&rdid=book-_ySzDQAAQBAJ&rdot=1&source=gbs_api",
        "offers": [
          {
            "finskyOfferType": 1,
            "listPrice": {"amountInMicros": 18200000, "currencyCode": "BRL"},
            "retailPrice": {"amountInMicros": 18200000, "currencyCode": "BRL"},
            "giftable": true
          }
        ]
      },
      "accessInfo": {
        "country": "BR",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Avalia%C3%A7%C3%A3o_motora_em_educa%C3%A7%C3%A3o_f%C3%ADsica-sample-epub.acsm?id=_ySzDQAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "pdf": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Avalia%C3%A7%C3%A3o_motora_em_educa%C3%A7%C3%A3o_f%C3%ADsica-sample-pdf.acsm?id=_ySzDQAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink":
            "http://play.google.com/books/reader?id=_ySzDQAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {
        "textSnippet":
            "Este livro oferece um referencial teórico e prático acerca do Teste de Coordenação Corporal para Crianças - KTK (Körperkoordinations Test für Kinder), importante ferramenta de avaliação motora para auxiliar os profi ssionais da ..."
      }
    },
    {
      "kind": "books#volume",
      "id": "Vi1CEAAAQBAJ",
      "etag": "+7VRDa5gXmc",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/Vi1CEAAAQBAJ",
      "volumeInfo": {
        "title": "Universo Bebê e Criança Ed. 25 - Teste do Pezinho",
        "authors": ["Klub Editorial"],
        "publisher": "Edicase Negócios Editoriais Ltda",
        "publishedDate": "2021-09-09",
        "description":
            "O teste do pezinho pode salvar vidas e prevenir uma série de problemas que impactam no desenvolvimento do bebê. Agora são 50 testes. Amanda Françozo fala das mudanças ocorridas em sua vida com o nascimento de Vitória. Como ser pai? Esse aprendizado só acontece com a participação do homem na vida do filho, para gerar o vínculo afetivo. Trouxemos também seis dicas para as férias de verão com bebês e crianças e os cuidados da estação.",
        "readingModes": {"text": false, "image": true},
        "printType": "BOOK",
        "categories": ["Family & Relationships"],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "0.1.0.0.preview.1",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail":
              "http://books.google.com/books/content?id=Vi1CEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail":
              "http://books.google.com/books/content?id=Vi1CEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "pt-BR",
        "previewLink":
            "http://books.google.com.br/books?id=Vi1CEAAAQBAJ&printsec=frontcover&dq=teste&hl=&cd=10&source=gbs_api",
        "infoLink":
            "https://play.google.com/store/books/details?id=Vi1CEAAAQBAJ&source=gbs_api",
        "canonicalVolumeLink":
            "https://play.google.com/store/books/details?id=Vi1CEAAAQBAJ"
      },
      "saleInfo": {
        "country": "BR",
        "saleability": "FOR_SALE",
        "isEbook": true,
        "listPrice": {"amount": 14.9, "currencyCode": "BRL"},
        "retailPrice": {"amount": 14.9, "currencyCode": "BRL"},
        "buyLink":
            "https://play.google.com/store/books/details?id=Vi1CEAAAQBAJ&rdid=book-Vi1CEAAAQBAJ&rdot=1&source=gbs_api",
        "offers": [
          {
            "finskyOfferType": 1,
            "listPrice": {"amountInMicros": 14900000, "currencyCode": "BRL"},
            "retailPrice": {"amountInMicros": 14900000, "currencyCode": "BRL"},
            "giftable": true
          }
        ]
      },
      "accessInfo": {
        "country": "BR",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {"isAvailable": false},
        "pdf": {
          "isAvailable": true,
          "acsTokenLink":
              "http://books.google.com.br/books/download/Universo_Beb%C3%AA_e_Crian%C3%A7a_Ed_25_Teste_do-sample-pdf.acsm?id=Vi1CEAAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink":
            "http://play.google.com/books/reader?id=Vi1CEAAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {
        "textSnippet":
            "O teste do pezinho pode salvar vidas e prevenir uma série de problemas que impactam no desenvolvimento do bebê."
      }
    }
  ]
};
