<?php

namespace App\DataFixtures;

use App\Entity\Character;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $newCharacter = new Character();
        $manager->persist($newCharacter);

        $manager->flush();
    }
}
