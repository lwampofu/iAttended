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
  
  //const auth = firebase.auth();
 /* const logout = document.getElementById('logout');
  if(logout){
  logout.addEventListener('click',(e)=>{
      //e.preventDefault();
      auth.signOut().then(()=>{
          window.location = 'index.html'
          console.log("Signed Out Successfully");
          //alert('logged out')
      })
  }) 
  }*/
  /*var el = document.getElementById('overlayBtn');
  if(el){
    el.addEventListener('click', swapper, false);
  }
*/
              //Realtime Authstate Listener

              /*firebase.auth().onAuthStateChanged(user => {
                if(user){
                    window.location = 'course_reg.html'
                }else{
                    window.location = 'index.html'
                }
        });*/