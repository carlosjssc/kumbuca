import { IsString, IsOptional, IsDateString } from 'class-validator';

export class CreateArtistaDto {
  @IsString()
  NOMEARTISTICO: string;

  @IsString()
  NOMECOMPLETO: string;

  @IsOptional()
  @IsString()
  ATIVIDADES?: string;

  @IsOptional()
  @IsDateString()
  DATANASC?: string;

  @IsOptional()
  @IsString()
  CPF?: string;

  @IsOptional()
  @IsString()
  CONTATO1?: string;

  @IsOptional()
  @IsString()
  CONTATO2?: string;

  @IsOptional()
  @IsString()
  GENERO?: string;

  @IsOptional()
  @IsString()
  ORIENTACAOSEXUAL?: string;

  @IsOptional()
  @IsString()
  BIOGRAFIA?: string;

  @IsOptional()
  @IsDateString()
  DATACAD?: string;

  @IsString()
  ATIVO: string;
}
