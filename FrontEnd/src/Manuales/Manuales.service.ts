import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";
import { APIURL } from '../shared/URL';
import { Manuales } from '../Models/Manuales';

@Injectable({
  providedIn: 'root'
})
export class ManualesService {

constructor(private  readonly _http: HttpClient) { }


filtrarManuales: Manuales =  {
  PageIndex: 1,
  PageSize: 10,
  Manual_Titulo:''
}

ListaManual(manual: Manuales){
    let param =`${this.filtrarManuales.PageIndex }/${ this.filtrarManuales.PageSize }/${manual.Manual_Titulo}`
  return  this._http.get(APIURL.Manuales.listaManuales + param);
}








}
