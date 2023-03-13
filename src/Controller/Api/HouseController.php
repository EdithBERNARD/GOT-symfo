<?php

namespace App\Controller\Api;

use App\Entity\House;
use App\Repository\HouseRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Serializer\Exception\NotEncodableValueException;
use Symfony\Component\DependencyInjection\Loader\Configurator\serializer;

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


    /**
     * @Route("/api/houses", name="app_api_house_add", methods={"POST"})
     */
    public function add(
        Request $request, 
        SerializerInterface $serializer, 
        HouseRepository $houseRepository,
        ValidatorInterface $validator
    )
    {
    $contentJson = $request->getContent();

    try {
        $houseFromJson = $serializer->deserialize(
            // 1. le json
            $contentJson,
            // 2. le type, càd la classe Entité
            House::class,
            // 3. le format de données
            'json'
            // 4. le contexte, pour l'instant rien à y mettre
        );
        // je précise un type d'erreur en précisant la classe dans le catch
        // ici j'attrape litéralement tout ce qui se 'lance'
        // } catch (NotEncodableValueException $e){
        // ici on aura que les erreurs de type NotEncodableValueException
    } catch (\Throwable $e) {
        // notre exception est dans $e
        // dd($e);
        // TODO avertir l'utilisateur
        return $this->json(
            // 1. le message d'erreur
            $e->getMessage(),
            // 2. le code approprié : 422
            Response::HTTP_UNPROCESSABLE_ENTITY
        );
    }
    // TODO : on valide les données avant de persist/flush
    $listError = $validator->validate($houseFromJson);

    if (count($listError) > 0){
        // On a des erreurs de validation
        return $this->json(
           // 1. le contenu : la liste des erreurs
           $listError,
           // 2. un code approprié : 422
           Response::HTTP_UNPROCESSABLE_ENTITY
       );       
    }

    $houseRepository->add($houseFromJson, true);

    return $this->json(
        $houseFromJson,
        Response::HTTP_CREATED,
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
