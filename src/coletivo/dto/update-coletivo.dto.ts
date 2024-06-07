import { PartialType } from '@nestjs/mapped-types';
import { CreateColetivoDto } from './create-coletivo.dto';

export class UpdateColetivoDto extends PartialType(CreateColetivoDto) {}
