import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { ArtistaService } from './artista.service';
import { CreateArtistaDto } from './dto/create-artista.dto';
import { UpdateArtistaDto } from './dto/update-artista.dto';

@Controller('artistas')
export class ArtistaController {
  constructor(private readonly artistaService: ArtistaService) {}

  @Post()
  async create(@Body() createArtistaDto: CreateArtistaDto) {
    return this.artistaService.create(createArtistaDto);
  }

  @Get()
  async findAll() {
    return this.artistaService.findAll();
  }

  @Get(':id')
  async findOne(@Param('id') id: string) {
    return this.artistaService.findOne(+id);
  }

  @Patch(':id')
  async update(@Param('id') id: string, @Body() updateArtistaDto: UpdateArtistaDto) {
    return this.artistaService.update(+id, updateArtistaDto);
  }

  @Delete(':id')
  async remove(@Param('id') id: string) {
    return this.artistaService.remove(+id);
  }
}
