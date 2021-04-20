import {DefaultCrudRepository} from '@loopback/repository';
import {Salon, SalonRelations} from '../models';
import {MongoConnectionDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class SalonRepository extends DefaultCrudRepository<
  Salon,
  typeof Salon.prototype.nombre,
  SalonRelations
> {
  constructor(
    @inject('datasources.mongo_connection') dataSource: MongoConnectionDataSource,
  ) {
    super(Salon, dataSource);
  }
}
