<?php

namespace App\Form;

use App\Entity\Title;
use App\Entity\Character;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class Character1Type extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            // ->add('createdAt')
            // ->add('updatedAt')
            ->add('lastName', TextType::class, [
                'empty_data' => ""
            ])
            ->add('firstName', TextType::class, [
                'empty_data' => ""
            ])
            ->add('image', TextType::class, [
                'empty_data' => ""
            ])
            ->add('biography', TextareaType::class)
            // ->add('mother')
            // ->add('father')
            // ->add('houses')

            //liste des titres (champ déroulant) c'est un EntityType
            ->add('title', EntityType::class, [
                // ! ne pas oublier de dire de quelle entité en parle
                'class' => Title::class,
                // ! Object of class App\Entity\Author could not be converted to string
            // je dois préciser quelle propriété doit être afficher dans la liste déroulante
            'choice_label' => 'name',
            ]
            )
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Character::class,
        ]);
    }
}
