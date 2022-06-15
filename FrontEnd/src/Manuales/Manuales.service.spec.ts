/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { ManualesService } from './Manuales.service';

describe('Service: Manuales', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ManualesService]
    });
  });

  it('should ...', inject([ManualesService], (service: ManualesService) => {
    expect(service).toBeTruthy();
  }));
});
