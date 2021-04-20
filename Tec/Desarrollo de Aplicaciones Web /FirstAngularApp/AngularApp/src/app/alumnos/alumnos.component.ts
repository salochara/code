import { Component, OnInit } from '@angular/core';
import { AlumnosService} from '../services/alumnos.service';

@Component({
  selector: 'app-alumnos',
  templateUrl: './alumnos.component.html',
  styleUrls: ['./alumnos.component.scss'],
  providers: [AlumnosService]
})
export class AlumnosComponent implements OnInit {
  alumnos;

  constructor(alumnosServiceInstance: AlumnosService) {
    this.alumnos = alumnosServiceInstance.getAlumnos();
  }

  ngOnInit() {
  }
}
