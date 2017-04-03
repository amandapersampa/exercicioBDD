Feature: Calcula Imposto

  Scenario Outline: Faixa de pagamento de imposto
    Given Meu salario é de <salario>
    When Eu calculo o imposto de renda
    Then eu devo pagar <taxa> reais
  Examples:
    | salario | taxa | 
    | 1710,78 | 0 | 
    | 1800 | 135 |
    | 2600 | 390 |
    | 3500 | 787,5 |
    | 4300 | 1182,5 |