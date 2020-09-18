import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../utils/api.service';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/auth.service';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  email:String;
  password:String;
  constructor(
    private myRoute: Router,
    public auth: AuthService,
    private apiService: ApiService) { 
      console.log(auth.isLoggedIn())
  }

  ngOnInit(): void {
    if(this.auth.isLoggedIn()){
      this.myRoute.navigate(["/"]);
    }
  }

  doLogin(){
    this.apiService
    .postAuth(this.email, this.password)
    .subscribe(({data}: any) => {
      this.auth.sendToken(data);
      this.myRoute.navigate(["/"]);
    })
  }
}
