import {Component, Input, OnInit} from '@angular/core';
import {AlumnosService} from '../services/alumnos.service';

@Component({
  selector: 'alumno',
  templateUrl: './alumno.component.html',
  styleUrls: ['./alumno.component.scss']
})
export class AlumnoComponent implements OnInit {
  // declaro data para usarlo el html
  @Input() data;
  constructor() { }

  ngOnInit() {
  }

}
