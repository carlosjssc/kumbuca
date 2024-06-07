import { Injectable } from '@nestjs/common';
import { CreateColetivoDto } from './dto/create-coletivo.dto';
import { UpdateColetivoDto } from './dto/update-coletivo.dto';

@Injectable()
export class ColetivoService {
  create(createColetivoDto: CreateColetivoDto) {
    return 'This action adds a new coletivo';
  }

  findAll() {
    return `This action returns all coletivo`;
  }

  findOne(id: number) {
    return `This action returns a #${id} coletivo`;
  }

  update(id: number, updateColetivoDto: UpdateColetivoDto) {
    return `This action updates a #${id} coletivo`;
  }

  remove(id: number) {
    return `This action removes a #${id} coletivo`;
  }
}
