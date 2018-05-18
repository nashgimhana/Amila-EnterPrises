/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function _(el) {
    if(el!==undefined&&el!=""){
        if(el.split(" ").length>2||el.split(".").length>2||el.split("#").length>2){
            return document.querySelectorAll(el);// return node list
        }else{
            if (el.charAt(0) === "#") {
                return document.getElementById(el.slice(1));// return element
            } else if (el.charAt(0) === ".") {
                return document.getElementsByClassName(el.slice(1));// return node list
            } else{
                return document.getElementsByTagName(el);// return node list
            }
        }
    }
}

var xmlHttp = createXMLHttpRequestObject();

function createXMLHttpRequestObject() {
    if (window.XMLHttpRequest) {
        try {
            xmlHttp = new XMLHttpRequest();
        } catch (e) {
            xmlHttp = false;
            alert("Cannot create XMLObject");
        }
    } else if (window.ActiveXObject) {
        try {
            xmlHttp = new ActiveXObject();
        } catch (e) {
            xmlHttp = false;
            alert("Cannot create XMLObject");
        }
    } else {
        alert("Cannot Identify the Browser. Please use Chrome/firefox/opera.");
    }

    if (!xmlHttp) {
        alert("Error in XMLObject");
    } else
        return xmlHttp;
}

var userRegister={
    fname:"",mname:"",lname:"",sname:"",gender:"",nic:"",
    addressl1:"",addressl2:"",addressl3:"",contact1:"",contact2:"",email:"",fax:"",
    username:"",password:"",repassword:"",
    type:"",
    submit:function(){
        if(this.validate()){
            if(xmlHttp.readyState===0||xmlHttp.readyState===4){
            xmlHttp.open("POST","process/userRegister.php",true);
            xmlHttp.onreadystatechange=function(){
                if(xmlHttp.readyState===4){
                    if(xmlHttp.status===200){
                        var resText=xmlHttp.responseText;
                        try{
                            var resJo=JSON.parse(resText);
                            var msgOb=_("#msg");
                            if(msgOb!==undefined){
                                if(resJo.msgt==="s"){
                                    msgOb.className="alert alert-success";

                                }else if(resJo.msgt==="w"){
                                    msgOb.className="alert alert-warning";
                                }else if(resJo.msgt==="f"){
                                    msgOb.className="alert alert-danger";
                                }else if(resJo.msgt==="i"){
                                    msgOb.className="alert alert-info";
                                }else if(resJo.msgt==="e"){
                                    msgOb.className="alert alert-danger";
                                }
                                msgOb.innerHTML=resJo.msg;
                            }
                        }catch (ex){
                            window.location="error.php?ex="+ex+"&res="+resText;
                        }
                    }
                }
            };
            xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            var val=JSON.stringify({
                fname:fname,mname:mname,lname:lname,sname:sname,gender:gender,nic:nic,
                addressl1:addressl1,addressl2:addressl2,addressl3:addressl3,contact1:contact1,contact2:contact2,fax:fax,email:email,
                username:username,password:password,repassword:repassword,
                pudgala_akaraya:type
            });
            xmlHttp.send("register="+val);
            }
        }
    },
    validate:function(){
        if(_("#fname").value!=undefined && (fname=_("#fname").value)!=""){
        if(_("#lname").value!=undefined && (lname=_("#lname").value)!=""){
        if(_("#addressl1").value!=undefined && (addressl1=_("#addressl1").value)!=""){
        if(_("#addressl2").value!=undefined && (addressl2=_("#addressl2").value)!=""){
        if(_("#addressl3").value!=undefined && (addressl3=_("#addressl3").value)!=""){
        if((_("#contact1").value!=undefined && ((contact1=_("#contact1").value)!="")) || (_("#contact1").value!=undefined && (contact2=_("#contact2").value)!="")){
        if(_("#username").value!=undefined && (username=_("#username").value)!=""){
        if(_("#password").value!=undefined && (password=_("#password").value)!=""){
        if(_("#passwordre").value!=undefined && (repassword=_("#passwordre").value)!=""){
        if(password===repassword){
        if(_("#type").value!=undefined && (type=_("#type").value)!="0"){
            mname=_("#mname").value;
            sname=_("#sname").value;
            gender=_("#gender").value;
            nic=_("#nic").value;
            contact1=_("#contact1").value;
            contact2=_("#contact2").value;
            email=_("#email").value;
            fax=_("#fax").value;
            return true;
        }else{alert("පුද්ගල අාකාරය ෙතා්රන්න");return false;}
        }else{alert("මුරපාද සමාන නැත");return false;}
        }else{alert("තහවුරු මුරපාදය අැතුලත් කරන්න");return false;}
        }else{alert("මුරපාදය අැතුලත් කරන්න");return false;}
        }else{alert("පරිශීලක නාමය අැතුලත් කරන්න");return false;}
        }else{alert("දුරකථන අංකයක් අැතුලත් කරන්න");return false;}
        }else{alert("ලිපිනය සම්පූර්ණ කරන්න");return false;}
        }else{alert("ලිපිනය සම්පූර්ණ කරන්න");return false;}
        }else{alert("ලිපිනය අැතුලත් කරන්න");return false;}
        }else{alert("අවසන් නම අැතුලත් කරන්න");return false;}
        }else{alert("පළමු නම අැතුලත් කරන්න");return false;}
    }
};

var userUpdate={
    id:"",
    fname:"",mname:"",lname:"",sname:"",gender:"",nic:"",
    addressl1:"",addressl2:"",addressl3:"",contact1:"",contact2:"",email:"",fax:"",
    username:"",password:"",repassword:"",
    type:"",
    update:function(){
        if(this.validate()){
            if(xmlHttp.readyState===0||xmlHttp.readyState===4){
            xmlHttp.open("POST","process/userUpdate.php",true);
            xmlHttp.onreadystatechange=function(){
                if(xmlHttp.readyState===4){
                    if(xmlHttp.status===200){
                        var resText=xmlHttp.responseText;
                        try{
                            var resJo=JSON.parse(resText);
                            var msgOb=_("#userMsg");
                            if(msgOb!==undefined){
                                if(resJo.msgt==="s"){
                                    msgOb.className="alert alert-success";
                                }else if(resJo.msgt==="w"){
                                    msgOb.className="alert alert-warning";
                                }else if(resJo.msgt==="f"){
                                    msgOb.className="alert alert-danger";
                                }else if(resJo.msgt==="i"){
                                    msgOb.className="alert alert-info";
                                }else if(resJo.msgt==="e"){
                                    msgOb.className="alert alert-danger";
                                }
                                msgOb.innerHTML=resJo.msg;
                            }
                        }catch (ex){
                            window.location="error.php?ex="+ex+"&res="+resText;
                        }
                    }
                }
            };
            xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            var val=JSON.stringify({
                id:id,fname:fname,mname:mname,lname:lname,sname:sname,gender:gender,nic:nic,
                addressl1:addressl1,addressl2:addressl2,addressl3:addressl3,contact1:contact1,contact2:contact2,fax:fax,email:email,
                username:username,password:password,repassword:repassword,
                pudgala_akaraya:type
            });
            xmlHttp.send("update="+val);
            }
        }
    },
    validate:function(){
        if(_("#uid").value!=undefined && (id=_("#uid").value)!=""){
        if(_("#fname").value!=undefined && (fname=_("#fname").value)!=""){
        if(_("#lname").value!=undefined && (lname=_("#lname").value)!=""){
        if(_("#addressl1").value!=undefined && (addressl1=_("#addressl1").value)!=""){
        if(_("#addressl2").value!=undefined && (addressl2=_("#addressl2").value)!=""){
        if(_("#addressl3").value!=undefined && (addressl3=_("#addressl3").value)!=""){
        if((_("#contact1").value!=undefined && ((contact1=_("#contact1").value)!="")) || (_("#contact1").value!=undefined && (contact2=_("#contact2").value)!="")){
        if(_("#username").value!=undefined && (username=_("#username").value)!=""){
        if(_("#password").value!=undefined && (password=_("#password").value)!=""){
        if(_("#passwordre").value!=undefined && (repassword=_("#passwordre").value)!=""){
        if(password===repassword){
        if(_("#type").value!=undefined && (type=_("#type").value)!="0"){
            mname=_("#mname").value;
            sname=_("#sname").value;
            gender=_("#gender").value;
            nic=_("#nic").value;
            contact1=_("#contact1").value;
            contact2=_("#contact2").value;
            email=_("#email").value;
            fax=_("#fax").value;
            return true;
        }else{alert("පුද්ගල අාකාරය ෙතා්රන්න");return false;}
        }else{alert("මුරපාද සමාන නැත");return false;}
        }else{alert("තහවුරු මුරපාදය අැතුලත් කරන්න");return false;}
        }else{alert("මුරපාදය අැතුලත් කරන්න");return false;}
        }else{alert("පරිශීලක නාමය අැතුලත් කරන්න");return false;}
        }else{alert("දුරකථන අංකයක් අැතුලත් කරන්න");return false;}
        }else{alert("ලිපිනය සම්පූර්ණ කරන්න");return false;}
        }else{alert("ලිපිනය සම්පූර්ණ කරන්න");return false;}
        }else{alert("ලිපිනය අැතුලත් කරන්න");return false;}
        }else{alert("අවසන් නම අැතුලත් කරන්න");return false;}
        }else{alert("පළමු නම අැතුලත් කරන්න");return false;}
        }else{alert("පරිශිලකයා හදුනාගත නෙැහැක");return false;}
    }
};

var userLogin={
    username:"",password:"",
    login:function(){
        if(this.check()){
            if(xmlHttp.readyState===0||xmlHttp.readyState===4){
            xmlHttp.open("POST","process/login.php",true);
            xmlHttp.onreadystatechange=function(){
                if(xmlHttp.readyState===4){
                    if(xmlHttp.status===200){
                        var resText=xmlHttp.responseText;
                        try{
                            var resJo=JSON.parse(resText);
                            var msgOb=_("#loginmsg");
                            if(msgOb!==undefined){
                                if(resJo.msgt==="s"){
                                    msgOb.className="alert alert-success";
                                    userLogin.refresh();
                                }else if(resJo.msgt==="w"){
                                    msgOb.className="alert alert-warning";
                                }else if(resJo.msgt==="f"){
                                    msgOb.className="alert alert-danger";
                                }else if(resJo.msgt==="i"){
                                    msgOb.className="alert alert-info";
                                }else if(resJo.msgt==="e"){
                                    msgOb.className="alert alert-danger";
                                }
                                msgOb.innerHTML=resJo.msg;
                            }
                        }catch (ex){
                            window.location="error.php?ex="+ex+"&res="+resText+"&p=login";
                        }
                    }
                }
            };
            xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            var val=JSON.stringify({username:username,password:password});
            xmlHttp.send("login="+val);
            }
        }
    },
    check:function(){
        if(_("#uname").value!=undefined&&(username=_("#uname").value)!=""){
        if(_("#pword").value!=undefined&&(password=_("#pword").value)!=""){
            return true;
        }else{alert("මුරපාදය අැතුලු කරන්න");return false;}
        }else{alert("පරිශිලක නාමය අැතුලු කරන්න");return false;}
    },
    refresh:function(){
        setTimeout(function(){
            window.location.reload();
            },1500);
    }
};

var userLogout={
    logout:function(){
        if(xmlHttp.readyState===0||xmlHttp.readyState===4){
            xmlHttp.open("GET","process/logout.php?logout",true);
            xmlHttp.onreadystatechange=function (){
                if(xmlHttp.readyState===4){
                    if(xmlHttp.status===200){
                        window.location.reload();
                    }
                }
            };
            xmlHttp.send();
        }
    }
};

var addToSell={
    id:"",bhandaya:"",pramanaya:"",dinaya:"",file:null,form:null,
    check:function(){
       if((id=_("#uid").value)!=""){
       if((bhandaya=_("#bhanda").value)!="0"){
       if((pramanaya=_("#pramanaya").value)!=""){
           dinaya=new Date().getTime();
           this.form=_("#addToSellForm");
           return true;
       }else{alert("ප්‍රමාණය අැතුලත් කරන්න");return false;}
       }else{alert("භාණ්ඩය තෝරන්න");return false;}
       }else{alert("පරිශිලකයා හදුනාගත නොහැක");return false;}
    },
    add:function(){
        if(this.check()){
            if(xmlHttp.readyState===0||xmlHttp.readyState===4){
            xmlHttp.open("POST","process/addToSell.php",true);
            xmlHttp.onreadystatechange=function(){
                if(xmlHttp.readyState===4){
                    if(xmlHttp.status===200){
                        var resText=xmlHttp.responseText;
                        try{
                            var resJo=JSON.parse(resText);
                            var msgOb=_("#addToSellMsg");
                            if(msgOb!==undefined){
                                if(resJo.msgt==="s"){
                                    msgOb.className="alert alert-success";
                                }else if(resJo.msgt==="w"){
                                    msgOb.className="alert alert-warning";
                                }else if(resJo.msgt==="f"){
                                    msgOb.className="alert alert-danger";
                                }else if(resJo.msgt==="i"){
                                    msgOb.className="alert alert-info";
                                }else if(resJo.msgt==="e"){
                                    msgOb.className="alert alert-danger";
                                }
                                msgOb.innerHTML=resJo.msg;
                            }
                        }catch (ex){
                            window.location="error.php?ex="+ex+"&res="+resText+"&p=login";
                        }
                    }
                }
            };
            //xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            var val=JSON.stringify({id:id,bhandaya:bhandaya,pramanaya:pramanaya,dinaya:dinaya});
            //xmlHttp.send("addToSell="+val);
            xmlHttp.send(this.form);
            }
        }
    }
};

var watchList={
    dinaya:"",
    addToList:function(id){
        if(id!=undefined&&id!=""){
            dinaya=new Date().getTime();
            if(xmlHttp.readyState===0||xmlHttp.readyState===4){
            xmlHttp.open("POST","process/addToWatchList.php",true);
            xmlHttp.onreadystatechange=function(){
                if(xmlHttp.readyState===4){
                    if(xmlHttp.status===200){
                        var resText=xmlHttp.responseText;
                        try{
                            var resJo=JSON.parse(resText);
                            if(resJo.msgt=="s"){
                                _("#wl"+id).innerHTML=1+parseInt(_("#wl"+id).innerHTML);
                                alert(resJo.msg);
                            }
                        }catch (ex){
                            window.location="error.php?ex="+ex+"&res="+resText+"&p=login";
                        }
                    }
                }
            };
            xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            var val=JSON.stringify({id:id,dinaya:dinaya});
            xmlHttp.send("addToWatchList="+val);
            }
        }else{
            alert("ගණුදෙනුවේ අංකය සොයාගත නොහැක");
        }
    },
    removeFromList:function(id){
        if(id!=undefined&&id!=""){
            if(xmlHttp.readyState===0||xmlHttp.readyState===4){
            xmlHttp.open("POST","process/removeFromWatchList.php",true);
            xmlHttp.onreadystatechange=function(){
                if(xmlHttp.readyState===4){
                    if(xmlHttp.status===200){
                      var resText=xmlHttp.responseText;
                      var resJo=JSON.parse(resText);
                      if(resJo.msgt=="s"){
                          alert(resJo.msg);
                          window.location,reload();
                      }else{
                          alert(resJo.msg);
                      }
                    }
                }
            };
            xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xmlHttp.send("remove="+id);
        }
        }
    }
};

var loadItem={
    items:[],
    load:function(id){
        if(id!=undefined&&id!=""){
            if(this.items.length==0){
                this.items.push(id);
            }else{
                var st=true;
                for (var i = 0; i < this.items.length; i++) {
                    if(this.items[i]==id){
                        this.items.splice(i,1);
                        st=false;
                        break;
                    }
                }
                if(st)
                    this.items.push(id);
            }
            this.send();
        }else{
            alert("භාණ්ඩ අංකය සොයාගත නොහැක");
        }
    },
    send:function(){
        if(xmlHttp.readyState===0||xmlHttp.readyState===4){
            xmlHttp.open("POST","process/loadItems.php",true);
            xmlHttp.onreadystatechange=function(){
                if(xmlHttp.readyState===4){
                    if(xmlHttp.status===200){
                      var resText=xmlHttp.responseText;
                      _("#itemBody").innerHTML=resText;
                    }
                }
            };
        xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlHttp.send("load="+this.items);
        }
    }
};

var veladapola={
    id:"",obj:null,
    remove:function(id,obj){
        if(id!=undefined&&id!=""){
            this.id=id;
            this.obj=obj;
            this.send("r");
        }  
    },
    deactive:function(id,obj){
        if(id!=undefined&&id!=""){
            this.id=id;
            this.obj=obj;
            this.send("d");
        }
    },
    active:function(id,obj){
        if(id!=undefined&&id!=""){
            this.id=id;
            this.obj=obj;
            this.send("a");
        }
    },
    send:function(to){
        if(xmlHttp.readyState===0||xmlHttp.readyState===4){
            xmlHttp.open("POST","process/veladapola.php",false);
            xmlHttp.onreadystatechange=function(){
                if(xmlHttp.readyState===4){
                    if(xmlHttp.status===200){
                        var resText=xmlHttp.responseText;
                        try{
                            var resJo=JSON.parse(resText);
                            if(resJo.msgt=="s"){
                                alert(resJo.msg);
                                window.location.reload();
                            }else{
                                alert(resJo.msg);
                            }
                        }catch (ex){
                            window.location="error.php?ex="+ex+"&res="+resText+"&p=login";
                        }
                    }
                }
            };
            xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            if(to=="a")
                xmlHttp.send("active="+this.id);
            else if(to=="d")
                xmlHttp.send("deactive="+this.id);
            else if(to=="r")
                xmlHttp.send("remove="+this.id);
        }
    }
};

function getTimeLong(){
    return new Date().getTime();
}