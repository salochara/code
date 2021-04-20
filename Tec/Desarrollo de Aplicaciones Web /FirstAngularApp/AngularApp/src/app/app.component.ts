import {Component, OnInit} from '@angular/core';
import { Alumno } from './titulo2/titulo2.component';

// decoradores... elementos que describen a nuestro componenete.
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
// este es el title que se renderea en ell app.component.html
export class AppComponent implements OnInit{
  title = 'PracticaClaseWeb';
  instanciaAlumno: Alumno = new Alumno();
  calificacion = 50;

  leDiClick($event){
    this.title = 'Le di click';
    console.log($event);
    console.log('Class name es (entrando con el array !): ' + $event.path[0].className);
  }



// esto es porque importe la clase Alumno del componente Titulo2
ngOnInit(){
  this.instanciaAlumno.nombre = 'Salo';
}
}

