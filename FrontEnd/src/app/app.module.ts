import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { HttpClientModule } from '@angular/common/http';
import { AppComponent } from './app.component';
import { ManualesComponent } from '../Manuales/Manuales.component';

import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { App_Routing } from './app.routing';

@NgModule({
  declarations: [
    AppComponent,
      ManualesComponent
   ],
  imports: [
    BrowserModule,
    App_Routing,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
