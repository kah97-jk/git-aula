programa {
      
     inclua biblioteca Texto --> T 

     const inteiro total = 25
     inteiro quant, ponteiro = 0, n
     caracter opcao, resposta
     cadeia nome[total], busca, enter, msg
     cadeia data_de_entrega [25], nome_do_proprietario [25], equipamento [25], problema_relatado [25]
     logico encontrado = falso
 funcao inicio()
    {
      limpa()
		 escreva("Quantos clientes gostaria de cadastrar?\n")
		 leia(quant)

		 se(quant > 0)
		{
      se(quant <= total)
    	{
         menu() //Redireciona o usuário para a função menu
      }
      
		}
		 senao 
		{
		
	      limpa()
           escreva("/n/n ATENÇÃO: Quantidade inválida! Tente novamente!")
           
          }
    }

  funcao menu() 
  {
     limpa()
           escreva(".===========================================.\n")
           escreva("|             MENU DE CADASTRO              |\n")
           escreva("'==========================================='\n\n")
           escreva("1 - Cadastre seu equipamento: \n")
           escreva("2 - Listar equipamentos em execução: \n")
           escreva("3 - Apresentar fila de equipamentos: \n")
           escreva("4 - Porximo equipamento a ser atendido: \n")
           escreva("5 - buscar equipamento: \n")
           escreva("6 - exibir status da fila: \n")
           escreva("7 - apresentação dos equipamentso consertados: \n")
           escreva("8 - Sair do sistema... \n")

           escreva("=============================================\n\n")
           escreva("Opção: ")
           leia(opcao)

           escolha(opcao)
           {
           caso '1':
           	{
           		cadastro() //chama função cadastro
           		pare
           	}
           caso '2':
           {
           	listar()      //chama a função listar
                    pare
       }
           caso '3':
           {
           	sair()        //Chama a função sair
           	pare
           }	

           caso contrario:
           {
           limpa()
           escreva("/n/n ATENÇÃO: Opção inválida!!")
           menu()
           pare
           }
           }
       }
  funcao cadastro()
           {
       
       	 se (ponteiro < quant)
       	 {
       	 msg = "Cadastro             |" // personaliza o topo com uma msg
           topo()
           
       	 escreva("Informe o nome do(a) cliente:\n")
       	 leia(nome[ponteiro])
       	 nome[ponteiro] = T.caixa_alta(nome[ponteiro]) //altera o nome para caixa alta
       	 
       	 msg = "Cadastro             |" // personaliza o topo com uma msg
           topo()

       	  limpa()
       	  escreva("Informe a data de entrega: ", data_de_entrega[ponteiro] , "\n")
       	  leia(data_de_entrega[ponteiro]) 

           msg = "Cadastro             |" // personaliza o topo com uma msg
           topo()

          limpa()
          escreva("Informe a marca do equipamento:" , equipamento[ponteiro], "\n")
       	  leia(equipamento[ponteiro])
       	
       	  msg = "Cadastro             |" // personaliza o topo com uma msg
           topo()

          limpa()
          escreva("Informe o problema: \n")
       	  leia(problema_relatado[ponteiro])
       	 
       	 msg = "Cadastro             |" // personaliza o topo com uma msg
           topo()

       	 ponteiro++  //incrementar a variavel ponteiro 
           //ponteiro = ponteiro + 1 
       	 limpa()
       	 escreva("\n\nAVISO: Cadastro realizado com sucesso!")
       	 
       	 menu()   //Retorna para a função
       	 }
       	 senao
       	 {
       	 limpa()
       	 escreva("\n\n ATENÇÃO: Limite de cadastros atingido!")
         }
       	 menu()     //Retorno para função menu

         }
   funcao sair()
      
           {
          	
           limpa()
       	 escreva("Lista dos clientes cadastrados\n\n")
           limpa()
       	 escreva("Finalizando o sistema em 05 segundos. . . ")
       	

           limpa()
       	 escreva("Finalizando o sistema em 04 segundos. . . ")
       	 

       	 limpa()
       	 escreva("Finalizando o sistema em 03 segundos. . . ")
       	
       	 limpa()
       	
       	 escreva("Finalizando o sistema em 02 segundos. . . ")
       	 

       	 limpa()
       	 escreva("Finalizando o sistema em 01 segundos. . . ")
       

       	 limpa()
       	 escreva("Finalizando o sistema em 00 segundos. . . ")
       	 

           limpa()
        	 escreva("Sistema finalizado com sucesso!\n\n\n\n\n\n\n")
           escreva("==================================================\n\n")

       	
           }
  funcao listar()
           {
           limpa()
           se(ponteiro == 0)
          	{
           escreva("AVISO: Nenhum registro encontrado!")
           
           menu()
           }
           senao
           {
           msg ="Lista de clientes    |" // personaliza o topo com uma msg
           topo()
          
           escreva("Lista dos clientes cadastrados:\n")
           escreva("==================================================\n\n")
           //inicio do laço para exebir os registros dos clientes
           para(n = 0; n < ponteiro; n++)
           {
           escreva("-Nome: ", nome[n], " - Data:  ", data_de_entrega[n], " -Marca: ", equipamento[n], " -Problema: " , problema_relatado[n],"\n")
           }

           retornar()
          
           }
           }
  funcao buscar()
           
           {
           msg ="Busca de clientes    |" // personaliza o topo com uma msg
           topo()
               
           escreva(" Informe o nome do(a) cliente a ser procurado:\n")
           leia(busca)
           busca = T.caixa_alta(busca)
           encontrado = falso

           para(n = 0; n < ponteiro; n++)
           {
           se(nome[n] == busca)
           {
           escreva(n+1, "- Nome: ", nome[n], " Data: ", data_de_entrega[n], " -Marca: ", equipamento[n], " -Problema: " , problema_relatado[n],"\n")
           encontrado = verdadeiro
           }
           	
           		
           }

           se(encontrado == falso)
           {
           msg ="Busca de clientes    |" // personaliza o topo com uma msg
           topo()
           escreva("Nenhum cliente foi encontrado com o nome ", busca, ".")
           }
           	
           retornar()
          	
           }
  funcao retornar()
              
           {
           escreva("\n==================================================\n\n")
           escreva("Pressione a tecla [ENTER] para retornar!")
           leia(enter)
           menu()
           }
  funcao excluir()
        
           {
           msg = "Busca de clientes |"
           topo()

           escreva("Informe o nome do(a) cliente a ser procurado(a) \n")
           leia(busca)
           busca = T.caixa_alta(busca)
           encontrado = falso

           para(n = 0; n < ponteiro; n++)
           {
           se(nome[n] == busca)
           {
           limpa()
           escreva("ATENÇÃO: Deseja realmente EXCLUIR o(a) cliente ", nome[n], "? [S/N]")
           leia(resposta)

           se(resposta == 's' ou resposta == 'S')
           {
           	para(x = n; x < ponteiro-1; x++)
           	{
           		nome[x] = nome[x+1]
           		idade[x] = idade[x+1]
           	}
           
           encontrado = verdadeiro
           ponteiro--
           }
           senao
           {
           limpa()
           encontrado = verdadeiro
           escreva("O registro do(a) cliente ", nome[n], " foi mantido."	)
           }
           }
           }
           
           se(encontrado == falso)
           {
           	
           msg ="Busca clientes    |" // personaliza o topo com uma msg
           topo()
           escreva("Nenhum cliente foi encontrado com o nome ", busca, ".")
           }
           retornar()
           	
           }
  funcao topo()
           {
           limpa()
           escreva(".=================================================.\n")
           escreva("|      SISTEMA DE CADASTRO - ", msg,"\n")              
           escreva("'================================================='\n")
           }

           
           }
         
       	
           
       	
    
    


    
  }
}
}
