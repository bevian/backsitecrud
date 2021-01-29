CREATE DATABASE  IF NOT EXISTS `db_noticias` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_noticias`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: db_noticias
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `noticia`
--

DROP TABLE IF EXISTS `noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `noticia` (
  `idNoticia` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` longtext,
  `descricao` longtext,
  `palavras_chave` varchar(100) DEFAULT NULL,
  `conteudo` longtext,
  `slug` varchar(50) DEFAULT NULL,
  `data_not` date DEFAULT NULL,
  PRIMARY KEY (`idNoticia`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticia`
--

LOCK TABLES `noticia` WRITE;
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
INSERT INTO `noticia` VALUES (1,'Justiça suspende retorno das aulas presenciais no estado de São Paulo','A decisão, que vale para escolas públicas e privadas, barra decreto de Doria que permitia aulas presenciais mesmo se o estado registrasse piora nos índices da pandemia de Covid-19.','pandemia,covid,escola','O Tribunal de Justiça suspendeu nesta quinta-feira (28) o retorno das aulas presenciais no estado de São Paulo. A decisão vale para escolas públicas e privadas. O governo estadual disse que vai recorrer (leia mais abaixo).\n\nA liminar atendeu a um pedido do Sindicato dos Professores do Ensino Oficial do Estado de São Paulo (Apeoesp) para barrar decreto do governador João Doria (PSDB) que autorizava a abertura das escolas mesmo se o estado registrasse piora nos índices da pandemia de Covid-19. Anunciada em dezembro, a medida valia inclusive se SP voltasse às fases mais restritivas das flexibilizações econômicas estabelecidas pelo plano estadual.\n\nAo conceder a liminar, a juíza Simone Gomes, da 9ª Vara da Fazenda Pública, baseou sua decisão \'na proteção ao direito à vida\'. Ela defendeu que as aulas presenciais não devem ser retomadas em áreas classificadas nas fases laranja e vermelha (a mais restritiva).','suspensao_aulas_covid','2021-01-28'),(2,'Inep muda gabarito do Enem 2020; Questão Racista','Outra questão mencionava ligação que o Google faz entre nomes de negros e sugestões de fichas criminais. Depois da polêmica nas redes sociais, Inep diz que foi encontrada inconsistência no material.','enem,inep,racismo','A primeira pergunta em discussão faz parte da prova de inglês e traz um trecho da obra \'Americanah\', da autora nigeriana Chimamanda Ngozi Adichi. No excerto, duas mulheres negras conversam em um salão de cabeleireiro. A profissional, Aisha, recomenda que a cliente, Ifemelu, alise os fios para \'ficar mais fácil de penteá-los\'. A jovem não aprova a ideia: diz que gosta do seu cabelo natural, \'como Deus o fez\'. Em seguida, há o trecho, em tradução para o português: \'Não é difícil pentear se você hidratar corretamente\', disse ela [Ifelemu], assumindo o tom persuasivo que ela usava sempre que tentava convencer outras mulheres negras sobre os méritos de usar seu cabelo natural.','racismo_questao_enem_2020','2021-01-28'),(3,'\'Caso GameStop\' inspira movimento especulativo no Brasil e afeta preços de ações','Investidores da resseguradora IRB Brasil organizaram uma compra em massa das ações para trazer de volta o dinheiro de investidores institucionais; o mesmo aconteceu nos EUA com valorização de 1.800% da empresa GameStop; analistas duvidam que valorização se repita.','game stop, investimento, eua','O ataque especulativo que acontece nesta semana em Wall Street acendeu o alerta de investidores brasileiros. A pergunta principal é se algo parecido poderia acontecer por aqui. Para analistas consultados pelo G1, não só é possível como está ocorrendo – guardadas as devidas proporções.\nDesde esta quarta-feira (28), um grupo de investidores pessoas físicas têm se organizado em uma tentativa de influenciar o preço das ações da resseguradora IRB Brasil. Juntos, eles compram ações da empresa para pressionar fundos de investimento a reverter apostas na queda dos papéis na bolsa de valores.','gamestop_brasil','2021-01-28'),(4,'Cicely Tyson, atriz indicada a Oscar por \'Lágrimas de Esperança\', morre aos 96 anos','Ex-modelo, americana ganhou um prêmio Tony, três troféus do Emmy e um Oscar honorário pela carreira.','cicely tyson, atriz, morte','A atriz americana Cicely Tyson, indicada a Oscar por \'Lágrimas de Esperança\' (1972), morreu aos 96 anos nesta quinta-feira (28).\nDe acordo com a agência de notícias Associated Press, a informação foi divulgada pela família através do empresário da atriz, Larry Thompson. A causa da morte não foi revelada.\n\'Com corações pesados, a família da senhora Cicely Tyson anuncia sua morte pacífica esta tarde. Neste momento, por favor respeite a privacidade da família\', diz um comunicado.\nAlém da indicação ao maior prêmio do cinema, a ex-modelo foi vencedora do grande prêmio do teatro, o Tony, em 2013, e de três estatuetas do Emmy — dois deles pela atuação no filme para a TV \'The Autobiography of Miss Jane Pittman\' (1974).','cicely_tison','2021-01-28'),(8,'Técnica de enfermagem de Maceió é afastada após não aplicar vacina de Covid-19 corretamente em idosa.','Vídeo mostra que conteúdo da seringa não foi aplicado no braço da mulher de 97 anos; família da idosa denunciou o caso. Secretaria Municipal de Saúde disse ter ocorrido falha humana, e Ministério Público do Estado de Alagoas abriu investigação.','tecnica,covid','Uma técnica de enfermagem de Maceió foi afastada nesta quinta-feira (28) depois de não ter aplicado corretamente a vacina contra a Covid-19 em uma mulher de 97 aps. O incidente foi registrado em um vídeo divulgado nas redes sociais (veja mais no vídeo acima). Após denúncia da família, a idosa foi devidamente vacinada.','tecnica_suspensa','2021-01-29'),(9,'Polícia apreende passaporte e mais de R$ 470 mil na casa de Nego do Borel no Rio.','Cantor estava em São Paulo. Agentes recolheram ainda computadores e celulares. Defesa dele não quis se manifestar.','nego do borel,rio','A Polícia Civil de São Paulo, com apoio de agentes fluminenses, cumpriu nesta quinta-feira (28) dois mandados de busca e apreensão contra Nego do Borel. Um no Rio e outro em São Paulo.  Os policiais apreenderam mais de R$ 470 mil em espécie, aparelhos eletrônicos e o passaporte do cantor na mansão dele, na Zona Oeste do Rio. O material será enviado para a capital paulista.','negodoborel_rj','2021-01-29'),(13,'','','','','','2021-01-29'),(14,'','','','','','2021-01-29');
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_noticias'
--

--
-- Dumping routines for database 'db_noticias'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-29  2:44:26
