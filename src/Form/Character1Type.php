<?php

namespace App\Form;

use App\Entity\House;
use App\Entity\Title;
use App\Entity\Character;
use Symfony\Component\Form\AbstractType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\FormBuilderInterface;
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
            // ->add('mother', EntityType::class, [
            //     'class' => Character::class,
            //     'choice_label' => 'name',
            //     //'empty_data' => ""
            // ])
            // ->add('father', EntityType::class, [
            //     'class' => Character::class,
            //     'choice_label' => 'name',
            // ])
            ->add('houses', EntityType::class, [
                'class' => House::class,
                // ? https://symfony.com/doc/5.4/reference/forms/types/choice.html#select-tag-checkboxes-or-radio-buttons
                // ! Notice: Array to string conversion
                'choice_label' => 'name',
                'multiple' => true,
                'expanded' => true,

            ])

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
