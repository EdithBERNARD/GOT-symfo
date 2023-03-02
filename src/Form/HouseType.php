<?php

namespace App\Form;

use App\Entity\House;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class HouseType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            // ->add('createdAt')
            // ->add('updatedAt')
            ->add('name', TextType::class, [
                'empty_data' => ""
            ])
            ->add('image', TextType::class, [
                'empty_data' => ""
            ])
            ->add('colour', TextType::class, [
                'empty_data' => ""
            ])
            // ->add('characters')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => House::class,
        ]);
    }
}
