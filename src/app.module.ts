import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ArtistaModule } from './artista/artista.module';
import { PrismaModule } from './database/prisma.module';

@Module({
  imports: [ArtistaModule, PrismaModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}

