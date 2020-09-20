# Como é formada a Chave de Acesso da NF-e

A chave de acesso da NF-e é um número de 44 dígitos
calculado de acordo com o manual de integração do
contribuinte (disponibilizado no portal do NF-e).
(02 dígitos) *** Código do Estado (UF) do emitente
(04 dígitos) *** Ano e mês da emissão da NF-e (no formato AAMM)
(14 dígitos) *** CNPJ do emitente da NF-e (CNPJ da sua Empresa)
(02 dígitos) *** Modelo do NF-e
(03 dígitos) *** Série do NF-e
(09 dígitos) *** Número da NF-e
(09 dígitos) *** Código da NF-e - Número gerado pelo sistema
(01 dígitos) *** Dígito verificador - DV (Cálculo no módulo 11).

# Como utilizar o script

Na linha de comando, execute:

$./chave_nfe.sh <CHAVE DE ACESSO>

# Por exemplo

$ ./chave_nfe.sh 51080701212344000127550010000000981364112281
Código do Estado:  51
Ano/mês emissão: 	 0807
CNPJ   emissor: 	 01212344000127
Modelo da NF-e: 	 55
Série da  NF-e: 	 001
Número da NF-e: 	 000000098
Código da NF-e: 	 136411228
Dígito Vefificador: 	 1


