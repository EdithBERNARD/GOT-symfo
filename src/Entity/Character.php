<?php

namespace App\Entity;

use App\Repository\CharacterRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CharacterRepository::class)
 * @ORM\Table(name="`character`")
 */
class Character
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $createdAt;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $updatedAt;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $lastName;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $firstName;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $image;

    /**
     * @ORM\Column(type="text")
     */
    private $biography;

    /**
     * @ORM\ManyToOne(targetEntity=Character::class, inversedBy="motherChilds")
     */
    private $mother;

    /**
     * @ORM\OneToMany(targetEntity=Character::class, mappedBy="mother")
     */
    private $motherChilds;

    /**
     * @ORM\ManyToOne(targetEntity=Character::class, inversedBy="fatherChilds")
     */
    private $father;

    /**
     * @ORM\OneToMany(targetEntity=Character::class, mappedBy="father")
     */
    private $fatherChilds;

    /**
     * @ORM\ManyToMany(targetEntity=House::class, inversedBy="characters")
     */
    private $houses;

    /**
     * @ORM\ManyToOne(targetEntity=Title::class, inversedBy="characters")
     */
    private $title;

    public function __construct()
    {
        $this->motherChilds = new ArrayCollection();
        $this->fatherChilds = new ArrayCollection();
        $this->houses = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(?\DateTimeInterface $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updatedAt;
    }

    public function setUpdatedAt(?\DateTimeInterface $updatedAt): self
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    public function getLastName(): ?string
    {
        return $this->lastName;
    }

    public function setLastName(string $lastName): self
    {
        $this->lastName = $lastName;

        return $this;
    }

    public function getFirstName(): ?string
    {
        return $this->firstName;
    }

    public function setFirstName(string $firstName): self
    {
        $this->firstName = $firstName;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getBiography(): ?string
    {
        return $this->biography;
    }

    public function setBiography(string $biography): self
    {
        $this->biography = $biography;

        return $this;
    }

    public function getMother(): ?self
    {
        return $this->mother;
    }

    public function setMother(?self $mother): self
    {
        $this->mother = $mother;

        return $this;
    }

    /**
     * @return Collection<int, self>
     */
    public function getMotherChilds(): Collection
    {
        return $this->motherChilds;
    }

    public function addMotherChild(self $motherChild): self
    {
        if (!$this->motherChilds->contains($motherChild)) {
            $this->motherChilds[] = $motherChild;
            $motherChild->setMother($this);
        }

        return $this;
    }

    public function removeMotherChild(self $motherChild): self
    {
        if ($this->motherChilds->removeElement($motherChild)) {
            // set the owning side to null (unless already changed)
            if ($motherChild->getMother() === $this) {
                $motherChild->setMother(null);
            }
        }

        return $this;
    }

    public function getFather(): ?self
    {
        return $this->father;
    }

    public function setFather(?self $father): self
    {
        $this->father = $father;

        return $this;
    }

    /**
     * @return Collection<int, self>
     */
    public function getFatherChilds(): Collection
    {
        return $this->fatherChilds;
    }

    public function addFatherChild(self $fatherChild): self
    {
        if (!$this->fatherChilds->contains($fatherChild)) {
            $this->fatherChilds[] = $fatherChild;
            $fatherChild->setFather($this);
        }

        return $this;
    }

    public function removeFatherChild(self $fatherChild): self
    {
        if ($this->fatherChilds->removeElement($fatherChild)) {
            // set the owning side to null (unless already changed)
            if ($fatherChild->getFather() === $this) {
                $fatherChild->setFather(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, House>
     */
    public function getHouses(): Collection
    {
        return $this->houses;
    }

    public function addHouse(House $house): self
    {
        if (!$this->houses->contains($house)) {
            $this->houses[] = $house;
        }

        return $this;
    }

    public function removeHouse(House $house): self
    {
        $this->houses->removeElement($house);

        return $this;
    }

    public function getTitle(): ?Title
    {
        return $this->title;
    }

    public function setTitle(?Title $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function name(): string
    {
        return $this->firstName . ' ' . $this->lastName;
    }
}
