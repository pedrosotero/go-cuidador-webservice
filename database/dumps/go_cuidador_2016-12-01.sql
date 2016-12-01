# ************************************************************
# Sequel Pro SQL dump
# Versão 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.42)
# Base de Dados: go_cuidador
# Tempo de Geração: 2016-12-01 20:20:46 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump da tabela caregiver_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `caregiver_types`;

CREATE TABLE `caregiver_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caregiver_id` int(10) unsigned NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `caregivers_id_foreign` (`caregiver_id`),
  KEY `types_caregivers_id_foreign` (`type_id`),
  CONSTRAINT `caregivers_id_foreign` FOREIGN KEY (`caregiver_id`) REFERENCES `caregivers` (`id`),
  CONSTRAINT `types_caregives_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `caregiver_types` WRITE;
/*!40000 ALTER TABLE `caregiver_types` DISABLE KEYS */;

INSERT INTO `caregiver_types` (`id`, `caregiver_id`, `type_id`)
VALUES
	(1,2,1),
	(2,2,3),
	(3,2,4),
	(6,33,4),
	(7,33,1),
	(8,3,1),
	(9,3,3),
	(10,3,4),
	(11,4,4),
	(13,5,3),
	(14,6,3),
	(15,7,1),
	(16,8,3),
	(17,9,4),
	(18,10,1),
	(19,11,3),
	(21,12,3),
	(22,13,1),
	(23,14,3),
	(25,15,3),
	(27,16,4),
	(28,17,1),
	(29,18,3),
	(30,19,4),
	(31,20,1),
	(32,21,1),
	(33,22,3),
	(34,32,1),
	(36,23,1),
	(37,23,3),
	(38,24,1),
	(39,24,3),
	(40,25,4),
	(41,26,4),
	(42,27,1),
	(43,27,4),
	(46,28,3),
	(49,28,1),
	(50,29,4),
	(52,30,3),
	(53,31,1),
	(54,32,4),
	(55,33,1);

/*!40000 ALTER TABLE `caregiver_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela caregivers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `caregivers`;

CREATE TABLE `caregivers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `neighborhood` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `phone` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caregivers_user_id_foreign` (`user_id`),
  CONSTRAINT `caregivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `caregivers` WRITE;
/*!40000 ALTER TABLE `caregivers` DISABLE KEYS */;

INSERT INTO `caregivers` (`id`, `user_id`, `first_name`, `last_name`, `cpf`, `uf`, `city`, `neighborhood`, `address`, `zipcode`, `paid`, `phone`, `avatar`, `description`, `doc`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(2,1,'Pedro','Sotero','14268125744','RJ','Rio de Janeiro','Pavuna','Travessa Altair','21520031',1,'21993242345','https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAeZAAAAJGNhZjBmYzU5LTE5ZjItNGI5My1hZWNmLWE2YzA0N2M3N2MyMQ.jpg','•	Ajudar, estimular e realizar, caso seja indispensável, as atividades de vida diária, ou seja, a higiene pessoal e bucal, alimentação e locomoção;\n•	Cuidar do vestuário (organizar a roupa que vai ser usada, dando sempre a pessoa idosa o direito de escolha), manter o armário e os objetos de uso arrumados e nos locais habituais; e cuidar da aparência da pessoa idosa (cuidar das unhas, cabelos) de modo a aumentar a sua auto-estima;\n•	Facilitar e estimular a comunicação com a pessoa idosa, conversando e ouvindo-a; acompanhando-a em seus passeios e incentivando-a a realizar exercícios físicos, sempre que autorizados pelos profissionais de saude, e a participar de atividades de lazer. Desta forma, ajudará na sua inclusão social e a melhorar sua saúde.\n•	Acompanhar a pessoa idosa aos exames, consultas e tratamentos de saude, e transmitir aos profissionais de saude as mudanças no comportamento, humor ou aparecimento de alterações fí¬sicas (temperatura,pressão, sono, etc.)\n•	Cuidar da medicação oral da pessoa idosa, em dose e horário prescritos pelo médico. Em caso de injeções, mesmo com receita médica, possuo treinamento técnico para esse fim.\n•	Estimular a auto-suficiência da pessoa idosa, por isto, o cuidador deverá, sempre que possível, fazer com ela e para ela.\n•	Procura proporcionar conforto e tranquilizar a pessoa idosa em situações de crise (por exemplo, quando fica agitado ou ansioso).\n•	Ajuda na comunicação com os outros, quando existem dificuldades para expressar-se.\n•	Desenvolver atividades de estimulo motor e cognitivo de acordo com orientações\nDados pessoais',NULL,NULL,NULL,NULL),
	(3,2,'Paula','Lotti','03277463273','RJ','Rio de Janeiro','Marechal Hermes','Rua boqueirao','21555380',1,'2199555380','https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAlbAAAAJDliZjg4NWVkLTlkZGMtNGUwMy1iZGFiLWRkNjNlZThkYTNiMw.jpg','Práticas como banho, alimentação, higiene pessoal, dosagem de remédios e acompanhante de paciente cadeirante de 87 anos',NULL,NULL,NULL,NULL),
	(4,3,'Ueslei','Japeri','66953859121','RJ','Rio de Janeiro','Guaratiba','Rua Agostinho de Castro','2303000',1,'999280296','https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/033/3c5/004cd4b.jpg','Auxiliava crianças portadoras de deficiência nas escolas. Higienização, alimentação, locomoção',NULL,NULL,NULL,NULL),
	(5,4,'Glauce','Maria','72659105129','RJ','Rio de Janeiro','Campo Grande','Rua Santa Angélica','23078160',1,'219901293045','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/f9/f98e6739e0ec38495226e3c6c984256f2f75f369_full.jpg','Acompanhar idosa em tds atividades diárias... Conferir sinais vitais... Servi refeições e medicamentos nos horários estipulados...',NULL,NULL,NULL,NULL),
	(6,5,'Carlos','Alberto','68066432216','RJ','Rio de Janeiro','Padre Minguel','Rua Adonai','21725276',1,'21992738495','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/f7/f70f56e87c4a3e62de2e310951049a3045fdc828_full.jpg','Banho , alimentação ,higienização , medicação , consultas e acompanhamentos médicos .paciente com mal de Alzheimer ,',NULL,NULL,NULL,NULL),
	(7,6,'Ana','Maria','61342541421','RJ','Rio de Janeiro','Campo Grande','Rua Oito','23092702',1,'21997263749','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/55/55c1c8658e9c9f678d93c7b4135ea2f2df8e19ea_full.jpg','Free Lance - último cargo - 2 meses\nR$ 1.500,00 - último salário\nServiço de Free Lance\nPeriodicamente presto serviços aos finais de semana em domicílio, em uma senhora de 88 anos, ela tem diabetes .\n\nAs principais atividades principais são :\nAdministrar os horários dos medicamentos;\nCuidar da alimentação adequada;\nCuidados higiênicos;\nAjudando e auxiliando no que for necessário para o bem estar da idosa.\nCuidadora de Idosos - penúltimo cargo - 4 meses\nAtuei como cuidadora , prestando serviço domiciliar de uma senhora de 94 anos ainda lúcida.\n\nAs principais atividades principais foram:\nPreparo da alimentação saudável e adequado;\nInteragindo para descontrair o ambiente, proporcionando assim, um ambiente agradável ;\nSempre acompanhando nas sessões de fisioterapia;\nServiços domésticos em geral ;\nAtendimento 24hs de segunda-feira à sexta-feira.\nCuidadora de Idosos - antepenúltimo cargo - 1 mês\nAtuei como cuidadora, prestando serviço domiciliares, auxiliando uma senhora de 75 anos portadora de Alzheimer.\nPrincipais atividades relizadas foram : \n- Preparo da Alimentação ;\n- Ministrar os remédio nos hórarios determinados;\n- Auxílio na higiêne pessoal;\n- Interagindo para descontrair;\n- Acompanhamento de Fisioterapia.\nCuidadora de Idosos - 4 º cargo - 6 anos e 8 meses\nTrabalhei em um grupo de asílo cuidando de 18 pessoas por 7 anos, idosos na faixa etária de 70 anos até 100 anos.\nPrincipais atividades relizadas foram : \n- Cuidando da alimentação e do bem estar ; \n- Higiene pessoal ;\n- Medicamentos controlados ;\n- Passeios ;\n- Elaboração de atividades como : festa dos idosos , datas comemorativa , comidas típicas de acordo com o tema e festas com músicas.\nCuidadora de Idosos - 5 º cargo - 7 anos e 9 meses\nTrabalhei como auxiliar de enfermagem , cuidando de 40 pessoas.\nPrincipais atividades relizadas foram : \n- Efetuando curativos e limpeza de machucados;\n- Ministrava remédios;\n-Interagia com os paciente para se sentissem acolhidos;\n-Zelando pela higiene pessoal;\n- Verificando a alimentação adequada de acordo com cada paciente; \n- Levava os pacientes para realizar exames necessário quando solicidado pelo médico;\n- Acompanhamento de Fisioterapias e outras tratamentos.\nCuisadora de Idosos - 6 º cargo - 3 anos e 1 mês\nAtuei em um grupo de asílo cuidando de 18 pessoas na faixa etária de 70 anos no máximo.\nPrincipais atividades relizadas foram : \n- Higiene pessoal ;\n- Passeios ;\n- Cuidando da alimentação e do bem estar ; \n- Medicamentos ;\n- Realizando atividades para interagir com o idoso, assim, propondo um momento descontração.\n',NULL,NULL,NULL,NULL),
	(8,7,'Leandro','Carvalho','16721757559','RJ','Rio de Janeiro','Bangu','Rua Formosa do Rio Preto','21842065',1,'21983460434','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1a/1a97a27494804c128c7bbd4ac389b480048bfb95_full.jpg','Cuidados com idosos, realizando higienização pessoal, alimentação, medicação, atividades em grupos.',NULL,NULL,NULL,NULL),
	(9,8,'Juliana','Arruda','85987444500','RJ','Rio de Janeiro','Santa Cruz','Rua Alberto Conde Peres','23065675',1,'219934503404','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87a9cf82afdc0cb27a7b5518b9268abdc1bc6ab8_full.jpg','Cuidar da mãe limpeza alimentação rotinas de medicação aferi pressão sondas e tudo que refere à higiene....',NULL,NULL,NULL,NULL),
	(10,9,'Leonardo','Sillas','68284653265','RJ','Rio de Janeiro','Vigario Geral','Rua Vila Nova','21011763',1,'21908738894','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1e/1ee1175f3729cd7db71a4314bd6188b2aea52777_full.jpg','Auxílio a Déa Fagundes Penido no dia a dia, acompanhamento e administração de medicamentos, banho, alimentação além do bem estar da paciente.',NULL,NULL,NULL,NULL),
	(11,10,'Nathalia','Bezerra','73196882128','RJ','Rio de Janeiro','Inhoaiba','Rua Cinquenta e Nove','23057086',1,'21990433947','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/34/347ae65ee1ee92f3e8644fc4469463fad045545a_full.jpg','Cuidar de idosos, auxiliando na: medicação, banho, alimentação, aplicação de insulina (se necessário), passeios. (Estágio)',NULL,NULL,NULL,NULL),
	(12,11,'Maria','Joana','97532888320','RJ','Rio de Janeiro','Jacarepagua','Rua Boa Esperança','22713551',1,'21987653034','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/c2/c2c874cedc456c552de18f7c197819b5a4403ccf_full.jpg','cuidava de uma senhora auxiliando na higiene alimentação e acompanhava em consultas médicas',NULL,NULL,NULL,NULL),
	(13,12,'Fernanda','Lima','72659105129','RJ','Rio de Janeiro','Cural Falso','Beco Canaã','23591130',1,'21980560494','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/a3/a38f2fc6321a17fde5009c4e378360f2d9f139f8_full.jpg','Dava banho alimentaçáo medicações no horários prescritos atividades no de correr da semena',NULL,NULL,NULL,NULL),
	(14,13,'Rodrigo','Emmanuel','80885554264','RJ','Rio de Janeiro','Guaratiba','Rua Doutor Cotrim','23030190',1,'21970605043','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1b/1bb1a1591edc3fa5280bc5d00ae2b27a8b6bff13_full.jpg','Também tive desenvolvimento em outras áreas como vendedora em uma loja de roupas direcionado pela senhora Sara m* Barbosa tel:(27)37461171.cuidei de uma senhora idosa durante 6meses em casa de família residencial onde ela n se movimentava direito prestei atendimentos ao banhos,remédios, alimentação, higiene pessoal e ao seus dia a dia com passar do tempo ela se recuperou e me deu vários agradecimentos porém tenho telefone somente da filha dela para contato (33)999201274.trabalhei de monitora de crianças onde eu olhava as crianças brincarem aos brinquedos trabalhei como bico então durou pouco tempo em uma casas de festas chamada reinos das festas direcionado pelo Jacson tel;3130316923oou31988799742.E também já fiz algumas faxinas em residencias tbm como bico .',NULL,NULL,NULL,NULL),
	(15,14,'Leandro','Marques','96770241676','RJ','Rio de Janeiro','Realengo','Rua Claudino Barata','21770200',1,'21996040303','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1b/1b971db99feebc0a65138f951b85016e9ccfd059_full.jpg','Cuidador de Idosos - último cargo - 6 meses\nR$ 1.400,00 - último salário\nCuidadora Domiciliar.\nResponsável pela administração de medicamentos; acompanhamentos a consulta medicas e terapias; incentivar a idosa nas rotinas diárias; acompanhamento em eventos sociais da idosa; vestuário; alimentação e também afazeres domésticos. \nnome da empresa - Exclusivo para assinantes 12/2015 até 03/2016 - 3 meses\n\nCuidador de Idosos - último cargo - 3 meses\nR$ 1.600,00 - último salário\nCuidadora Domiciliar e Hospitalar\nResponsável pela higienização, alimentação, Movimentação de paciente acamado.\nnome da empresa - Exclusivo para assinantes 07/2014 até 08/2015 - 1 ano e 1 mês\n\nRecepcionista Atendente - último cargo - 1 ano e 1 mês\nR$ 1.500,00 - último salário\nAtendimento ao Cliente em grandes Eventos\nnome da empresa - Exclusivo para assinantes 08/2012 até 09/2013 - 1 ano e 1 mês\n\nOperadora de Caixa - último cargo - 1 ano e 1 mês\nAtendimento ao Público, Abertura e Fechamento de Caixa.\nnome da empresa - Exclusivo para assinantes 01/2010 até 08/2012 - 2 anos e 7 meses\n\nAtendente Balconista - último cargo - 2 anos e 7 meses\nR$ 1.000,00 - último salário\nAtendimento ao público em loja de varejo com grande movimentação.\n- Indicação de produtos\n- Venda\n- Reposição de estoque\n- Atividades gerais da loja e caixa.',NULL,NULL,NULL,NULL),
	(16,15,'Bruno','Custodio','36332538740','RJ','Rio de Janeiro','Marechal Hermes','Rua Maracaipe','21557040',1,'21992930402','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1b/1b95e1744aebd017b49b420725aaee41593994e7_full.jpg','Cuidador de Idoso - último cargo - 6 anos e 9 meses\n?	Idosos, Pessoas com Deficiência Física, Mental Visual e Dietas Restritivas. (Acima de 3 Anos)\n?	Pessoas com diferentes tipos de sondas\n?	Administrar medicação aos pacientes (medicação oral, inaladores, injeção de insulina, glicose), acompanhamento de pressão arterial, temperatura corporal, saturação de oxigeno em sangue, taxa glicêmica, etc.\n?	Banhos, higiene, transferências de leito, cuidado de idosos terminais, alimentação e cuidados noturnos.\n?	Atividades que auxiliam a estimular a parte cognitiva, para ajudar a retardar ou ativar sua memória que sofrem perdas cognitivas como Alzheimer.\n?	Criação e Adaptação de pratos de acordo com as necessidades do paciente (diabéticos, hipertensos, dietas hipercalóricas ou hipocalóricas, etc.).',NULL,NULL,NULL,NULL),
	(17,16,'Maycol','Vidal','68475150829','RJ','Rio de Janeiro','Ramos','Rua Ari Leão','21040005',1,'21994050643','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/0a/0a1f8498937d6e19702529ad15d51f9780b2a481_full.jpg','Cuidado e auxílio com alimentação, medicação, higiene e locomoção. Acompanhamento a atividades de lazer e consultas médicas. Colaboração para estímulos físicos e mentais.',NULL,NULL,NULL,NULL),
	(18,17,'Solange','Almeida','25394914303','RJ','Rio de Janeiro','Estacio','Rua Ademar Barcelos','20211018',1,'21995635764','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/34/341a5bb5e0582b905a05a4227df0d587c4a96cd1_full.jpg','Atenção à pessoa idosa, cuidado com os acamados, mudança de decúbitos, higiene, sonda, alimentação, cuidados com a medicação.',NULL,NULL,NULL,NULL),
	(19,18,'Carla','Coelho','11115954296','RJ','Rio de Janeiro','Sepetiba','Estrada da Estiva','23530075',1,'21992930405','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/b0/b0986527d0e17b710afa16b436463ee266649c92_full.jpg','Suporte direto a supervisão de RH, responsável pelos processos de admissão, gerenciamento de benefícios( ex; vale transporte, vale alimentação, vale restaurante, convenio médico, seguro funeral e plano odontológico. processo de seleção, atendimento a funcionários, organização de eventos e apoio à área jurídica (ex; processo trabalhista) monitoramento da CIPA.',NULL,NULL,NULL,NULL),
	(20,19,'Amanda','Avila','55875026197','RJ','Nova Iguaçu','Lagoinha','Rua Mercúrio','26296540',1,'21993940503','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/ac/ac38cfc493516bb4773e06ee802a143272939d76_full.jpg','Servir a criança nas necessidades diárias, cuidando de sua higiene, orientando-a nas distrações, preparando-lhe a alimentação e auxiliando-a nas refeições, para garantir o bem estar e o desenvolvimento sadio da mesma.',NULL,NULL,NULL,NULL),
	(21,20,'Thatiana','Pessoa','27022380848','RJ','Nova Iguaçu','Centro','Rua Capitão Chaves','26221010',1,'21999304950','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/00/002826816ca6c9498f9129598a56b04698019726_full.jpg','Cuidar de crianças é um ótimo trabalho para uma jovem adulta querendo ganhar dinheiro e alguma experiência. Ter um currículo com uma aparência profissional é importante para quem está procurando por um emprego e precisa de um documento para entregar ou para quem já trabalhou como babá e quer colocar sua experiência no currículo. Como esse pode ser um dos seus primeiros empregos, talvez você não tenha muitas outras experiências profissionais para incluir, mas tudo bem. Existem muitas formas de melhorar o documento com outros itens importantes e relevantes, como objetivos, competências e habilidades, educação e formação, além de referências.',NULL,NULL,NULL,NULL),
	(22,30,'Marcelo','Henrique','11642468797','RJ','Nova Iguaçu','Jardim Iguaçu','Rua Oito de Novembro','26281333',1,'21999304850','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1b/1bfad5b5ab5a24e83bc153fd9ed43674c3743afe_full.jpg','Sou Viviane Alves Banzato, casada,tenho 30 anos,tenho dois filhos já grandes,moro em Ribeirão Preto SP. Sou babá e tenho experiêcia de dez anos na área. Cuido de crianças de zero a 1 ano. Dependendo da situação até um pouco mais. Procuro vagas na área de babá mesmo para fora da cidade e estado. pois tenho intenções de me mudar de estado se conseguir um bom emprego onde eu possa me manter com minha família. Cuido apenas da crianças e seus pertences,alimentação,higiene,desenvolvimento e educação intermediário de acordo com os pais.',NULL,NULL,NULL,NULL),
	(23,21,'Luciana','Mesquita','43733078659','RJ','Nova Iguaçu','Santa Rita','Rua Camapuã','26050300',1,'21988394022','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/b1/b115020f755e7d516e587fc5fd8cefa7938d216e_full.jpg','Informação pessoal \n– Nome ou nome completo: Lídia Janeiro Rebelo\n– Endereço: Rua das Palmeira nº23 2080 Porto de Mós\n– Endereço de correio eletrónico: lídia@gmail.com\n– Número de telemóvel e telefone fixo:914585652/ 262359487 \n– Data de Nascimento: 07/ 08/ 1975',NULL,NULL,NULL,NULL),
	(24,22,'Carol','Pinto','59160826142','RJ','Niteroi','Engenho do Mato','Rua Cinco','24344106',1,'219893048503','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/00/002810096ba46d0a474c80c302e9778d90469af6_full.jpg','Currículo é um documento onde contém todas as suas informações. Tanto pessoais quanto profissionais. É por esse documento que o empregador irá selecionar ou não o seu perfil para a vaga.\n\nNão adianta você ter zilhões de experiências e cursos se não transcrever essas informações em seu currículo. Mas, como deve ser feito um currículo para vaga de babá? Calminha aí que irei explicar. Não é tão difícil.\n\nEm primeiro lugar, o currículo de uma babá, baby sistter ou nany, deve vir acompanhado de uma carta de recomendação e claro, deve conter uma foto 3×4  para que seu currículo seja profissional e confiável.\n\nVocê pode ter tido um milhão de experiências com crianças, mas se não tiver uma carta de recomendação, fica difícil o empregador contratá-lo. Afinal, nenhum pai vai querer entregar seu bem mais precioso nas mãos de um estranho, não é?\n\n',NULL,NULL,NULL,NULL),
	(25,23,'Maria','Eduarda','74116857122','RJ','Niteroi','Piratininga','Rua Doutor Moacyr Gomes de Azevedo','24358290',1,'21989304858','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/00/00280dc2216fc6a43c5d1a78247127e0b9948b0f_full.jpg','Dava banho alimentaçáo medicações no horários prescritos atividades no de correr da semena',NULL,NULL,NULL,NULL),
	(26,24,'Ludimila','Rosa','82460278322','RJ','Niteroi','Fonseca','Alameda São Boaventura','24120192',1,'219823949503','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/00/00280d0a206dca5dd074b4ebdb867a7b50c6cea4_full.jpg','A profissão de babá é uma das chamadas, profissão de livre-formação, portanto, não existem cursos específicos. Muito embora, a maioria dos pais, na hora da contratação, prezam por cursos como de enfermagem, de primeiros-socorros e até mesmo de psicologia ou pedagogia. Existem atualmente, até mesmo cursos, treinamentos e workshops que auxiliam no desenvolvimento das babás. Um bom currículo também é muito importante para a babá, pois as referências são a garantia dos pais de que a pessoa tem boa índole e caráter.',NULL,NULL,NULL,NULL),
	(27,26,'Manoela','Rego','82634563124','RJ','Niteroi','Marazul','Rua dos Pampos','24358470',1,'219883940203','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/00/00280d395a000a4443dd050ace5c4fa31f04be9e_full.jpg','cuidar do bem-estar da criança cuidar do desenvolvimento físico, emocional e motor da criança trocar fraldas preparar a mamadeira e refeições dar banho dar remédios, se for o caso colocar a criança para dormir brincar e contar histórias conciliar educação e diversão com noções sólidas de segurança, nutrição, higiene e primeiros socorros, para casos, por exemplo, de uma febre repentina',NULL,NULL,NULL,NULL),
	(28,27,'Jaqueline','Neto','67610493341','RJ','Niteroi','Centro','Avenida Visconde do Rio Branco','24020002',1,'219829304053','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/a5/a51cb4c193b865f21687c79b141263fb73d80059_full.jpg','Esses profissionais podem atuar em casas de família, em creches, escolas, orfanatos, ou seja, em qualquer lugar onde haja crianças. O mais comum, entretanto, é que os pais contratem as babás para cuidar de seus filhos em suas casas, pois com a correria do dia-a-dia, a rotina dupla e até mesmo tripla das mães modernas, a ajuda da babá se faz muito necessária.',NULL,NULL,NULL,NULL),
	(29,28,'Joelma','Leite','12764650507','RJ','Niteroi','Itaipui','Travessa B','24346055',1,'219823934563','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/de/deac62fa2818cfa9715ebb06288a63ee104613c9_full.jpg','O mercado de trabalho para as babás vêm crescendo cada vez mais, isso por que nos dias atuais, com a correria da vida moderna, muitos pais e mães são obrigados a trabalhar fora de casa, e, assim tem de deixar seus filhos com pessoas especializadas. Por isso mesmo, é interessante que as profissionais da área se desenvolvam cada vez mais, pois é muito importante, para os pais contratantes, que os filhos estejam em boas mãos. A especialização por meio de cursos, treinamentos e workshops é um bom caminho para o desenvolvimento profissional. São muito visados atualmente os cursos de enfermagem, primeiros-socorros, pedagogia, psicologia, entre outros.',NULL,NULL,NULL,NULL),
	(30,29,'Dirce','Katia','16116755534','RJ','Niteroi','Engenhoca','Travessa Luiz Carlos Esteves','24110146',1,'21983457694','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fa/face5062ec9a8496eed3aa000ea6e3fa91e397a3_full.jpg','Empregado doméstico é todo aquele que presta serviços de natureza contínua à pessoa ou à família, podendo ser faxineiras, motoristas particulares, cozinheiras, jardineiros, babás, copeiros, caseiros e muitos outros. Esses funcionários do lar, que há muito tempo prestam serviços, só vieram a ter sua profissão regulamentada em 1972, através da lei n° 5859/72, que na época previa pouquíssimos benefícios trabalhistas, que só foram ampliados em 1988. Hoje, no Brasil, são mais de 5 milhões de trabalhadores domésticos, destes pouco mais de1,3 milhões tem carteira assinada. O dia dos empregados domésticos é comemorado no dia 27 de abril, em homenagem a Santa Zita, que foi uma mulher humilde e generosa que dividia sua comida e roupas com os mais necessitados.',NULL,NULL,NULL,NULL),
	(31,25,'Rafaela','Medeiros','14673833503','RJ','Niteroi','São Francisco','Rua Dr Diógenes Travessa','24360090',1,'21982394947','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/6d/6df3b522eccbb04f1e5925015db9b72a2417c171_full.jpg','O texto de exemplo inserido é similar ao seguinte:\nA ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso.¶\n\nA ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso.¶\n\nA ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso. A ligeira raposa marrom saltou sobre o cão preguiçoso.¶\nO recurso está ativado por padrão e é desabilitado quando a opção Substituir texto ao digitar é desativada. Para ativar ou desativar a opção, clique em AutoCorreção no menu Ferramentas, clique na guia AutoCorreção e marque ou desmarque a caixa de seleção Substituir texto ao digitar.\n',NULL,NULL,NULL,NULL),
	(32,60,'Thiago','Meritello','14268125744','RJ','Rio de Janeiro','Taquara','Est.','21321-620',1,'21 98643 6361','http://scontent.cdninstagram.com/t51.2885-15/s480x480/e35/13385596_268570393501951_726843291_n.jpg?ig_cache_key=MTI3NzE3ODE5MTM1ODI1NTM3NA%3D%3D.2','•	Ajudar, estimular e realizar, caso seja indispensável, as atividades de vida diária, ou seja, a higiene pessoal e bucal, alimentação e locomoção;\r\n•	Cuidar do vestuário (organizar a roupa que vai ser usada, dando sempre a pessoa idosa o direito de escolha), manter o armário e os objetos de uso arrumados e nos locais habituais; e cuidar da aparência da pessoa idosa (cuidar das unhas, cabelos) de modo a aumentar a sua auto-estima;\r\n•	Facilitar e estimular a comunicação com a pessoa idosa, conversando e ouvindo-a; acompanhando-a em seus passeios e incentivando-a a realizar exercícios físicos, sempre que autorizados pelos profissionais de saude, e a participar de atividades de lazer. Desta forma, ajudará na sua inclusão social e a melhorar sua saúde.\r\n•	Acompanhar a pessoa idosa aos exames, consultas e tratamentos de saude, e transmitir aos profissionais de saude as mudanças no comportamento, humor ou aparecimento de alterações fí¬sicas (temperatura,pressão, sono, etc.)\r\n•	Cuidar da medicação oral da pessoa idosa, em dose e horário prescritos pelo médico. Em caso de injeções, mesmo com receita médica, possuo treinamento técnico para esse fim.\r\n•	Estimular a auto-suficiência da pessoa idosa, por isto, o cuidador deverá, sempre que possível, fazer com ela e para ela.\r\n•	Procura proporcionar conforto e tranquilizar a pessoa idosa em situações de crise (por exemplo, quando fica agitado ou ansioso).\r\n•	Ajuda na comunicação com os outros, quando existem dificuldades para expressar-se.\r\n•	Desenvolver atividades de estimulo motor e cognitivo de acordo com orientações','http://go-cuidador-webservice.dev/media_upload/pedro_sotero_584078a7c5c6a.pdf','2016-12-01 19:23:19','2016-12-01 19:23:19',NULL),
	(33,61,'Fernando','Otoni','14268125744','RJ','Rio de Janeiro','Taquara','Est.','21321-166',1,'21 98643 6361','https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/ac/ac32132a80083d3bfc3b5e44a0b4673a5133d3b5_full.jpg','•	Ajudar, estimular e realizar, caso seja indispensável, as atividades de vida diária, ou seja, a higiene pessoal e bucal, alimentação e locomoção;\r\n•	Cuidar do vestuário (organizar a roupa que vai ser usada, dando sempre a pessoa idosa o direito de escolha), manter o armário e os objetos de uso arrumados e nos locais habituais; e cuidar da aparência da pessoa idosa (cuidar das unhas, cabelos) de modo a aumentar a sua auto-estima;\r\n•	Facilitar e estimular a comunicação com a pessoa idosa, conversando e ouvindo-a; acompanhando-a em seus passeios e incentivando-a a realizar exercícios físicos, sempre que autorizados pelos profissionais de saude, e a participar de atividades de lazer. Desta forma, ajudará na sua inclusão social e a melhorar sua saúde.\r\n•	Acompanhar a pessoa idosa aos exames, consultas e tratamentos de saude, e transmitir aos profissionais de saude as mudanças no comportamento, humor ou aparecimento de alterações fí¬sicas (temperatura,pressão, sono, etc.)\r\n•	Cuidar da medicação oral da pessoa idosa, em dose e horário prescritos pelo médico. Em caso de injeções, mesmo com receita médica, possuo treinamento técnico para esse fim.\r\n•	Estimular a auto-suficiência da pessoa idosa, por isto, o cuidador deverá, sempre que possível, fazer com ela e para ela.\r\n•	Procura proporcionar conforto e tranquilizar a pessoa idosa em situações de crise (por exemplo, quando fica agitado ou ansioso).\r\n•	Ajuda na comunicação com os outros, quando existem dificuldades para expressar-se.\r\n•	Desenvolver atividades de estimulo motor e cognitivo de acordo com orientações','http://go-cuidador-webservice.dev/media_upload/teste_teste_58407a9001bc4.pdf','2016-12-01 19:31:28','2016-12-01 19:31:28',NULL);

/*!40000 ALTER TABLE `caregivers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clients_user_id_foreign` (`user_id`),
  CONSTRAINT `clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;

INSERT INTO `clients` (`id`, `user_id`, `first_name`, `last_name`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,35,'go','cuidador','2016-11-30 14:31:16','2016-11-30 14:31:16',NULL),
	(2,36,'teste','subteste','2016-11-30 20:36:11','2016-11-30 20:36:11',NULL),
	(3,37,'teste','teste','2016-12-01 15:40:06','2016-12-01 15:40:06',NULL),
	(4,38,'teste','teste','2016-12-01 15:42:28','2016-12-01 15:42:28',NULL),
	(5,39,'teste','teste','2016-12-01 15:46:10','2016-12-01 15:46:10',NULL),
	(6,40,'teste','teste','2016-12-01 15:48:36','2016-12-01 15:48:36',NULL),
	(7,41,'tester','tester','2016-12-01 15:51:54','2016-12-01 15:51:54',NULL),
	(8,42,'tester2','tester2','2016-12-01 15:52:59','2016-12-01 15:52:59',NULL),
	(9,43,'teste','teste','2016-12-01 15:56:17','2016-12-01 15:56:17',NULL),
	(10,45,'teste','teste','2016-12-01 16:04:54','2016-12-01 16:04:54',NULL),
	(11,46,'teste','tedte','2016-12-01 16:08:41','2016-12-01 16:08:41',NULL),
	(13,48,'Pedro','Almeida','2016-12-01 16:38:15','2016-12-01 16:38:15',NULL);

/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela rates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rates`;

CREATE TABLE `rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `caregiver_id` int(10) unsigned NOT NULL,
  `rate` int(1) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caregivers_id_foreign` (`caregiver_id`),
  KEY `clients_id_foreign` (`client_id`),
  CONSTRAINT `caregivers_id_foreign_rates` FOREIGN KEY (`caregiver_id`) REFERENCES `caregivers` (`id`),
  CONSTRAINT `clients_id_foreign_rates` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;

INSERT INTO `rates` (`id`, `client_id`, `caregiver_id`, `rate`, `description`)
VALUES
	(1,1,2,5,''),
	(2,1,3,4,''),
	(3,1,4,5,'teste'),
	(4,1,5,3,''),
	(5,1,7,5,''),
	(6,1,9,3,''),
	(7,1,11,5,''),
	(8,1,6,5,''),
	(9,1,10,4,''),
	(10,1,8,5,''),
	(11,1,14,4,''),
	(12,1,16,4,''),
	(13,1,17,2,''),
	(14,1,12,4,''),
	(15,1,13,5,''),
	(16,1,19,3,''),
	(17,1,20,2,''),
	(18,1,33,5,''),
	(19,1,32,1,''),
	(20,1,31,4,''),
	(21,1,30,3,'');

/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `types`;

CREATE TABLE `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;

INSERT INTO `types` (`id`, `title`)
VALUES
	(1,'Idosos'),
	(3,'Portadores de necessidades especiais'),
	(4,'Babá');

/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numbers` tinyint(4) DEFAULT '0',
  `token` text COLLATE utf8_unicode_ci,
  `facebook_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `numbers`, `token`, `facebook_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'thiagomeritello@hotmail.com','$2y$10$Z99sXKgYLxcuHYL2Nbjnmuqmc6x8N2c9s9tbktl5Vo69YmVagRHnu',1,NULL,NULL,NULL,'2016-12-01 13:00:47',NULL),
	(2,'thiagomeritello#2@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(3,'thiagomeritello#3@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(4,'thiagomeritello#4@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(5,'thiagomeritello#5@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(6,'thiagomeritello#6@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(7,'thiagomeritello#7@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(8,'thiagomeritello#8@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(9,'thiagomeritello#9@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(10,'thiagomeritello#10@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(11,'thiagomeritello#11@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(12,'thiagomeritello#12@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(13,'thiagomeritello#13@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(14,'thiagomeritello#14@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(15,'thiagomeritello#15@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(16,'thiagomeritello#16@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(17,'thiagomeritello#17@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(18,'thiagomeritello#18@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(19,'thiagomeritello#19@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(20,'thiagomeritello#20@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(21,'thiagomeritello#21@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(22,'thiagomeritello#22@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(23,'thiagomeritello#23@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(24,'thiagomeritello#24@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(25,'thiagomeritello#25@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(26,'thiagomeritello#26@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(27,'thiagomeritello#27@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(28,'thiagomeritello#28@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(29,'thiagomeritello#29@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(30,'thiagomeritello#30@hotmail.com','teste2016',1,NULL,NULL,NULL,NULL,NULL),
	(35,'gocuidador@email.com.br','$2y$10$SxF7GR2zvt1/Zs6zxH3ivOOJx/1KJAj4HFXHOrS4KA3IQWnv99Ily',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjJhVEZXa1ImIiwidXNlcm5hbWUiOiJnb2N1aWRhZG9yQGVtYWlsLmNvbS5iciIsImlzcyI6Imh0dHA6XC9cLzM0OWIwY2UzLm5ncm9rLmlvXC9hcGlcL2F1dGgiLCJpYXQiOjE0ODA1OTUzNTIsImV4cCI6MTQ4MDU5ODk1MiwibmJmIjoxNDgwNTk1MzUyLCJqdGkiOiJlODVhYmFiZDc5MTBjODY5NTVmMDJlNTc2YTE5ODRjNyJ9.WlFulqdXMSAthaL8InAKh9RCbEpZGKP_nDdAyMttQzU',NULL,'2016-11-30 14:31:16','2016-12-01 12:29:12',NULL),
	(36,'teste@email.com.br','$2y$10$SVzdUMxA0K77alYQUzgrWOfvnEFHM7UEaKSpZp2h9PLDIDVKMDRKK',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjJhVEZXa1ImIiwidXNlcm5hbWUiOiJ0ZXN0ZUBlbWFpbC5jb20uYnIiLCJpc3MiOiJodHRwOlwvXC8zNDliMGNlMy5uZ3Jvay5pb1wvYXBpXC9hdXRoIiwiaWF0IjoxNDgwNjAwNjU1LCJleHAiOjE0ODA2MDQyNTUsIm5iZiI6MTQ4MDYwMDY1NSwianRpIjoiMDc0ZjYwYzZkYmRlNDUxNDI5Mzc5ZTBkZjZkMDI1MDQifQ.UIJOcablnJavsR_6CYL1JkgYoUW7aE-ikdlOhOk_8aY',NULL,'2016-11-30 20:36:10','2016-12-01 13:57:56','2016-12-01 13:57:56'),
	(37,'teste2@email.com.br','$2y$10$ZjVBCjSg6sqCfSQFAcy.gelpIICRvkhpoIh1rvf2I7Qfkbn9WrzrS',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjJhVEZXa1ImIiwidXNlcm5hbWUiOiJ0ZXN0ZTJAZW1haWwuY29tLmJyIiwiaXNzIjoiaHR0cDpcL1wvMzQ5YjBjZTMubmdyb2suaW9cL2FwaVwvYXV0aCIsImlhdCI6MTQ4MDYxMzAzMywiZXhwIjoxNDgwNjE2NjMzLCJuYmYiOjE0ODA2MTMwMzMsImp0aSI6IjEzNzE3ZDMyYjFiYmQ3Y2E3N2ViYTcwMGZjN2Q3NjBjIn0.Xhfkx_la6ENmwzb5P2f5BJClbp_EyYducYtILcoRx48',NULL,'2016-12-01 15:40:06','2016-12-01 17:23:53',NULL),
	(38,'teste3@email.com.br','$2y$10$Ns55a9a1jjZizSbyK6ecRujFS7NEImONxHN15KF2gGRNG3VM5fZpi',2,NULL,NULL,'2016-12-01 15:42:28','2016-12-01 15:42:28',NULL),
	(39,'teste4@email.com.br','$2y$10$tTYfX9tjAfT0UBq2gw0OTex4JSKl6M7Ctf2ajJeRZH2a.g50OidOy',2,NULL,NULL,'2016-12-01 15:46:10','2016-12-01 15:46:10',NULL),
	(40,'teste5@email.com.br','$2y$10$6YDZaG8ySVZFD9zzmFM6K.V61jUXQkqCtbetJPzDGyWRLrTz7eeAi',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjJhVEZXa1ImIiwidXNlcm5hbWUiOiJ0ZXN0ZTVAZW1haWwuY29tLmJyIiwiaXNzIjoiaHR0cDpcL1wvMzQ5YjBjZTMubmdyb2suaW9cL2FwaVwvYXV0aCIsImlhdCI6MTQ4MDYwNzMzNCwiZXhwIjoxNDgwNjEwOTM0LCJuYmYiOjE0ODA2MDczMzQsImp0aSI6ImMyYTI4ZWE1OWI4YzkzNmI2M2NjOWQzY2IyNzg2ZjU1In0.k_8moq7lHjLo9Ld3VwtJW2R2SnDKGviDOE3SZQjMURk',NULL,'2016-12-01 15:48:36','2016-12-01 15:48:54',NULL),
	(41,'tester@email.com.br','$2y$10$Xz9AfQFP/0poFN2r/yvH..TwdgwqGd1N7yGdXZ96URyOySEtZsqcu',2,NULL,NULL,'2016-12-01 15:51:54','2016-12-01 15:51:54',NULL),
	(42,'testet2@email.com.br','$2y$10$.KK6xs./rlWQ4ocU9.gL.eQazVjP5a/uN5xK.W0ym.OuVNE.3ZFIG',2,NULL,NULL,'2016-12-01 15:52:59','2016-12-01 15:52:59',NULL),
	(43,'teste7@email.com.br','$2y$10$A6SnfLQTKQ4F18KAs6Gr2Od96e0dx3aki2oPy.s6k37D8sIm1fyYC',2,NULL,NULL,'2016-12-01 15:56:17','2016-12-01 15:56:17',NULL),
	(44,'teste9@email.com.br','$2y$10$chl8gxSDoNZofkcox0/.Nena1ttKlqVHJNekUERP2MY.SXmga8Ciq',2,NULL,NULL,'2016-12-01 15:59:58','2016-12-01 15:59:58',NULL),
	(45,'teste10@email.com.br','$2y$10$lDjZgAO5XRWb7rNpddqCH.eMN32HnStiGRCDe/W9yVQRZRv4WR87O',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjJhVEZXa1ImIiwidXNlcm5hbWUiOiJ0ZXN0ZTEwQGVtYWlsLmNvbS5iciIsImlzcyI6Imh0dHA6XC9cLzM0OWIwY2UzLm5ncm9rLmlvXC9hcGlcL3VzZXJzIiwiaWF0IjoxNDgwNjA4Mjk0LCJleHAiOjE0ODA2MTE4OTQsIm5iZiI6MTQ4MDYwODI5NCwianRpIjoiZDg3M2I1Y2QwZWYxYmJhNDRlZTAzNzU2YjBhYWJmMmQifQ.vSMFGK5k0fOHI_n9GD7et4BwLkmGJDh-OlBPovbANHQ',NULL,'2016-12-01 16:04:54','2016-12-01 16:04:54',NULL),
	(46,'teste11@email.com.br','$2y$10$R5hgGAoJAL0/cGtkthXhreGteNKlJ7WHJYwedQ8uA48Jz0cPgIGOq',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjJhVEZXa1ImIiwidXNlcm5hbWUiOiJ0ZXN0ZTExQGVtYWlsLmNvbS5iciIsImlzcyI6Imh0dHA6XC9cLzM0OWIwY2UzLm5ncm9rLmlvXC9hcGlcL3VzZXJzIiwiaWF0IjoxNDgwNjA4NTIxLCJleHAiOjE0ODA2MTIxMjEsIm5iZiI6MTQ4MDYwODUyMSwianRpIjoiMjAxNWVlODBmMmExZTg1Njg3Yjk4Yzc5ZDc0OWZmOWUifQ.Li2gg41BEE06Dc8KIXzfVNh1xMDbF72ouiI4I5EwUsI',NULL,'2016-12-01 16:08:41','2016-12-01 16:08:41',NULL),
	(48,'pedrinsotero@hotmail.com','$2y$10$oW9tDlamQ/Yu04CcfR1gbeMz1NV5Q6lOx00Q7Q6v5PlJsB8Tyt2f2',2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjJhVEZXa1ImIiwidXNlcm5hbWUiOiJwZWRyaW5zb3Rlcm9AaG90bWFpbC5jb20iLCJpc3MiOiJodHRwOlwvXC8zNDliMGNlMy5uZ3Jvay5pb1wvYXBpXC9hdXRoX2ZhY2Vib29rIiwiaWF0IjoxNDgwNjEyODE2LCJleHAiOjE0ODA2MTY0MTYsIm5iZiI6MTQ4MDYxMjgxNiwianRpIjoiMmUyZjgxZTc2MTVjYmY4OTAxMGIyNDQyMTIwYzA0OTkifQ.mJfoYpVwx_-4yKh7rh0oxyLAQf3HjdAF9NCEg1q0t4M',1151098498312694,'2016-12-01 16:38:15','2016-12-01 17:20:16',NULL),
	(49,'pedroteste@email.com.br','$2y$10$eub81idX3X12TRpL90vjLeX5bC247NdzHHQ8lRaKMYXFFAO5Ulus.',1,NULL,NULL,'2016-12-01 19:08:56','2016-12-01 19:08:56',NULL),
	(50,'pedroabsurdo@email.com.br','$2y$10$DIVBYoK.ow40sRSiKdota.4jiAHY5PxdD.utD7Hisom7KxTWrwBGi',1,NULL,NULL,'2016-12-01 19:10:19','2016-12-01 19:10:19',NULL),
	(51,'pedroabsurdo2@email.com.br','$2y$10$FFcJq2jiTmZmJMLgihi1/.7nDP9k2AJK0XbCT66BUrIj5lQ4iLuCm',1,NULL,NULL,'2016-12-01 19:11:42','2016-12-01 19:11:42',NULL),
	(52,'pedroabsurdo3@email.com.br','$2y$10$ey4IgcTtA7k9impKjyPbeuve5Qf7HwLTzX3QJRbTv/rcUnT0YLCiS',1,NULL,NULL,'2016-12-01 19:12:22','2016-12-01 19:12:22',NULL),
	(53,'pedroabsurdo4@email.com.br','$2y$10$vT18ueLKp9twCvK0vvg9JOiX2oKku5aewBSeVPR8u2IKu7WCJIgxS',1,NULL,NULL,'2016-12-01 19:13:38','2016-12-01 19:13:38',NULL),
	(54,'pedroabsurdo5@email.com.br','$2y$10$junLYWLz.KIsjKT9/LFg2e9QXuhBDPprn5P.wPisCXco22p1edmzO',1,NULL,NULL,'2016-12-01 19:16:02','2016-12-01 19:16:02',NULL),
	(55,'pedroabsurdo6@email.com.br','$2y$10$KK93lrx6.QxLqCyBG9UEo.XiwHp1JirtxtLxJWAV84nuYcgNA2YvS',1,NULL,NULL,'2016-12-01 19:16:38','2016-12-01 19:16:38',NULL),
	(56,'pedroabsurdo7@email.com.br','$2y$10$MTB2NWo37V5SNwMPR/23duIvODTjo5h/2MtM/dcFPcFj8HZIX2uki',1,NULL,NULL,'2016-12-01 19:17:52','2016-12-01 19:17:52',NULL),
	(57,'pedroabsurdo8@email.com.br','$2y$10$qVR39bA877b.VW6Xfe2c5.l5WwNuAFX.3GmZ4Zb2PFylcGJlyYJzq',1,NULL,NULL,'2016-12-01 19:20:23','2016-12-01 19:20:23',NULL),
	(58,'pedroabsurdo9@email.com.br','$2y$10$yAz6QzbkkQOXourcoRajau.EnJuGvWYR6OTQd7llC.juOCncE4dBm',1,NULL,NULL,'2016-12-01 19:21:14','2016-12-01 19:21:14',NULL),
	(59,'pedroabsurdo11@email.com.br','$2y$10$bsmHwXR7oxSea8P0qZcplOATTuGD2hJkB4Pul4zkvI9xeGGLNFx0S',1,NULL,NULL,'2016-12-01 19:22:33','2016-12-01 19:22:33',NULL),
	(60,'pedroabsurdo12@email.com.br','$2y$10$1p/NF09j6rtXW89JzcRKzeKuWs/u34SUy83z/pVsYbe61T1ZJ4Tne',1,NULL,NULL,'2016-12-01 19:23:19','2016-12-01 19:23:19',NULL),
	(61,'teste123@email.com.br','$2y$10$btKwViuMxjHHiGoAxKHxp.9YjWnmjCejmvUrXPZxMaQHTM/QAbuna',1,NULL,NULL,'2016-12-01 19:31:27','2016-12-01 19:31:27',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
