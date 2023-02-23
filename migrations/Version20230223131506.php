<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230223131506 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE `character` ADD mother_id INT DEFAULT NULL, ADD father_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE `character` ADD CONSTRAINT FK_937AB034B78A354D FOREIGN KEY (mother_id) REFERENCES `character` (id)');
        $this->addSql('ALTER TABLE `character` ADD CONSTRAINT FK_937AB0342055B9A2 FOREIGN KEY (father_id) REFERENCES `character` (id)');
        $this->addSql('CREATE INDEX IDX_937AB034B78A354D ON `character` (mother_id)');
        $this->addSql('CREATE INDEX IDX_937AB0342055B9A2 ON `character` (father_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE `character` DROP FOREIGN KEY FK_937AB034B78A354D');
        $this->addSql('ALTER TABLE `character` DROP FOREIGN KEY FK_937AB0342055B9A2');
        $this->addSql('DROP INDEX IDX_937AB034B78A354D ON `character`');
        $this->addSql('DROP INDEX IDX_937AB0342055B9A2 ON `character`');
        $this->addSql('ALTER TABLE `character` DROP mother_id, DROP father_id');
    }
}
