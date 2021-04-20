import {Entity, model, property} from '@loopback/repository';
import {hasMany} from '@loopback/repository';
import {Alumno} from './alumno.model';

@model({settings: {}})
export class Salon extends Entity {
  @property({
    type: 'string',
  })
  nombre?: string;

  @property({
    type: 'string',
    id: true,
    required: true,
  })
  id:string;

  @hasMany(()=> Alumno)
  alumnos?:Alumno[];

  constructor(data?: Partial<Salon>) {
    super(data);
  }
}

export interface SalonRelations {
  // describe navigational properties here
}

export type SalonWithRelations = Salon & SalonRelations;

