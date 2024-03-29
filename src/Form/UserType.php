<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('email')
            ->add('roles', ChoiceType::class, [
                "choices" => [
                    "ADMIN" => "ROLE_ADMIN",
                    "MANAGER" => "ROLE_MANAGER",
                    "USER" => "ROLE_USER"
                ],
                'multiple' => true,
                'expanded' => true,
            ])
            ->add('password', PasswordType::class,[
                "attr" => [
                    "placeholder" => "laisse vide si inchangé"
                ],
                "mapped" => false
            ]
            )
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
            'attr' =>[
                'novalidate' => 'novalidate'
            ]
        ]);
    }
}
