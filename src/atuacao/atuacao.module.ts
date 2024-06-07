import { Module } from '@nestjs/common';
import { AtuacaoService } from './atuacao.service';
import { AtuacaoController } from './atuacao.controller';

@Module({
  controllers: [AtuacaoController],
  providers: [AtuacaoService],
})
export class AtuacaoModule {}
