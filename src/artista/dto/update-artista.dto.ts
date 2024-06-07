import { PartialType } from '@nestjs/mapped-types';
import { CreateArtistaDto } from './create-artista.dto';

//transforma todos os campos do createArtistaDto em opcionais p/ atualização
//o que possibilita atualizar apenas um ou mais campos
export class UpdateArtistaDto extends PartialType(CreateArtistaDto) {}
