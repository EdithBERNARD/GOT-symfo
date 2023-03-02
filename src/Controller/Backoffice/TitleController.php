<?php

namespace App\Controller\Backoffice;

use App\Entity\Title;
use App\Form\TitleType;
use App\Repository\TitleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/backoffice/title")
 */
class TitleController extends AbstractController
{
    /**
     * @Route("/", name="app_backoffice_title_index", methods={"GET"})
     */
    public function index(TitleRepository $titleRepository): Response
    {
        return $this->render('backoffice/title/index.html.twig', [
            'titles' => $titleRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="app_backoffice_title_new", methods={"GET", "POST"})
     */
    public function new(Request $request, TitleRepository $titleRepository): Response
    {
        $title = new Title();
        $form = $this->createForm(TitleType::class, $title);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $titleRepository->add($title, true);

            return $this->redirectToRoute('app_backoffice_title_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('backoffice/title/new.html.twig', [
            'title' => $title,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="app_backoffice_title_show", methods={"GET"})
     */
    public function show(Title $title): Response
    {
        return $this->render('backoffice/title/show.html.twig', [
            'title' => $title,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="app_backoffice_title_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Title $title, TitleRepository $titleRepository): Response
    {
        $form = $this->createForm(TitleType::class, $title);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $titleRepository->add($title, true);

            return $this->redirectToRoute('app_backoffice_title_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('backoffice/title/edit.html.twig', [
            'title' => $title,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="app_backoffice_title_delete", methods={"POST"})
     */
    public function delete(Request $request, Title $title, TitleRepository $titleRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$title->getId(), $request->request->get('_token'))) {
            $titleRepository->remove($title, true);
        }

        return $this->redirectToRoute('app_backoffice_title_index', [], Response::HTTP_SEE_OTHER);
    }
}
