-- CreateTable
CREATE TABLE `Artista` (
    `IDARTISTA` INTEGER NOT NULL AUTO_INCREMENT,
    `NOMEARTISTICO` VARCHAR(191) NOT NULL,
    `NOMECOMPLETO` VARCHAR(191) NOT NULL,
    `ATIVIDADES` VARCHAR(191) NULL,
    `DATANASC` DATETIME(3) NULL,
    `CPF` VARCHAR(11) NULL,
    `CONTATO1` VARCHAR(11) NULL,
    `CONTATO2` VARCHAR(11) NULL,
    `GENERO` VARCHAR(1) NULL,
    `ORIENTACAOSEXUAL` VARCHAR(50) NULL,
    `BIOGRAFIA` VARCHAR(191) NULL,
    `DATACAD` DATETIME(3) NULL,
    `ATIVO` VARCHAR(1) NOT NULL DEFAULT 'S',

    PRIMARY KEY (`IDARTISTA`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Atuacao` (
    `IDATUACAO` INTEGER NOT NULL AUTO_INCREMENT,
    `IDARTISTA` INTEGER NOT NULL,
    `DESCRICAO` VARCHAR(191) NOT NULL,
    `DATACAD` DATETIME(3) NULL,

    PRIMARY KEY (`IDATUACAO`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Coletivo` (
    `IDCOLETIVO` INTEGER NOT NULL AUTO_INCREMENT,
    `IDUSUARIO` INTEGER NOT NULL,
    `NOMECOLETIVO` VARCHAR(150) NOT NULL,
    `ATIVIDADES` VARCHAR(191) NULL,
    `PUBLICOALVO` VARCHAR(191) NULL,
    `NOMEREPRESENTANTE` VARCHAR(255) NULL,
    `CPFREPRESENTANTE` VARCHAR(11) NULL,
    `CONTATOREPRESENTANTE` VARCHAR(11) NULL,
    `CNPJ` VARCHAR(14) NULL,
    `NOMEFANTASIA` VARCHAR(255) NULL,
    `RAZAOSOCIAL` VARCHAR(255) NULL,
    `DATAENCERRAMENTO` DATETIME(3) NULL,
    `DATACAD` DATETIME(3) NULL,
    `ATIVO` VARCHAR(1) NOT NULL DEFAULT 'S',

    PRIMARY KEY (`IDCOLETIVO`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ColetivoArtistas` (
    `IDCOLETIVOARTISTAS` INTEGER NOT NULL AUTO_INCREMENT,
    `IDCOLETIVO` INTEGER NOT NULL,
    `IDARTISTA` INTEGER NOT NULL,
    `DATACAD` DATETIME(3) NULL,
    `ATIVO` VARCHAR(1) NOT NULL DEFAULT 'S',
    `DATASAIDA` DATETIME(3) NULL,
    `MOTIVOSAIDA` VARCHAR(191) NULL,

    PRIMARY KEY (`IDCOLETIVOARTISTAS`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Empresa` (
    `IDEMPRESA` INTEGER NOT NULL AUTO_INCREMENT,
    `NOMEFANTASIA` VARCHAR(255) NOT NULL,
    `RAZAOSOCIAL` VARCHAR(255) NULL,
    `CNPJ` VARCHAR(14) NULL,
    `CEP` VARCHAR(8) NULL,
    `LOGRADOURO` VARCHAR(255) NULL,
    `NUMERO` VARCHAR(10) NULL,
    `COMPLEMENTO` VARCHAR(50) NULL,
    `BAIRRO` VARCHAR(100) NULL,
    `CIDADE` VARCHAR(100) NULL,
    `SIGLAESTADO` VARCHAR(2) NULL,
    `DATACAD` DATETIME(3) NULL,
    `ATIVO` VARCHAR(1) NOT NULL DEFAULT 'S',

    PRIMARY KEY (`IDEMPRESA`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Projeto` (
    `IDPROJETO` INTEGER NOT NULL AUTO_INCREMENT,
    `IDCOLETIVO` INTEGER NOT NULL,
    `NOMEPROJETO` VARCHAR(255) NOT NULL,
    `SEGMENTO` VARCHAR(50) NULL,
    `DATAINICIO` DATETIME(3) NULL,
    `DATAFIM` DATETIME(3) NULL,
    `PUBLICOALVO` VARCHAR(191) NULL,
    `LINKEDITAL` VARCHAR(255) NULL,
    `NOMEEDITAL` VARCHAR(255) NULL,
    `DATAREALIZADO` DATETIME(3) NULL,
    `VALORPROJETO` DOUBLE NULL,
    `VALOREDITAL` DOUBLE NULL,
    `LINKDRIVE` VARCHAR(191) NULL,
    `DATACAD` DATETIME(3) NULL,
    `ATIVO` VARCHAR(1) NOT NULL DEFAULT 'S',

    PRIMARY KEY (`IDPROJETO`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Usuario` (
    `IDUSUARIO` INTEGER NOT NULL AUTO_INCREMENT,
    `USUARIO` VARCHAR(40) NOT NULL,
    `SENHA` VARCHAR(16) NOT NULL,
    `EMAIL` VARCHAR(255) NULL,
    `ADMINISTRADOR` VARCHAR(1) NOT NULL DEFAULT 'N',
    `DATACAD` DATETIME(3) NULL,
    `ATIVO` VARCHAR(1) NOT NULL DEFAULT 'S',

    PRIMARY KEY (`IDUSUARIO`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Atuacao` ADD CONSTRAINT `Atuacao_IDARTISTA_fkey` FOREIGN KEY (`IDARTISTA`) REFERENCES `Artista`(`IDARTISTA`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Coletivo` ADD CONSTRAINT `Coletivo_IDUSUARIO_fkey` FOREIGN KEY (`IDUSUARIO`) REFERENCES `Usuario`(`IDUSUARIO`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ColetivoArtistas` ADD CONSTRAINT `ColetivoArtistas_IDCOLETIVO_fkey` FOREIGN KEY (`IDCOLETIVO`) REFERENCES `Coletivo`(`IDCOLETIVO`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ColetivoArtistas` ADD CONSTRAINT `ColetivoArtistas_IDARTISTA_fkey` FOREIGN KEY (`IDARTISTA`) REFERENCES `Artista`(`IDARTISTA`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Projeto` ADD CONSTRAINT `Projeto_IDCOLETIVO_fkey` FOREIGN KEY (`IDCOLETIVO`) REFERENCES `Coletivo`(`IDCOLETIVO`) ON DELETE RESTRICT ON UPDATE CASCADE;
