import { Injectable } from '@nestjs/common';
import { CreateAtuacaoDto } from './dto/create-atuacao.dto';
import { UpdateAtuacaoDto } from './dto/update-atuacao.dto';

@Injectable()
export class AtuacaoService {
  create(createAtuacaoDto: CreateAtuacaoDto) {
    return 'This action adds a new atuacao';
  }

  findAll() {
    return `This action returns all atuacao`;
  }

  findOne(id: number) {
    return `This action returns a #${id} atuacao`;
  }

  update(id: number, updateAtuacaoDto: UpdateAtuacaoDto) {
    return `This action updates a #${id} atuacao`;
  }

  remove(id: number) {
    return `This action removes a #${id} atuacao`;
  }
}
