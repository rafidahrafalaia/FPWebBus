import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../utils/api.service';
import { Router, ActivatedRoute } from '@angular/router';
import { User } from 'src/app/entity/User';
import { AuthService } from '../../auth.service'

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {
  id: String;
  email: String;
  password: String;
  firstName: String;
  lastName: String;
  mobileNumber: String;
  createdDate: Date;
  updatedDate: Date;
  user: User;
  constructor(private route: ActivatedRoute,
    private myRoute: Router,
    public auth: AuthService,
    private apiService: ApiService) { }

  ngOnInit(): void {
    this.getUser();
  }

  getUser() {
    let jwt = this.auth.decodeJWT();
    console.log('jwt', jwt);
    this.apiService.getUserbyId(jwt.userId)
      .subscribe((user) => {
        console.log('user', user);
        this.user = user;
    });
  }

  updateUser(id){
    // console.log(this.auth.decodeJWT());
    let jwt=this.auth.decodeJWT(); 
    console.log("user",this.user.id,this.user.firstName, this.user.lastName,this.password);
      this.apiService.editUserbyId({id: this.user.id,firstName:this.user.firstName, lastName:this.user.lastName,email:this.user.email,password:this.user.password,mobileNumber:this.user.mobileNumber}).subscribe((user)=>{
        this.apiService.getUserbyId(jwt.userId).subscribe((user)=>{
          // console.log('user',user)
          alert("done edit")
          this.user=user
        })
    })
  }
  
  updateUserPass(id){
    // console.log(this.auth.decodeJWT());
    let jwt=this.auth.decodeJWT(); 
    console.log("user",this.user.id,this.user.firstName, this.user.lastName,this.password);
      this.apiService.editUserbyIdPass({id: this.user.id,firstName:this.user.firstName, lastName:this.user.lastName,email:this.user.email,password:this.user.password,mobileNumber:this.user.mobileNumber}).subscribe((user)=>{
        this.apiService.getUserbyId(jwt.userId).subscribe((user)=>{
          // console.log('user',user)
          alert("done edit")
          this.user=user
        })
    })
  }
}
