import {HttpClient} from '@angular/common/http';
import { Injectable } from '@angular/core';
import { User } from '../constants/user';
import { Agency } from '../entity/Agency';
import { Bus } from '../entity/Bus';
import { Trip } from '../entity/Trip';
 
@Injectable({
  providedIn:'root'
})
export class ApiService{
  agency:Agency[];
  private BASE_URL='http://localhost:8080/api';
  constructor(private http: HttpClient){

  }

  postAuth(email,password){
    var formData: any= new FormData();
    formData.append("email", email);
    formData.append("password",password);
    return this.http.post('http://localhost:8080/api/login',formData);
} 

  getAgencybyId(id){
    console.log('zzzz')
    return this.http.get<Agency>(`${this.BASE_URL}/getAgencyApi?id=${id}`)
  }

  getUserbyId(id){
    return this.http.get<User>(`${this.BASE_URL}/getUserId?id=${id}`)
  }   
  editUserbyId(user){
    return this.http.post<User>(`${this.BASE_URL}/updateProfile`,user)
}

editUserbyIdPass(user){
  return this.http.post<User>(`${this.BASE_URL}/updateProfilePass`,user)
}

  editAgencybyId(id,agency){
    return this.http.post<Agency>(`${this.BASE_URL}/updateAgency-angular`,agency)
  }

  getBusbyId(id){
    return this.http.get<Bus>(`${this.BASE_URL}/getAllBus-angular?id=${id}`)
  }

  getAllBus(){
    return this.http.get<Bus>(`${this.BASE_URL}/getAllBus`)
  }
  getAllStop(id){
    return this.http.get(`${this.BASE_URL}/getAllStopAngular?id=${id}`)
  }


  postUpdateBus(body) {
    return this.http.post(`http://localhost:8080/api/updateBus-angular`, body);
  }

  postUpdateTrips(body) {
    return this.http.post(`http://localhost:8080/api/updateTripsAngular`, body);
  }
    
  getTripId(id){
    return this.http.get(`${this.BASE_URL}/getAllTrips-angular?id=${id}`)
  }
  register(registerRequest){
    return this.http.post(`${this.BASE_URL}/createNewAccount`,registerRequest)
  }
  addBus(bus){
    return this.http.post(`${this.BASE_URL}/addBusAngular`,bus)
  }

  addTrip(trip){
    return this.http.post(`${this.BASE_URL}/addTripAngular`,trip)
  }

  postDeleteTrips(id) {
    return this.http.post(`http://localhost:8080/api/deleteTrips-angular`, id);
  }
  
}
