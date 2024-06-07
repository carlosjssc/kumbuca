import { Module } from '@nestjs/common';
import { ColetivoService } from './coletivo.service';
import { ColetivoController } from './coletivo.controller';

@Module({
  controllers: [ColetivoController],
  providers: [ColetivoService],
})
export class ColetivoModule {}
