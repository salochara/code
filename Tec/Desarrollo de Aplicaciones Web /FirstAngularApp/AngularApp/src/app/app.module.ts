import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { TituloComponent } from './titulo/titulo.component';
import { Titulo2Component } from './titulo2/titulo2.component';
import { AlumnosComponent } from './alumnos/alumnos.component';
import { AlumnoComponent } from './alumno/alumno.component';
import { Routes, RouterModule } from '@angular/router';
import { NavbarComponent } from './navbar/navbar.component';
import { FooterComponent } from './footer/footer.component';

const routes: Routes = [
  {
    path: 'titulo',
    component: TituloComponent
  }
];


@NgModule({
  declarations: [
    AppComponent,
    TituloComponent,
    Titulo2Component,
    AlumnosComponent,
    AlumnoComponent,
    NavbarComponent,
    FooterComponent
  ],
  imports: [
    BrowserModule,
    RouterModule.forRoot(routes)
  ],
  exports:[RouterModule],
  providers: [],
  bootstrap: [AppComponent] // el bootstrap es el que agarra el index.html.. ahroita solo ve el App Component...
  // ya del app.component.html se pueden importar mas componentes
})
export class AppModule { }
