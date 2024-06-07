import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { ColetivoService } from './coletivo.service';
import { CreateColetivoDto } from './dto/create-coletivo.dto';
import { UpdateColetivoDto } from './dto/update-coletivo.dto';

@Controller('coletivo')
export class ColetivoController {
  constructor(private readonly coletivoService: ColetivoService) {}

  @Post()
  create(@Body() createColetivoDto: CreateColetivoDto) {
    return this.coletivoService.create(createColetivoDto);
  }

  @Get()
  findAll() {
    return this.coletivoService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.coletivoService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateColetivoDto: UpdateColetivoDto) {
    return this.coletivoService.update(+id, updateColetivoDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.coletivoService.remove(+id);
  }
}
