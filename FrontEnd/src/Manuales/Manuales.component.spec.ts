/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { ManualesComponent } from './Manuales.component';

describe('ManualesComponent', () => {
  let component: ManualesComponent;
  let fixture: ComponentFixture<ManualesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ManualesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ManualesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
