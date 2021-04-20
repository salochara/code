// Uncomment these imports to begin using these cool features!

// import {inject} from '@loopback/context';
import {get} from '@loopback/openapi-v3';

export class HolaController {
  constructor() {}
  @get('/hola')
  hola():string {
    return 'Hola banda'
  }
}
