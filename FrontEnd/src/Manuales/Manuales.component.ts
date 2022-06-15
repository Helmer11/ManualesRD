import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Manuales } from 'src/Models/Manuales';
import { ManualesService } from './Manuales.service';

@Component({
  selector: 'app-Manuales',
  templateUrl: './Manuales.component.html',
  styleUrls: ['./Manuales.component.scss']
})
export class ManualesComponent implements OnInit {

  public ListaForm!: FormGroup;
  public ListaManual!: Manuales[];
  indice!: number;
  loading = false;

  constructor(private _ManualService: ManualesService,
              private _formB: FormBuilder) { }

  ngOnInit() {
    this.CreateFormulario();
    this.CargarLista();
  }


  CreateFormulario(){
    this.ListaForm = this._formB.group({
    Manual_Titulo:''
    });
  }


  BuscarManuales(){
    this._ManualService.filtrarManuales.PageIndex = this.indice = 1;
    this._ManualService.filtrarManuales.Manual_Titulo = this.ListaForm.controls.Manual_Titulo.value;
    this._ManualService.filtrarManuales.PageSize = 10;
    this.CargarLista();
  };

CargarLista(){
  setTimeout(() => {
    this.loading = true;
    this._ManualService.ListaManual(this._ManualService.filtrarManuales).subscribe(manual => {
      this.ListaManual = manual as Manuales[];
    });
    this.loading = false;
  },1000);
  //this.loading = false;
}

Limpiar(){
  this.ListaForm.reset();
  this.CargarLista();
}



}
