

  // Initialize Cloud Firestore through Firebase
  firebase.initializeApp({
    apiKey: "AIzaSyBKR2SGqAV6F_M2UhA-o4TRYy8kl7hp93Q",
    authDomain: "timiza-be601.firebaseapp.com",
    databaseURL: "https://timiza-be601.firebaseio.com",
    projectId: "timiza-be601",
    storageBucket: "timiza-be601.appspot.com",
    messagingSenderId: "210942488431",
    appId: "1:210942488431:web:36711d27854fab87d4029a",
    measurementId: "G-JYT4F7HPP0"

    });
 
    //function userAuth(){
        //Get Inputs
        const txtEmail = document.getElementById("admin_email");
        const txtPassword = document.getElementById("admin_password");
        const btnLogin = document.getElementById("btnlogin");
        //const btnLogout = document.getElementById()

        //add login event
        btnLogin.addEventListener('click', (e) =>{
            //Get email and pass
            //alert("here")
            const email = txtEmail.value;
            const pass = txtPassword.value;
            if(email!=""&&pass!=""){
                //console.log(email,pass)
                const auth = firebase.auth();

                //sign in
                const promise = auth.signInWithEmailAndPassword(email, pass);
                promise.catch((e) => console.log(e.message));
                promise.then((value)=>{
                    window.location = 'course_reg.html'
                })
                

            }

            else{
                
                e.preventDefault();
                window.location ='index.html'
                alert("Wrong Password or Email Address!")
            }

        })
            //Realtime Authstate Listener
        /*
            firebase.auth().onAuthStateChanged(user => {
                if(user){
                    //alert("login successful")
                    var email = user.email;
                    console.log(email);
                   // window.location = 'course_reg.html'
                }else{
                    //alert("wrong credentials")
                    window.location = 'index.html'
                }
        });
*/
             
             

