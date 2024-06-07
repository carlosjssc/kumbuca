// src/modules/artista/artista.service.ts
import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from 'src/database/prisma.service';
import { CreateArtistaDto } from './dto/create-artista.dto';
import { UpdateArtistaDto } from './dto/update-artista.dto';
import { Artista } from '@prisma/client';

@Injectable()
export class ArtistaService {
  constructor(private prisma: PrismaService) {}

  async create(data: CreateArtistaDto): Promise<Artista> {
    return this.prisma.artista.create({
      data,
    });
  }

  async findAll(): Promise<Artista[]> {
    return this.prisma.artista.findMany();
  }

  async findOne(id: number): Promise<Artista | null> {
    const artista = await this.prisma.artista.findUnique({ where: { IDARTISTA: id } });
    if (!artista) {
      throw new NotFoundException('Artista Not Found');
    }
    return artista;
  }

  async update(id: number, data: UpdateArtistaDto): Promise<Artista> {
    await this.findOne(id);
    return this.prisma.artista.update({
      where: { IDARTISTA: id },
      data,
    });
  }

  async remove(id: number): Promise<Artista> {
    await this.findOne(id);
    return this.prisma.artista.delete({ where: { IDARTISTA: id } });
  }
}