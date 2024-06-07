import { Module } from '@nestjs/common';
import { ArtistaService } from './artista.service';
import { ArtistaController } from './artista.controller';
import { PrismaService } from 'src/database/prisma.service';
import { PrismaModule } from 'src/database/prisma.module';


@Module({
  imports:[PrismaModule],
  controllers: [ArtistaController],
  providers: [ArtistaService],
})
export class ArtistaModule {}
