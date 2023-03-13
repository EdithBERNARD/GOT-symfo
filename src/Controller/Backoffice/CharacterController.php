<?php

namespace App\Controller\Backoffice;

use App\Entity\Character;
use App\Form\CharacterType;
use App\Form\Character1Type;
use App\Repository\CharacterRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * @Route("/backoffice/character")
 */
class CharacterController extends AbstractController
{
    /**
     * @Route("/", name="app_backoffice_character_index", methods={"GET"})
     */
    public function index(CharacterRepository $characterRepository): Response
    {
        return $this->render('backoffice/character/index.html.twig', [
            'characters' => $characterRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="app_backoffice_character_new", methods={"GET", "POST"})
     */
    public function new(Request $request, CharacterRepository $characterRepository): Response
    {
        $character = new Character();
        $allCharacters = $characterRepository->findAll();
        $form = $this->createForm(Character1Type::class, $character);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $characterRepository->add($character, true);
            

            return $this->redirectToRoute('app_backoffice_character_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('backoffice/character/new.html.twig', [
            'character' => $character,
            'form' => $form,
            "allCharacters" => $allCharacters
        ]);
    }

    /**
     * @Route("/{id}", name="app_backoffice_character_show", methods={"GET"})
     */
    public function show(Character $character): Response
    {   
        return $this->render('backoffice/character/show.html.twig', [
            'character' => $character,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="app_backoffice_character_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Character $character, CharacterRepository $characterRepository): Response
    {
        $allCharacters = $characterRepository->findAll();
        $form = $this->createForm(Character1Type::class, $character);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // ! Child "mother" does not exist.
            $motherChildsId=$request->request->get("exampleFormControlSelect1");
            $motherChilds=$characterRepository->find($motherChildsId);
            $character->setMother($motherChilds);
            // $father=$form->get("father")->getData();
            // $character->setFather($father);
            // ? removeMotherChild - addMotherChild - getMother -setMother -getMotherChild


            $characterRepository->add($character, true);

            return $this->redirectToRoute('app_backoffice_character_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('backoffice/character/edit.html.twig', [
            'character' => $character,
            'form' => $form,
            "allCharacters" => $allCharacters
            
        ]);
    }

    /**
     * @Route("/{id}", name="app_backoffice_character_delete", methods={"POST"})
     */
    public function delete(Request $request, Character $character, CharacterRepository $characterRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$character->getId(), $request->request->get('_token'))) {
            $characterRepository->remove($character, true);
        }

        return $this->redirectToRoute('app_backoffice_character_index', [], Response::HTTP_SEE_OTHER);
    }
}
