#language: pt
#encoding: utf-8

Funcionalidade: Consultar CEP

Cenario: Consulta CEP valido
	Dado que o usuario inseri um CEP valido e consulta o servico
	Entao e retornado o CEP, logradouro, complemento, bairro, localidade, uf e ibge.

Cenario: Consulta CEP inexistente
	Dado que o usuario inseri um CEP que nao exista na base dos Correios e consulta o servico
	Entao e retornada um atributo erro

Cenario: Consulta CEP com formato invalido
	Dado que o usuario inseri um CEP com formato invalido e consulta o servico
	Entao e retornado uma mensagem de erro
	
Cenario: Consulta Cidade Gravatai
	Dado que o usuario consulta o servico "https://viacep.com.br/ws/RS/Gravatai/Barroso/json/"
	Entao deve retornar um array com CEP, logradouro, complemento, bairro, localidade, uf e ibge