<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints\Regex;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class UserCreateType extends AbstractType
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
                    "placeholder" => "votre mot de passe"
                ],
                "mapped" => false,
                'constraints' => [
                    new NotBlank(),
                    new Regex(
                        "/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$/",
                        "Le mot de passe doit contenir au minimum 8 caractères, une majuscule, un chiffre et un caractère spécial"
                    ),
            ]
            ])
            ->add('password_confirmed', PasswordType::class,[
                "attr" => [
                    "placeholder" => "veuillez confirmer le mot de passe"
                ],
                "mapped" => false,
                'constraints' => [
                    new NotBlank(),
                    new Regex(
                        "/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$/",
                        "Le mot de passe doit contenir au minimum 8 caractères, une majuscule, un chiffre et un caractère spécial"
                    )
            ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
