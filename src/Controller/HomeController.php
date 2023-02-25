<?php

namespace App\Controller;

use App\Entity\Title;
use App\Repository\CharacterRepository;
use App\Repository\HouseRepository;
use App\Repository\TitleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    // TODO : route index : affiche l'ensemble des perso
    /**
     * @Route("/", name="app_home_index")
     * 
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
    //TODO : route "" : affiche l'ensmble des maisons
    // TODO : route index : affiche l'ensemble des perso
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

    //TODO : route "" : affiche les perso d'une maison (id maison)
    /**
     * @Route("/house/{index}", name="app_home_house", requirements={"index"="\d+"})
     * 
     * @return Reponse
     */
    public function house($index,CharacterRepository $characterRepository, HouseRepository $houseRepository): Response
    {

        //todo je recupère toutes mes maisons
        $theHouse = $houseRepository->find($index);
        //dd($theHouse);
        //todo je recupère tous mes perso
        $allCharacters = $characterRepository->findAll();
        return $this->render('home/house.html.twig', [
            "allCharacters" => $allCharacters,
            "theHouse" => $theHouse
        ]);
    }


}
