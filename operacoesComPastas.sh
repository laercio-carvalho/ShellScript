#!/bin/bash
PS3="Informe a Operação de arquivo desejada: "
select Pastas in criar renomear apagar nenhuma
do
echo "Escolheu $Pastas "

case $Pastas in criar)
  echo "Qual é o nome do arquivo?"
  read MinhaPasta
  mkdir $MinhaPasta
  ls;;
renomear)
  echo "Voce vai renomear a pasta"
  ls
  echo "Qual é o nome da Pasta Antiga?"
  read PastaAntiga
  echo "Qual é o nome da Pasta Antiga?"
  read PastaNova
  mv ./$PastaAntiga ./$PastaNova
  ls ;;
apagar)
  echo "Você vai apagar a pasta"
  ls
  echo "Qual é o nome da Pasta para apagar?"
  read ApagarPasta
  rm -Rf ./$ApagarPasta
  ls;;
nenhuma)
  echo "A opção $Pastas nao sera suportada"
  break;;
*)echo "ERRO: Opções nao suportada nesta etapa";;
esac
break;
done