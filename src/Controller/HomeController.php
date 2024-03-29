<?php

namespace App\Controller;

use App\Entity\Title;
use App\Entity\Character;
use App\Form\CharacterType;
//use Doctrine\ORM\EntityManager;
use App\Repository\HouseRepository;
use App\Repository\TitleRepository;
use App\Repository\CharacterRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    // TODO : route index : affiche l'ensemble des perso
    /**
     * @Route("/", name="app_home_index")
     * @Route("/", name="default")
     * @return Reponse
     */
    public function index(CharacterRepository $characterRepository): Response
    {

        //todo je recupère tous mes perso
        $allCharacters = $characterRepository->findAll();

        

        return $this->render('home/index.html.twig', [
            "allCharacters" => $allCharacters
        ]);
    }

    //TODO : route show : affiche les infos d'un perso (id)
    /**
     * @Route("/perso/{index}", name="app_home_show", requirements={"index"="\d+"})
     * 
     * @return Reponse
     */
    public function show($index, CharacterRepository $characterRepository): Response
    {

        //todo je cherche le bon perso dans ma BDD
        $character = $characterRepository->find($index);
       

        return $this->render('home/show.html.twig', [
            "theCharacter" => $character
        ]);
    }


    //TODO : route "houses" : affiche l'ensmble des maisons
    /**
     * @Route("/houses", name="app_home_list")
     * 
     * @return Reponse
     */
    public function list(HouseRepository $houseRepository): Response
    {

        //todo je recupère toutes mes maisons
        $allHouses = $houseRepository->findAll();
        return $this->render('home/houses.html.twig', [
            "allHouses" => $allHouses
        ]);
    }

    //TODO : route "house" : affiche les perso d'une maison (id maison)
    /**
     * @Route("/house/{index}", name="app_home_house", requirements={"index"="\d+"})
     * 
     * @return Reponse
     */
    public function house($index, HouseRepository $houseRepository): Response
    {

        // done je recupère toutes mes maisons
        $theHouse = $houseRepository->find($index);
        //dd($theHouse);
        
        return $this->render('home/house.html.twig', [
            "theHouse" => $theHouse
        ]);
    }

    //TODO : route "titles" : affiche la liste des titres
    /**
     * @Route("/titles", name="app_home_titles")
     * 
     * @return Reponse
     */
    public function titles(TitleRepository $titleRepository): Response
    {

        //todo je recupère toutes mes titres
        $allTitles= $titleRepository->findAll();
        return $this->render('home/titles.html.twig', [
            "allTitles" => $allTitles
        ]);
    }

    //TODO : route "title" : affiche l'ensemble des perso d'un titre 
    /**
     * @Route("/title/{index}", name="app_home_title", requirements={"index"="\d+"})
     * 
     * @return Reponse
     */
    public function title($index, TitleRepository $titleRepository): Response
    {

        //todo je recupère toutes mes maisons
        $theTitle= $titleRepository->find($index);
        return $this->render('home/title.html.twig', [
            "theTitle" => $theTitle
        ]);
    }

    //TODO : route "add" : affiche le form pour la création d'un perso
    /**
     * @Route("/add", name="app_character_add", methods={"GET", "POST"})
     * 
     * @return Reponse 
     */
    public function add(Request $request, CharacterRepository $characterRepository, EntityManagerInterface $entityManager )
    {
        // avant de créer le formulaire, je pré-créer un objet qui sera associé aux valeurs du formulaire
        $newCharacter = new Character(); 

        // on créer un formulaire depuis un Type de formulaire ET une entité
        $form = $this->createForm(CharacterType::class, $newCharacter);

        // DEBUG mon entité est remplit
        //dd($newCharacter);
        $form->handleRequest($request);

        // je vérifie que le formulaire a été soumis
        //  Si j'avais plusieur formulaire sur la même page
        // on pourrait tester les formulaire individuellement
        // alors que le test sur la méthode=POST, ne suffirait pas
        if ($form->isSubmitted() )
        {
            dd($newCharacter);
            // Dans les fixture j'ai un manager pour faire le persist et le flush
            // ? https://symfony.com/doc/current/doctrine.html#persisting-objects-to-the-database
            // On a aussi le repository qui nous permet de faire l'ajout
            // TODO : persist : CharacterRepository
            $entityManager->persist($newCharacter);

            $entityManager->flush();

            // TODO : flush => fait avec le add du repository
            $characterRepository->add($newCharacter, true);

            // TODO après un ajout, faire une redirection
            // j'ai l'id de mon nouvel objet à jour car j'ai fait un flush avant
            return $this->redirectToRoute("app_home");
        }

        // TODO : afficher un formulaire
        //? https://symfony.com/doc/5.4/forms.html#rendering-forms
        return $this->renderForm("home/add.html.twig", [
            "formulaire" => $form
        ]);
    }



}
