#!/bin/bash
#docker=/usr/bin/docker
echo "Operacoes Iniciais com o Docker"
echo "O que voce deseja fazer?"
select Docker in visualizarDockers renomearDockers apagarDockers nenhuma
do
echo "Escolheu $Docker "
#continue
case $Docker in
visualizarDockers)
  echo "Visualizando Dockers Ativos: "
  docker ps
  break;;
renomearDockers)
  echo "teste 2"
  ls
  break;;
apagarDockers)
  echo "teste 3"
  ls
  break;;
nenhuma)
  echo "teste 4"
  ls
  break;;
*)
  echo "Opcao invalida!"
  break;;

esac
done