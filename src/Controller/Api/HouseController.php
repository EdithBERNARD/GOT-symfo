<?php

namespace App\Controller\Api;

use App\Entity\House;
use App\Repository\HouseRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HouseController extends AbstractController
{
    /**
     * @Route("/api/houses", name="app_api_house",  methods={"GET"})
     */
    public function browse(HouseRepository $houseRepository): JsonResponse
    {
        $allHouse = $houseRepository->findAll();
        
        return $this->json(
            $allHouse,
            Response::HTTP_OK,
            [],
            [
                "groups" => [
                    "house_browse"
                ]
        ]);
    }

    /**
     * @Route("/api/houses/{id}", name="app_api_house_read", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function read(House $house = null) 
    {
        if ($house === null){
            return $this->json(
                [
                    "message" => "cette maison n'existe pas"
                ],
                Response::HTTP_NOT_FOUND
            );
        }
        return $this->json(
            $house,
            Response::HTTP_FOUND,
            [],
            [
                "groups" =>
                [
                    "house_browse"
                ]
            ]
        );
    }

}
