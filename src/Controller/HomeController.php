<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    // TODO : route index : affiche l'ensemble des perso
    /**
     * @Route("/", name="app_home_index")*
     * 
     * @return Reponse
     */
    public function index(): Response
    {
        return $this->render('home/index.html.twig');
    }

    //TODO : route show : affiche les infos d'un perso (id)

    //TODO : route "" : affiche l'ensmble des maisons

    //TODO : route "" : affiche les perso d'une maison (id maison)
}
