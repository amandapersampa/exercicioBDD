Feature: ControlaTemperatura

	Scenario: temperatura do ambiente é maior que 25 graus
    Given existem 0 pessoas na sala
    When a temperatura externa aumenta
    Then o ar condicionado aumenta o frio

    Scenario: temperatura da ambiente é menor que 25 graus
    Given existem 0 pessoas na sala
    When 1 pessoa entra
    Then o ar condicionado diminui o frio
    
    Scenario: saem 10 pessoas na sala
    Given existem 0 pessoas na sala e a temperatura ambiente está constante
    When 5 pessoa saem 
    Then o ar condicionado diminui o frio
    
    Scenario: entram 10 pessoas da sala
    Given existem 0 pessoas na sala e a temperatura ambiente está constante
    When 10 pessoa entram
    Then o ar condicionado aumenta o frio 	