<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230223132757 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE character_house (character_id INT NOT NULL, house_id INT NOT NULL, INDEX IDX_9916DEFF1136BE75 (character_id), INDEX IDX_9916DEFF6BB74515 (house_id), PRIMARY KEY(character_id, house_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE character_house ADD CONSTRAINT FK_9916DEFF1136BE75 FOREIGN KEY (character_id) REFERENCES `character` (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE character_house ADD CONSTRAINT FK_9916DEFF6BB74515 FOREIGN KEY (house_id) REFERENCES house (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE character_house DROP FOREIGN KEY FK_9916DEFF1136BE75');
        $this->addSql('ALTER TABLE character_house DROP FOREIGN KEY FK_9916DEFF6BB74515');
        $this->addSql('DROP TABLE character_house');
    }
}
