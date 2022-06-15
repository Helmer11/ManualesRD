import { NgModule, Component } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ManualesComponent } from '../Manuales/Manuales.component';


const routes: Routes = [
  { path: '', component: ManualesComponent},
  { path: 'Lista', component: ManualesComponent},
  { path: '', redirectTo: 'Lista' ,pathMatch: 'full' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
  providers: []
})

export class App_Routing {}
