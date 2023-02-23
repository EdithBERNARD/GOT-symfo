-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 10 Juin 2020 à 09:57
-- Version du serveur :  5.7.29-0ubuntu0.18.04.1
-- Version de PHP :  7.2.30-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `got`
--

-- --------------------------------------------------------

--
-- Structure de la table `character`
--

CREATE TABLE `character` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_id` bigint(20) UNSIGNED DEFAULT NULL,
  `father_id` bigint(20) UNSIGNED DEFAULT NULL,
  `id_title` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `character`
--

INSERT INTO `character` (`id`, `created_at`, `updated_at`, `last_name`, `first_name`, `image`, `biography`, `mother_id`, `father_id`, `id_title`) VALUES
(1, NULL, NULL, 'Stark', 'Arya', 'arya.png', 'Née en l\'an 289, Arya Stark  est la seconde fille de lord Eddard Stark et de lady Catelyn Stark. C\'est une jeune fille rebelle de neuf ans que tout oppose à sa sœur aînée Sansa. Elle préfère les combats à l’épée et les aventures dans les couloirs abandonnés du château en compagnie de son demi-frère bâtard Jon, avec qui elle entretient une relation privilégiée, aux arts d\'agrément qui constituent le seul enseignement dispensé aux filles de grande maison. Tous deux sont les seuls enfants Stark à ressembler physiquement à leur père. En effet, à l\'instar de Jon, elle est brune et a les yeux gris de lord Eddard, plutôt fluette, elle a également hérité de ce dernier sa figure longue et solennelle, ce qui a d\'ailleurs poussé Arya à penser qu\'elle était elle-même une bâtarde. Ils sont très complices, partagent un sens aigu de l\'injustice et sont tous deux frustrés par les limites que leur imposent leurs conditions respectives de fille et de bâtard. Elle passe pour ressembler également à feu sa tante Lyanna mais davantage par son côté impétueux, vif et avide de découvertes que par son apparence, Lyanna ayant été remarquablement jolie. Exagérant ses disgrâces, elle dresse d\'elle-même un portrait peu flatteur. Elle aime l’aventure et rêve de légendes anciennes. D\'un caractère farouche et opiniâtre, elle peut s\'avérer des plus têtues. Son côté emporté et impulsif peut d\'ailleurs l\'amener à se montrer peu lucide et irréfléchie voire d\'une violence extrême. Très fière, Arya a la hantise qu\'on la soupçonne d\'être lâche et la passivité lui est un véritable supplice. Elle n\'en est pas moins courageuse, loyale, protectrice et sait faire preuve de sang-froid dans les situations délicates. Décrite par sa mère comme « Mi-garçon mi-chiot de loup », elle adore faire ce qui lui est interdit, ne dédaigne pas la provocation et semble réservée quant à ses sentiments. Elle peut toutefois se révéler fort tendre et affectueuse, notamment avec son père et son demi-frère. Très alerte, Arya est une bonne chasseresse et une grimpeuse adroite. Peu concernée par les élégances vestimentaires, elle privilégie souvent les tenues masculines, plus pratiques et moins contraignantes. Elle ne semble pas avoir de préférence religieuse marquée et elle prie aussi bien dans le septuaire de sa mère que dans le bois sacré en compagnie de lord Eddard. Toutefois, lorsqu\'elle se trouve en difficulté, il semble qu\'elle invoque spontanément les anciens dieux de son père. Elle a pour manie de se mâchouiller la lèvre.', 3, 2, 2),
(2, NULL, NULL, 'Stark', 'Eddard', 'eddard.png', 'Né en l\'an 263, lord Eddard Stark, dit familièrement Ned, est le seigneur de la maison Stark de Winterfell, suzerain et gouverneur du Nord. Il possède la physionomie des Stark, visage long, solennel et yeux gris sombre. Brun, il porte ses cheveux longs et arbore une barbe. Celle-ci comporte quelques poils gris qui le font paraître plus âgé qu\'il ne l\'est en réalité. En l\'an 282, lord Eddard épouse lady Catelyn Tully lors de noces couplées à celles de lord Jon Arryn et de lady Lysa Tully. Ils ont cinq enfants : Robb, Sansa, Arya, Bran et Rickon. Eddard a également un fils bâtard, Jon Snow, dont il a toujours refusé de révéler l\'identité de la mère. Il se montre très protecteur envers lui et l\'élève avec ses enfants légitimes. Il avait également un frère, Brandon et une sœur Lyanna, tous deux décédés. Seul le plus jeune frère de Ned, Benjen, est encore en vie.\r\n\r\nLord Eddard est un homme austère et peu enclin à la démonstration de ses sentiments. Il est toutefois profondément juste, les notions de droiture et d\'honneur étant fondamentales à ses yeux. Son sens du devoir est par conséquent très développé. Courageux, il n\'est pas inconséquent pour autant et agit avec réflexion. Il sait se montrer attentif aux avis de ses bannerets et prend acte de leurs opinions. Il méprise l\'hypocrisie, la flagornerie et mentir lui est un acte presque douloureux. Son caractère entier et inflexible n\'en fait pas un adepte des subtilités diplomatiques. Très attaché aux traditions nordiennes et à l\'héritage des Premiers Hommes, il vénère les anciens dieux et est convaincu que « celui qui prononce une sentence doit l\'exécuter ». Il voue d\'ailleurs, à ce titre, une grande aversion aux bourreaux et à leurs fonctions. Très confiant dans la puissance des divinités qu\'il adore, lord Eddard est persuadé que personne ne peut mentir en présence d\'un barral. Peu superstitieux, il ne croit guère en la véracité des légendes sur la forêt hantée. Étant du Nord, il a peu de goût pour les tournois. Dans l\'intimité il sait se montrer tendre et affectueux envers son épouse et ses enfants tout en étant très exigeant à leur égard. Il est, de même, très attaché à la plupart des hommes de sa maisonnée. Convaincu qu\'un homme ne peut mourir que pour un chef qu\'il estime, il est d\'ailleurs extrêmement méfiant à l\'encontre des reîtres et mercenaires. Il porte l\'épée en acier valyrien de la maison Stark, Glace, dont il se sert pour rendre la justice.', NULL, NULL, 1),
(3, NULL, NULL, 'Stark', 'Catelyn', 'catelyn.png', 'Née en l\'an 264, lady Catelyn Stark, est la fille aînée de lord Hoster Tully et de lady Minisa Whent. Elle est l\'épouse de lord Eddard Stark, le sire de Winterfell, et la mère de ses cinq enfants légitimes : Robb, Sansa, Arya, Brandon et Rickon. Catelyn est une belle femme dotée des caractéristiques physiques des membres de la maison Tully de Vivesaigues : ses cheveux épais sont auburn, ses yeux, bleus, son teint, clair et ses pommettes hautes.\r\n\r\nElle est une épouse aimante et une mère attentionnée. Très protectrice, elle connaît la plus grande difficulté à se séparer de ses enfants. Elle se montre, de même, très fière de leurs prouesses et talents. Elle éprouve en revanche un ressentiment tenace (mêlé cependant de culpabilité) envers Jon Snow, fils bâtard de son époux, élevé à Winterfell comme l\'un de ses fils légitimes. Elle n\'a jamais pu découvrir ou faire avouer à Ned qui était la mère de son bâtard. Quand elle s\'est ouverte à lui des bruits qui nommaient lady Ashara Dayne, Eddard lui a répondu froidement qu\'elle n\'avait pas à connaître qui était la mère de Jon et qu\'il était « de son sang ». Ned prend alors des mesures pour que le nom de lady Ashara ne soit plus prononcé devant sa femme. De fait, Jon représente la seule partie du cœur de Ned qu\'elle ne peut atteindre. Bien qu\'il lui ait toujours montré le plus grand respect, lady Catelyn n\'éprouve guère d\'affection pour le pupille de son mari, Theon Greyjoy, l\'héritier de lord Balon, accueilli comme otage à Winterfell après la fin de la rébellion des Greyjoy. Elle se méfie de sa famille, et le petit sourire sarcastique qu\'il arbore en permanence l\'exaspère.\r\n\r\nSon rôle de fille aînée destinée à un mariage politique, les absences de son père durant son enfance, le départ de Brandon pour Port-Réal après l\'enlèvement de Lyanna et enfin le départ d\'Eddard pour la guerre, donnent à Catelyn l\'impression qu\'elle passe sa vie cantonnée dans un rôle passif et attentiste. Elle est pourtant une femme volontaire, forte, et capable de prendre des décisions dans l\'urgence. De même, elle n\'a pas un rôle effacé vis-à-vis de lord Eddard qui écoute volontiers ses conseils. Catelyn n\'a d\'ailleurs rien à envier à son époux sur tout ce qui touche à la fierté, à l\'honneur et au sens du devoir. Elle est toutefois plus souple, pragmatique et diplomate que ce dernier. Elle porte généralement un regard lucide sur la valeur des gens qu\'elle connaît, notamment les vassaux de son époux et de son père. Peu encline au laisser-aller, lady Stark ne montre que rarement ses émotions et n\'est guère indulgente vis-à-vis d\'elle-même, se reprochant avec amertume ses erreurs ou ce qu\'elle estime telles. Tenaillée fréquemment par le doute, elle se remet souvent en question. Très consciente de son rang, elle peut parfois s\'avérer des plus hautaines et dédaigneuses à l\'égard du peuple. Son aversion pour les bâtards ne concerne d\'ailleurs pas que Jon. Catelyn est également une femme pieuse, adepte de la Religion des Sept.', NULL, NULL, 2),
(4, NULL, NULL, 'Stark', 'Robb', 'robb.png', 'Né en l\'an 283 à Vivesaigues, Robb Stark est le fils aîné de lord Eddard Stark et de lady Catelyn Stark, et par conséquent l\'héritier de Winterfell. Il partage les principes d\'honneur et de justice de son père. Son apparence est davantage héritée de la lignée des Tully, avec un corps trapu et musculeux, un teint clair, des yeux bleus ainsi que des cheveux épais et auburn. Son allure dégage une impression de puissance et de fermeté. Il est, de fait, le demi-frère de Jon Snow qu’il affectionne particulièrement. Il a également une certaine admiration pour le pupille de son père, Theon Greyjoy, plus âgé que lui de quatre ans. Très fier, Robb peut se montrer impétueux et vif. Consciencieux et scrupuleux, il prend ses responsabilités très au sérieux, ce qui l\'amène fréquemment à douter et à se remettre en question. De même que son père, c\'est un meneur d\'hommes exceptionnel qui sait se gagner le respect de ses vassaux en partageant leur quotidien. Malgré son jeune âge, il fait preuve de détermination, d\'un courage exceptionnel et manifeste de grands talents de tacticien. Il sait également se montrer attentif et considère avec attention les avis de ses bannerets. Son talon d\'Achille est néanmoins la diplomatie et sa fougue l\'empêche parfois de prendre des décisions avisées.', 3, 2, 3),
(5, NULL, NULL, 'Stark', 'Sansa', 'sansa.png', 'Née à la fin l\'an 286, Sansa Stark est la fille aînée de lord Eddard Stark et de lady Catelyn Stark. C’est une très jolie jeune fille aux longs cheveux auburn, plus clairs que ceux de sa mère. Outre sa chevelure, elle partage toutes les caractéristiques physiques des Tully de Vivesaigues: ses yeux sont bleus, ses pommettes hautes et son apparence, joviale. Elle a de longs doigts fins d\'une grande habileté et une belle voix suave.\r\n\r\nElle est l’antithèse de sa sœur cadette Arya et elles ne peuvent se supporter. Sansa est en effet, contrairement à sa sœur, très versée dans la pratique des arts d\'agrément et ne comprend guère ses velléités de révolte. D\'une politesse exquise et très attachée aux convenances, elle sait se montrer conforme à tout ce que l\'on peut attendre d\'une jeune fille de grande maison‎. Particulièrement consciente de son rang, elle peut d\'ailleurs, à l\'occasion, se montrer hautaine et méprisante envers les gens du peuple‎ . Elle est très soucieuse de ne pas déplaire et l\'une de ses hantises est d\'apparaître comme ridicule ou idiote, ce qui ne l\'empêche pas, parfois, de se montrer frivole et futile. Naïve et romantique, elle aime partager confidences et rêveries avec ses compagnes, parmi lesquelles Jeyne Poole a sa préférence. Chevaliers galants et princes charmants sont ses héros favoris et, très crédule, elle a tendance à prendre au pied de la lettre chansons et légendes. Infiniment sensible, elle s\'effarouche de peu et est aisément heurtée. Elle peut toutefois faire preuve de courage et se montrer consolatrice pour ses proches ainsi que pour ses contemporains dans la détresse. Sansa n\'est, par ailleurs, vraiment complice d\'aucun de ses frères. Quant à Jon, elle est bien consciente de son statut de bâtard et de ce que cela implique. Musicienne talentueuse, elle connaît par cœur un grand nombre de chansons et sait admirablement les interpréter. Très délicate et gourmande, elle raffole des gâteaux au citron et déteste l\'équitation qui malmène sa garde-robe . Elle répugne d\'autant plus à cette activité que l\'odeur et la saleté des écuries l’écœurent profondément.\r\n\r\nSur le plan religieux, elle est plus attirée par la religion des Sept que professe sa mère que par les anciens dieux de son père. Il lui arrive toutefois de prier dans les bois sacrés.', 3, 2, 3),
(6, NULL, NULL, 'Stark', 'Bran', 'bran.png', 'Né en l\'an 290, Brandon Stark  ou Bran  est le quatrième enfant légitime de lord Eddard Stark et de son épouse, lady Catelyn Tully. Tout le monde l\'appelle Bran afin de ne pas le confondre avec le frère décédé de lord Eddard en l\'honneur duquel il a été prénommé. Il partage les caractéristiques physiques des Tully de Vivesaigues : ses cheveux sont auburn, son teint est clair et son aspect, jovial. C\'est un jeune garçon espiègle, doux et aimable. Il est également fier, courageux et fait preuve d\'un grand sens de l\'honneur. Très intelligent, ses capacités d\'apprentissage sont considérables. Volontiers rêveur, Bran aime les histoires de magie, de monstres et de chevaliers, il souhaite d\'ailleurs en devenir un comme ses héros : Aemon Chevalier-Dragon, ser Erryk et ser Arryk, le Taureau Blanc Gerold Hightower, ser Arthur Dayne l\'Épée du Matin, ou ser Barristan Selmy, le seul encore en vie. Bran, très agile, passe une bonne part de son temps à escalader les murs de Winterfell, son père le compare d\'ailleurs à un écureuil. Il n\'apprécie guère le pupille et otage de son père, Theon Greyjoy.', 3, 2, 3),
(7, NULL, NULL, 'Stark', 'Rickon', 'rickon.png', 'Né en l\'an 295, Rickon Stark est le plus jeune des cinq enfants légitimes de lord Eddard Stark et de son épouse lady Catelyn Stark. Il possède les caractéristiques physiques des Tully de Vivesaigues. En effet, c\'est un garçonnet à la chevelure auburn, aux yeux bleus et au teint clair. Très gourmand, il raffole des friandises. C\'est également un petit garçon très fier qui s\'évertue à singer ses aînés.', 3, 2, 3),
(8, NULL, NULL, 'Snow', 'Jon', 'jonsnow.png', 'Né en l\'an 283, Jon Snow est le fils bâtard de lord Eddard Stark et d\'une inconnue. Lord Eddard l\'a vraisemblablement prénommé « Jon » en l\'honneur de lord Jon Arryn dont il avait été le pupille aux Eyrié pendant près de onze ans. Jon a le long visage solennel et réservé caractéristique des Stark et ressemble beaucoup à son père. Mince, noiraud et gracieux, il a les yeux d’un gris si sombre qu’on les dirait noirs. Il est également doté d\'une grande acuité visuelle. Jon est officiellement plus jeune de quelques mois que Robb, le fils aîné et héritier de lord Eddard. Il a hérité du grand sens de l\'honneur, du courage et de l\'austérité de lord Eddard. En effet, bien que réservé, Jon peut s\'emporter aisément s\'il est le témoin d\'une injustice. Intelligent et attentif aux conseils de ses aînés, il sait également réagir dans l\'urgence. Il ne manque pas d\'empathie pour autrui et sait se montrer bienveillant et protecteur envers les plus faibles. Il n’a pas de très bonnes relations avec lady Catelyn Stark qui le rejette, mais il s’entend bien avec ses demi-frères et sœurs, avec Robb et Arya en particulier. Il vit toutefois très mal son statut de bâtard qui le prive des droits et honneurs réservés à un membre de la prestigieuse maison Stark. Sa position délicate lui permet cependant d\'apprendre à voir au-delà des apparences et à sonder l\'hypocrisie de ses contemporains. Sur le plan religieux, Jon révère les anciens dieux.\r\n\r\nLord Eddard n\'a jamais révélé publiquement l\'identité de la mère de Jon. Lorsque sa jeune épouse lady Catelyn a cherché à en savoir plus, il lui a seulement déclaré que Jon était « de son sang ». Cependant, il a dévoilé à son ami et roi Robert Baratheon le nom d\'une certaine Wylla, dont il aurait eu Jon pendant la rébellion, après son mariage avec lady Catelyn Tully. Mais une rumeur circule aussi : Eddard aurait aimé lady Ashara Dayne, la sœur de ser Arthur Dayne, l\'Épée du Matin, quand il lui a ramené Aube. Ashara Dayne, célèbre pour ses yeux violets, s’est suicidée lorsque Ned est reparti pour le Nord. Jon n\'a cependant pas connaissance de ces hypothèses quant à l\'identité de sa mère.', NULL, 2, 6),
(9, NULL, NULL, 'Baratheon', 'Robert', 'robert.png', 'Né en l\'an 262, le roi Robert Baratheon (surnommé l\'Usurpateur par les fidèles de la dynastie Targaryen) est l\'actuel roi des Sept Couronnes et le premier roi de la dynastie Baratheon. Fils aîné de lord Steffon Baratheon et de lady Cassana Estremont, tous deux morts sous ses yeux dans le naufrage de leur navire, La Fière-à-Vent, dans la baie des Naufrageurs, il est le frère aîné de lord Stannis Baratheon, sire de Peyredragon, et de lord Renly Baratheon, sire d\'Accalmie, qui siègent tous les deux à son Conseil restreint. Il a une puissante carrure et est haut de six pieds et demi. Il a les yeux bleu clair, cernés par des œdèmes, et les cheveux noirs. Son rire tonitruant dévoile parfois des dents d\'une grande blancheur. Dans sa jeunesse, sa puissante musculature lui permet de manier un lourd marteau de guerre, son arme favorite. Il s\'est marié en l\'an 284 à Cersei Lannister avec laquelle il a eu trois enfants : Joffrey, Myrcella et Tommen. Il lui est notoirement infidèle et a engendré de nombreux bâtards.\r\n\r\nDepuis son jeune âge, Robert fait montre d\'une sensualité, d\'une vigueur et d\'une voracité hors-normes. Porté sur la boisson et la bonne chère, il goûte grandement la chasse et les tournois (où il apprécie la mêlée). Mais son activité préférée est assurément de guerroyer. Il est d\'ailleurs un bon stratège, privilégiant l\'action rapide et déterminée pour prendre l\'initiative sur ses ennemis. Ombrageux, il tolère difficilement qu\'on bafoue son autorité. Il est toutefois capable de pitié et de respect pour les adversaires qu\'il a soumis et se montre magnanime à leur égard. Séducteur, il multiplie les conquêtes. Brave, volontaire et charismatique, Robert est un ami loyal. Il est toutefois coléreux, emporté, borné et incapable de se calmer lorsqu\'il entre en fureur. Doté d\'un sens aigu de la contradiction, il prend quasi systématiquement le contre-pied de ce que l\'on prétend lui imposer. Extrêmement dépensier et d\'une grande prodigalité, il est peu à même de préserver les finances du royaume. Il possède une voix de stentor qui lui permet d\'être entendu au cœur des batailles et des mêlées. Il s\'est beaucoup empâté au fil des ans, tant et si bien que son tour de ventre égale maintenant sa taille, et que sa barbe en broussaille (qu\'il a laissé pousser depuis quelques années) cache mal son double menton et ses bajoues. Il n\'aime guère son épouse, qu\'il rudoie à l\'occasion et viole lorsqu\'il est ivre. Il hésite cependant à la contrarier et cède souvent à ses récriminations acerbes pour avoir la paix. Il éprouve également peu d\'affection pour Joffrey, son fils aîné. Il laisse sa Main porter de plus en plus la charge du Royaume, tout en prenant des décisions sans lui demander son avis (surtout lorsqu\'il sait que celui-ci sera défavorable). Donal Noye, qui connaît bien les trois frères Baratheon, compare Robert à une arme d\'acier, tranchante dans la bataille, mais qui rouille si on la laisse pendue au mur.', NULL, NULL, 4),
(10, NULL, NULL, 'Lannister', 'Cersei', 'cersei.png', 'Née en l\'an 266, la reine Cersei Lannister est la fille de lord Tywin Lannister, la sœur jumelle de Jaime, et la sœur aînée de Tyrion. Elle est l\'épouse de Robert Baratheon, ce qui fait d\'elle la reine des Sept Couronnes. Ils ont trois enfants, Joffrey, le prince héritier, Myrcella et Tommen. Dotée des yeux verts et des cheveux blonds ondulés caractéristiques de la maison Lannister, Cersei est une très belle femme au teint pâle pouvant faire montre de beaucoup de grâce.\r\n\r\nC\'est également une femme terriblement orgueilleuse et ambitieuse qui méprise son mari et à qui le prestige de sa maison tient particulièrement à cœur. Non dénuée d\'astuce ni d\'esprit mais souvent aveuglée par sa vanité, elle enrage d\'être cantonnée à un rang secondaire parce qu\'elle est une femme alors que tant d\'hommes de pouvoir sont faibles et pusillanimes. De fait, la passivité et le manque de latitude que lui impose son sexe l\'irritent au plus haut point. Méfiante voire paranoïaque, elle soupçonne l\'ensemble de son entourage de fomenter des complots. Elle estime à ce titre que l\'amour est un poison, et qu\'il ne faut pas chercher à être aimé si on veut gagner au « jeu des trônes ». Elle est courageuse et peut faire montre d\'une détermination ainsi que d\'une rancune farouches. Ressemblant à cet égard à son père, elle n\'a que mépris pour la faiblesse et se fait fort de savoir la déceler. Très fière et susceptible, elle peut entrer en fureur si elle se sent ridiculisée. Ayant passionnément le goût du pouvoir, elle est convaincue que la volonté de celui qui gouverne prime sur le bien public et le sens du devoir. Manipulatrice, elle sait se faire affable pour amadouer ceux qu\'elle entend duper. Elle peut également faire montre d\'une grande cruauté pour la préservation de ses intérêts. Elle est, à cet égard, persuadée que ce sont la dureté et le caractère impitoyable d\'un seigneur qui permettent de lui concilier la loyauté de ses sujets. Ombrageuse et implacable lorsqu\'elle a décidé de se venger, Cersei peut également être d\'une mauvaise foi considérable. Les seuls êtres pour lesquels elle éprouve de l\'affection sont son frère jumeau Jaime et ses enfants. Elle considère d\'ailleurs que Jaime et elle constituent un seul être scindé en deux corps distincts et son jumeau est la seule personne devant laquelle elle condescend à pleurer, passer pour vulnérable auprès d\'autrui lui étant insupportable. Elle est également la plus à même de réfréner les penchants féroces de son frère. Très élégante, elle prend grand soin de son apparence.', NULL, 16, 5),
(11, NULL, NULL, 'Baratheon', 'Joffrey', 'joffrey.png', 'Né au début de l\'an 286, le prince Joffrey Baratheon est le fils aîné du roi Robert Baratheon et de son épouse la reine Cersei Lannister., et par conséquent l\'héritier du Trône de Fer. Il est le frère aîné de Myrcella et de Tommen. Il est grand pour son âge, et doté des cheveux blonds et bouclés ainsi que des yeux verts caractéristique de la maison Lannister‎. Ses lèvres sont roses et épaisses. Très imbu de lui-même, il a souvent la moue aux lèvres et le regard plein de dédain et d\'ennui. Outrecuidant, il est d\'une susceptibilité maladive et se montre souvent geignard. Méfiant à l\'extrême, il peut se révéler paranoïaque. Il sait toutefois se montrer galant et charmeur lorsque la situation l\'exige. Cruel et fasciné par la mise à mort des bêtes, il adore la chasse. Sadique, une de ses délectations est de voir ses contemporains s\'affronter à mort. Il semble que la reine soit la seule personne en mesure de réfréner quelque peu ses penchants féroces, son frère ni sa sœur ne lui inspirant aucune tendresse. Malgré sa grande affection pour son aîné, Cersei reconnaît qu\'il est des plus bornés, dénué de patience et que son orgueil le rend sourd à tous les conseils. Elle l\'a confié à la protection de Sandor Clegane, son bouclier lige, qui le quitte rarement.', 10, 9, 7),
(12, NULL, NULL, 'Baratheon', 'Myrcella', 'myrcella.png', 'Née en l\'an 290, la princesse Myrcella Baratheon est le second enfant de la reine Cersei Lannister et du roi Robert Baratheon. C\'est une jeune fille douce et timide à la carnation laiteuse, aux longs cheveux d’or bouclés et aux yeux verts. Dotée de la grande beauté de sa mère, elle ne partage avec elle aucun trait de caractère. Délicate et attentionnée, elle affectionne, à l\'instar de son frère Tommen, son oncle Tyrion et se montre tendre. Toutefois, elle se distingue de son cadet par une plus grande intelligence, un plus grand courage et une plus grande assurance. Elle ne se laisse abattre par rien, pas même par Joffrey et se montre d\'une grande courtoisie. En véritable princesse, Myrcella ne verse d\'ailleurs jamais de larmes en public et sait se montrer digne en toutes circonstances.', 10, 9, 8),
(13, NULL, NULL, 'Baratheon', 'Tommen', 'tommen.png', 'Né au début de l\'an 291, le prince Tommen Baratheon est le second fils du roi Robert Baratheon et de la reine Cersei Lannister.. Arborant un visage rond et poupin, il a les yeux vert émeraude et les cheveux blonds et bouclés de sa mère. Rondouillard et enjoué, mais manquant de détermination, il raffole des histoires de chevaliers, et n\'a rien de la cruauté de son frère Joffrey, qu\'il apprécie au demeurant fort peu. Comme sa sœur Myrcella, dont il est d\'ailleurs très proche, il affectionne son oncle Tyrion.\r\n\r\nContrairement à son aîné, Tommen est un garçon doux, malléable et soumis. Il est tendre, consciencieux et gentil, aime les animaux et semble d\'une santé plus délicate que ses aînés. Il peut toutefois faire preuve de courage et se montrer opiniâtre si le sujet lui tient à cœur. Malgré son côté pataud, il rêve de devenir un champion de tournoi et a une passion pour la joute‎.', 10, 9, 7),
(14, NULL, NULL, 'Arryn', 'Lysa', 'lysa.png', 'Née en l\'an 266, lady Lysa Arryn, née Tully, est la seconde fille de lord Hoster Tully, seigneur suzerain du Conflans, et la sœur de lady Catelyn Stark. Elle est mariée depuis la rébellion de Robert Baratheon à lord Jon Arryn, seigneur suzerain du Val et Main du roi Robert Baratheon. Après de nombreuses fausses couches (deux enfants mort-nés et cinq fausses couches), elle a donné à ce dernier un fils nommé Robert en l\'an 292.\r\n\r\nBien qu\'ayant été une jeune fille pleine de charme, ses nombreuses fausses couches ont gratifié lady Lysa d\'un physique prématurément marqué par l\'embonpoint, flasque et vieilli. Elle n\'en a pas moins les cheveux auburn, le teint clair et les yeux bleus caractéristiques de la lignée des Tully. Elle n\'a toutefois pas la jovialité propre à sa maison et arbore une bouche menue et pincée. Elle semble avoir une prédilection pour le maquillage, qu\'elle utilise avec peu de discernement, et être dénuée de grâce. D\'après sa sœur, elle a toujours montré un penchant outrancier pour les chanteurs. Très instable psychiquement, elle est sujette aux sautes d\'humeur et à la cyclothymie. Nerveuse, susceptible et craintive, elle peut entrer dans des rages incontrôlables. Elle est d\'ailleurs prompte à bannir tous ceux qui ont l\'heur de lui déplaire, surtout lorsqu\'ils sont suspectés de maltraiter son fils.', NULL, NULL, 2),
(15, NULL, NULL, 'Arryn', 'Robert', 'robertarryn.png', 'Né en l\'an 292, le jeune Robert Arryn est l\'unique enfant de lord Jon Arryn et de lady Lysa Tully, et l\'héritier de la maison Arryn des Eyrié. C\'est un enfant âgé de six ans d\'aspect malingre et chétif. Sa peau est tavelée et il a les membres grêles, un peu de ventre, une poitrine flasque et creuse mais le torse empâté. Ses yeux sont souvent rouges et chassieux, il a toutefois de beaux cheveux bruns. Il est atteint d\'une maladie qui lui provoque de fréquentes convulsions et toute la maisonnée des Eyrié se montre extrêmement vigilante à cet égard. Il est intellectuellement et physiquement en retard pour son âge, et continue à téter les seins de sa mère qui le protège excessivement. Maladroit et pataud, il a une prédilection pour les contes et les histoires de chevaliers, sa préférée étant celle de ser Artys Arryn, le « chevalier ailé ». Il est extrêmement irascible et craintif, et aime voir les gens « voler » (c\'est-à-dire être jetés dans le vide par la porte de la Lune) et les duels à mort. Son entourage doit l\'aborder avec une infinité de précautions et sa poupée de chiffons, usée jusqu\'à la corde, ne le quitte jamais.', 14, NULL, 1),
(16, NULL, NULL, 'Lannister', 'Tywin', 'tywin.png', 'Né en l\'an 242, lord Tywin Lannister est le seigneur de la maison Lannister, sire de Castral Roc, suzerain et gouverneur de l\'Ouest, Bouclier de Port-Lannis, depuis la mort de son père, lord Tytos Lannister, en l\'an 267. Tywin a eu trois frères : Kevan, Tygett et Gerion, ainsi qu\'une sœur : Genna. Parmi ses frères, seul ser Kevan est encore en vie et tient auprès de son aîné le rôle d\'un second dévoué, admiratif et loyal. Sa sœur Genna, de trois ans sa cadette, est mariée à ser Emmon Frey. Le fort caractère de cette dernière l\'a amenée à entrer en conflit avec Tywin à plusieurs reprises, mais elle n\'en éprouve pas moins un profond respect pour lui. Lord Tywin est le père de la reine Cersei, de ser Jaime son jumeau, et du nain Tyrion. Son épouse lady Joanna est décédée vers l\'an 273 en mettant Tyrion au monde. Âgé d\'une bonne cinquantaine d\'années, il est resté mince et vigoureux. Il est grand, large d\'épaules, arbore un ventre plat et des bras musculeux. Il est, même en position assise, d\'une stature impressionnante. Il a les yeux vert clair pailletés d\'or, la bouche dure, les traits sévères et le crâne rasé avec des favoris et une barbe bien taillée couleur or. Il ne sourit jamais et se montre imperturbable en toutes circonstances. Intransigeant, il ne tolère pas la faiblesse et se montre peu soucieux de solliciter une quelconque approbation de ses actes. Il est froid, circonspect, inflexible et calculateur. Laconique, il ne s\'épanche guère et prend le temps d\'écouter ses interlocuteurs, notamment lors des conseils de guerre, ceci lui permettant de les jauger. D\'une grande perspicacité, il est passé maître dans l\'art de sonder ses contemporains et sait aisément les manipuler si besoin est. De l\'avis général, lord Tywin est un homme imposant qui intimide et subjugue, ses atours recherchés contribuent d\'ailleurs à faire de lui un seigneur des plus prestigieux. C\'est également un stratège militaire redouté, qui préfère commander ses troupes depuis l\'arrière que charger à leur tête. Il apprécie, en ces circonstances, de pouvoir surplomber le champ de bataille, ceci lui permettant d\'avoir une vue d\'ensemble de la situation et d\'ajuster au mieux ses tactiques. Il ne méprise toutefois pas la diplomatie et sait fort bien se ménager des alliances favorables. Très soucieux de la renommée de sa maison et de sa famille, il ne laisse jamais un affront ou une défection sans réponse, détestant par-dessus tout qu\'on se moque de lui ou qu\'on le défie. De fait, il se montre intraitable vis-à-vis de ses enfants et les rabroue lorsqu\'il estime qu\'ils ont failli à la réputation de Castral Roc. Les aspirations de sa progéniture ne semblent d\'ailleurs guère lui importer. Il a horreur des ivrognes et méprise les princes marchands des cités libres. Il a la réputation, auprès du peuple, de posséder un cœur de vieil or massif et d\'en déféquer.', NULL, NULL, 1),
(17, NULL, NULL, 'Lannister', 'Jaime', 'jaime.png', 'Né en l\'an 266, ser Jaime Lannister, dit le jeune Lion, ou plus fréquemment le Régicide, est le fils aîné de lord Tywin Lannister, le sire de Castral Roc, suzerain et gouverneur de l\'Ouest, et ancienne Main du roi Aerys II Targaryen, et de feu lady Joanna son épouse. Il est aussi le frère jumeau de la reine Cersei, dont il est l\'amant fidèle, et le frère de Tyrion avec lequel il entretient une relation complice et envers qui il adopte une attitude protectrice. Ser Jaime est par ailleurs l\'un des frères jurés de la Garde Royale de son beau-frère, le roi Robert Baratheon, qui ne manque jamais une occasion de le rabaisser.\r\n\r\nSer Jaime Lannister est un jeune homme blond aux cheveux longs et ondulés, aux yeux verts et de bonne stature. De fait, il est beau, vigoureux, doté d\'un port royal et son sourire est aussi acéré qu\'une dague. Courageux et commandant compétent et éprouvé, il est toutefois impatient, impétueux, arrogant et sûr de lui. Il peut également se montrer borné, violent et irascible (ser Brynden Tully le décrit d\'ailleurs comme « fébrile, un irascible tout feu tout flammes ») . Provocateur et moqueur, il prend peu de choses au sérieux. Il est toutefois très conscient de son rang et de la puissance de sa maison ; il ne manque ainsi jamais - à l\'instar de son frère et sa sœur - d\'invoquer la richesse des Lannister et l\'implacabilité de son père lorsqu\'il se trouve dans une situation délicate. Il est par ailleurs un chevalier réputé pour son habileté à l\'épée et à la joute. Meneur né, ses hommes le suivent avec enthousiasme et il sait se concilier leur loyauté. Il ne se sent d\'ailleurs pleinement vivant que lorsqu\'il combat et frôle la mort qu\'il ne redoute pas. Ne craignant pas de mourir, ses actes peuvent parfois prendre des allures suicidaires ou totalement irréfléchies pour ceux qui le côtoient. Il n\'est absolument pas dévot et ne croit guère en l\'existence de dieux quels qu\'ils soient. Volontiers cynique et méprisant l\'hypocrisie sociale, il se défie des serments et des vertus prêtées à la chevalerie. Bien qu\'il fasse partie de la Garde Royale, Jaime préfère arborer les couleurs de sa maison, l\'écarlate et l\'or. De même, au combat il porte le plus souvent une armure dorée et heaume à tête de lion sous le manteau blanc traditionnel de la Blanche Épée. Son expérience martiale et les longues chevauchées lui ont appris à trouver le sommeil dans n\'importe quelle circonstance, notamment en selle. Il méprise les archers qui sont souvent prompts à fuir devant les charges des chevaliers. En dehors des champs de bataille, son unique préoccupation est l\'amour qu\'il porte à sa sœur et demeurer trop longtemps séparé d\'elle lui est odieux. Il est d\'ailleurs persuadé qu\'entrés dans le monde ensemble, ils mourront de conserve.', NULL, 16, 9),
(18, NULL, NULL, 'Lannister', 'Tyrion', 'tyrion.png', 'Né vers l\'an 273, Tyrion Lannister, dit le Lutin, est le troisième enfant de lord Tywin Lannister et de lady Joanna Lannister.\r\n\r\nTyrion est un nain. Ses jambes difformes lui confèrent une démarche dodelinante. Ses bras trop courts ne manquent toutefois pas de force. Son front trop bombé devance sa tête disproportionnée. Ses cheveux raides et ternes, d\'un blond si pâle, peuvent paraître blancs. Enfin, il a les yeux vairons (l\'un noir, l\'autre vert) et le nez camus‎.\r\n\r\nSa mère est morte en le mettant au monde, ce qui, joint à son état de nain laid et difforme, lui vaut la rancœur et le mépris de son père. Tyrion hait son père en retour, mais il cherche aussi à gagner son estime, admiratif de ce qu\'il incarne. Il espère d\'ailleurs qu\'il sera reconnu par ce dernier comme légitime héritier de Castral Roc. Sa sœur Cersei et son fils Joffrey le détestent, ce qu\'il leur rend bien. Ceci ne l\'empêche pas de connaître extrêmement bien son aînée et de pouvoir déceler ses manifestations de peur et de désespoir. Il a, en revanche, une grande affection pour son frère Jaime, dont il est complice même s\'il connaît bien ses travers, et aime beaucoup ses neveux Tommen et Myrcella.\r\n\r\nIl est très intelligent et sait se montrer pragmatique, voire rusé. Doté d\'un sens de l\'humour et de l\'ironie très affûtés, il n\'hésite pas à railler le ridicule et l\'hypocrisie de son entourage. Son grand sens de la répartie est d\'ailleurs redouté. Courageux et opiniâtre, il peut faire preuve de sang-froid et prendre des décisions dans l\'urgence. Très conscient de sa disgrâce physique, qui provoque fréquemment moquerie ou répulsion, il est le premier à en rire. Il se fait d\'ailleurs fort de savoir admettre - a contrario de la plupart de ses contemporains - les cruelles réalités de l\'existence. En effet, il a pour coutume de dire que : « Les gens se prétendent volontiers affamés de vérité, mais ils la trouvent rarement à leur goût lorsqu\'on la leur sert. ». S\'il est lucide au sujet des avantages que la puissance et la richesse de sa famille lui procurent, il veille à ne pas en abuser. Mais sa langue bien pendue et ses mauvaises manières le mettent souvent dans des situations impossibles. Semblable à son géniteur sous de nombreux aspects, Tyrion peut se montrer fort chatouilleux sur son honneur et il ne goûte guère le fait d\'être ridiculisé. Il sait également, à l\'instar de lord Tywin, anticiper et montrer de belles capacités de tacticien, ainsi que jouer des arcanes de la diplomatie. Tyrion, bien qu\'il fasse preuve de plus d\'humanité que les membres de sa maison, n\'est pas dénué d\'ambition et prend grand plaisir à exercer le pouvoir. Jouisseur et épicurien, il apprécie les plaisirs de la chair et de la table. Il aime profondément la lecture, qu\'il voit comme le moyen d\'exercer son intelligence, son atout majeur. Insomniaque, Tyrion met souvent à profit ses nuits pour dévorer nombre d\'ouvrages concernant les thèmes les plus divers. Parmi ses sujets de prédilection figurent les dragons, à qui il voue une passion depuis sa plus tendre enfance. Afin de pouvoir monter à cheval en s\'épargnant le ridicule de chevaucher un poney, Tyrion a mis au point une selle adaptée. Il ne dédaigne pas les paris et les jeux de hasard.', NULL, 16, 3),
(19, NULL, NULL, 'Greyjoy', 'Theon', 'theon.png', 'Né en l\'an 279, Theon Greyjoy est le dernier fils vivant de lord Balon Greyjoy et de lady Alannys Harloi. Il a le teint sombre, les yeux noirs, le visage maigre et son allure est efflanquée. Béjaune séduisant et fougueux (il a un certain succès auprès des filles de taverne de Winterfell, comme Kyra), arrogant et sûr de lui, il arbore toujours un petit sourire narquois. Il est souvent léger, inconséquent et vaniteux. Pouvant se montrer impétueux et irréfléchi, Theon voue un grand mépris aux êtres précautionneux et considère que la circonspection s\'assimile à de la couardise. Il peut également s\'avérer cynique et cruel. Faisant montre d\'une goujaterie absolue avec ses conquêtes féminines, Theon est un amant indélicat et volage. Ambitieux et retors mais par trop impatient, les plans qu\'il fomente se révèlent souvent irréalistes. Son orgueil considérable l\'amène également à négliger et méconnaître bon nombre de données majeures. Sa hantise est de passer pour incompétent et couard. Il préfère d\'ailleurs être considéré comme implacable que comme naïf. C\'est un archer très doué et un combattant ne manquant pas de courage. Il apprécie la fauconnerie et ne dédaigne pas la boisson.', NULL, NULL, 3),
(20, NULL, NULL, 'Targaryen', 'Daenerys', 'daenerys.png', 'Née en l\'an 284, Daenerys Targaryen, surnommée Daenerys du Typhon (ou Daenerys Typhon-Née), est l\'unique fille du roi Aerys II Targaryen et de la reine Rhaella Targaryen. C\'est une très belle jeune fille à la carnation claire, timide et svelte, et qui possède les yeux améthyste et les cheveux or et argent caractéristiques des Targaryen.\r\n\r\nDepuis la chute de la dynastie des Targaryen, Daenerys et son frère Viserys subsistent en exil dans les cités libres au-delà du détroit. Daenerys vit dans l\'ombre de son frère qui ne rêve que de reconquérir le Trône de Fer de leurs aïeux. N\'ayant jamais connu les Sept Couronnes, elle ne rêve pour sa part que d\'une vie tranquille semblable à celle de son enfance passée à Braavos sous la protection du bon ser Willem Darry qui la chérissait. Sa vie, faite de fuites successives, et qui l\'a contrainte avec son frère à demander l\'hospitalité aux puissants des cités libres, l\'a rendue prudente et lucide sur la nature humaine. Elle se montre bien plus consciente que son aîné des attentes de ceux qui soutiennent prétendument les derniers héritiers de la lignée de la maison Targaryen.', NULL, NULL, 8),
(21, NULL, NULL, 'Targaryen', 'Viserys', 'viserys.png', 'Né en l\'an 276, Viserys III Targaryen, dit le Roi Gueux, est le second fils du roi Aerys II Targaryen et de la reine Rhaella Targaryen. Depuis la mort de son père et de son frère aîné, il est l\'héritier légitime des Sept Couronnes. La rébellion de Robert Baratheon l\'a contraint à s\'exiler, avec sa sœur Daenerys, dans les cités libres. Physiquement, Viserys ressemble beaucoup à feu le prince Rhaegar, mais est plus petit. Il arbore des cheveux d\'or argenté et ses yeux fiévreux couleur lilas pâle lui donnent un air peu aimable.\r\n\r\nOrgueilleux et ambitieux, il est persuadé d\'être le « dernier dragon ». Son objectif absolu est de retrouver son trône, et il est prêt à tout pour cela. Marqué par l\'exil contraint et la perte progressive de son prestige, il se montre volontiers colérique, brutal et méprisant, notamment envers sa sœur. Cependant, et bien que ces traits de caractères semblent partiellement antérieurs à l\'exil, Viserys sait aussi se montrer délicat et attentionné envers Daenerys. Abreuvé de fausses promesses par les puissants des cités libres et devenu un « phénomène de foire », Viserys a développé une profonde aigreur doublée d\'un aveuglement certain sur sa condition et ses chances de regagner un jour son trône.', NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Structure de la table `house`
--

CREATE TABLE `house` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `house`
--

INSERT INTO `house` (`id`, `created_at`, `updated_at`, `name`, `image`, `colour`) VALUES
(1, NULL, NULL, 'Stark', 'stark.png', 'e3e3e3'),
(2, NULL, NULL, 'Baratheon', 'baratheon.png', 'baa207'),
(3, NULL, NULL, 'Tully', 'tully.png', '2b3aab'),
(4, NULL, NULL, 'Arryn', 'arryn.png', '6ebae6'),
(5, NULL, NULL, 'Lannister', 'lannister.png', 'a31a10'),
(6, NULL, NULL, 'Greyjoy', 'greyjoy.png', '1c1c1c'),
(7, NULL, NULL, 'Tyrell', 'tyrell.png', '1d6b2e'),
(8, NULL, NULL, 'Martell', 'martell.png', 'd6973e'),
(9, NULL, NULL, 'Targaryen', 'targaryen.png', '111111');

-- --------------------------------------------------------

--
-- Structure de la table `house_has_characters`
--

CREATE TABLE `house_has_characters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `character` bigint(20) UNSIGNED NOT NULL,
  `house` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `house_has_characters`
--

INSERT INTO `house_has_characters` (`id`, `character`, `house`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 3, 3),
(5, 4, 1),
(6, 5, 1),
(7, 6, 1),
(8, 7, 1),
(9, 8, 1),
(10, 9, 2),
(11, 10, 2),
(12, 10, 5),
(13, 11, 2),
(14, 11, 5),
(15, 12, 2),
(16, 12, 5),
(17, 13, 2),
(18, 13, 5),
(19, 15, 4),
(20, 16, 5),
(21, 17, 5),
(22, 18, 5),
(23, 19, 6),
(24, 20, 9),
(25, 21, 9),
(26, 14, 4),
(27, 14, 3);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_06_03_085358_create_main_tables', 1),
(2, '2020_06_03_093125_update_tables_for_relations', 1);

-- --------------------------------------------------------

--
-- Structure de la table `title`
--

CREATE TABLE `title` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `title`
--

INSERT INTO `title` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, NULL, 'Lord'),
(2, NULL, NULL, 'Lady'),
(3, NULL, NULL, 'Noble'),
(4, NULL, NULL, 'Roi'),
(5, NULL, NULL, 'Reine'),
(6, NULL, NULL, 'Bâtard'),
(7, NULL, NULL, 'Prince'),
(8, NULL, NULL, 'Princesse'),
(9, NULL, NULL, 'Chevalier');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_mother_id_foreign` (`mother_id`),
  ADD KEY `character_father_id_foreign` (`father_id`),
  ADD KEY `character_id_title_foreign` (`id_title`);

--
-- Index pour la table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `house_has_characters`
--
ALTER TABLE `house_has_characters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_has_characters_character_foreign` (`character`),
  ADD KEY `house_has_characters_house_foreign` (`house`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `character`
--
ALTER TABLE `character`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `house`
--
ALTER TABLE `house`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `house_has_characters`
--
ALTER TABLE `house_has_characters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `title`
--
ALTER TABLE `title`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `character`
--
ALTER TABLE `character`
  ADD CONSTRAINT `character_father_id_foreign` FOREIGN KEY (`father_id`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_id_title_foreign` FOREIGN KEY (`id_title`) REFERENCES `title` (`id`),
  ADD CONSTRAINT `character_mother_id_foreign` FOREIGN KEY (`mother_id`) REFERENCES `character` (`id`);

--
-- Contraintes pour la table `house_has_characters`
--
ALTER TABLE `house_has_characters`
  ADD CONSTRAINT `house_has_characters_character_foreign` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `house_has_characters_house_foreign` FOREIGN KEY (`house`) REFERENCES `house` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
