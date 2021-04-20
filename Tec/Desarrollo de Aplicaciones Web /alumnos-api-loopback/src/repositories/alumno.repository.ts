import {DefaultCrudRepository} from '@loopback/repository';
import {Alumno, AlumnoRelations} from '../models';
import {MongoConnectionDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class AlumnoRepository extends DefaultCrudRepository<
  Alumno,
  typeof Alumno.prototype.matricula,
  AlumnoRelations
> {
  constructor(
    @inject('datasources.mongo_connection') dataSource: MongoConnectionDataSource,
  ) {
    super(Alumno, dataSource);
  }
}
