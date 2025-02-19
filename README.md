# Descrição do script
#### Esse script busca organizar arquivos em pastas diarias, mensais ou até mesmo anuais, facilitando a gestão de informações e dados, juntamente de trabalhos, aplicativos e programas desenvolvidos em tal dia/ano/mês, isto também é valido para projetos e lembretes que podem ser armazenados com arquivos PDFs.


# Detalhamento da programação

![](https://media.discordapp.net/attachments/850755386549338122/1341857075944357938/image.png?ex=67b78549&is=67b633c9&hm=f50a29e7ab368c9cd62dfacc3b3dd084d1d2ccd53e4e8b9a7e5a8010e60f15da&=&format=webp&quality=lossless)

![](https://media.discordapp.net/attachments/850755386549338122/1341863701816541455/image.png?ex=67b78b75&is=67b639f5&hm=6550c6af13a902000d677f357098ef3b261e1e8e3055bbb9474f2a7c3eda0bdd&=&format=webp&quality=lossless)

![](https://media.discordapp.net/attachments/850755386549338122/1341863766354169866/image.png?ex=67b78b84&is=67b63a04&hm=10f9574a351ea79e2ea9112551a6879853b4bc3e21e393a6e31c431bb9da952b&=&format=webp&quality=lossless)

```markdown
 	
````

![](https://media.discordapp.net/attachments/850755386549338122/1341856698423443559/image.png?ex=67b784ef&is=67b6336f&hm=be9d88b9ce00eaac86f1a469480e4f428a34cf58c8fe8d4a9e7438643e90df59&=&format=webp&quality=lossless)

Acima é possivel ver 4 variáveis que utilizam do valor de entrada do ano para fazer calculos. As três ultimas realizam uma operação de divisão que define seus valores, para só depois serem utilizadas em uma outra lógica

![](https://media.discordapp.net/attachments/850755386549338122/1341856753230417951/image.png?ex=67b784fc&is=67b6337c&hm=4c5aad2242ab5e33a0da66b10e6bc914492d508124dc4ae96180cfb7c03e0226&=&format=webp&quality=lossless)

Acima podemos observar o metodo que foi desenvolvido para identificar os anos bissextos, a lógica é a seguinte: se o mês for de fevereiro, ele verifica o valor resultante da divisão daquele ano por 4, se o resultado for 0 ele segue mais um passo para a verificação, se a divisão do ano por 100 **não** for igual a zero significa que é um ano bissexto, e o programa irá aumentar 1 dia em fevereiro. Mas, se a variável seculo for igual a 0, o codigo verifica se o ano é divisível por 400, se sim, o programa definirá a quantidade de dias para 29, caso contrário, o outro pedaço do codigo fará com que o valor de dias seja 28 por não ser um ano bissexto. Resumidamente, esse conjunto de codigo é um filtrador de ano bissextos baseados nas regras dessa definição:
- Se for divisível por 4 e não por 100, é bissexto.
- Se for divisível por 4, 100 e 400, também é bissexto.
- Se for divisível por 4 e 100, mas não por 400, não é bissexto.



# Desafios e solução
 #### Ao criar esse script, minha principal dificuldade foi criar o método que conseguia identificar se o ano proposto era bissexto ou não. Porém, graças à ajuda do professor Anderson que disponibilizou informações sobre como produzir esse tipo de sistema, eu fui capaz de concluir a tarefa


![](https://static.wikia.nocookie.net/outra-semana-no-cartoon-network-br/images/0/00/OQA.png/revision/latest?cb=20160209193717&path-prefix=pt-br)

# Comandos

Deseja criar uma variável? Utilize o comando "set" Exemplo:
```markdown
set mes=2
```
Note que "mes" "=" e "2" estão juntos, isso é uma regra da linguagem do CMD

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Deseja executar seu comando com alguma condição? Utilize o comando "if" Exemplo:

```markdown
if mes=2 (

)
```
O seu comando deve ser escrito entre os parenteses que se encontram afrente do comando if

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Deseja repetir algum comando com um numero de repetições especificos? Utilize o comando "for" Exemplo:

```markdown
FOR /L %%i IN (1,1,5) DO (
    echo teste
)
```
Explicação:

- /L indica que será um loop numérico.
- %%i é a variável que assume valores.
- (1,1,5) define o início (1), o incremento (1) e o fim (5).
- echo teste imprime a palavra "teste" 
