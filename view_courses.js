  // Initialize Cloud Firestore through Firebase
  /*firebase.initializeApp({
    apiKey: "AIzaSyBKR2SGqAV6F_M2UhA-o4TRYy8kl7hp93Q",
    authDomain: "timiza-be601.firebaseapp.com",
    databaseURL: "https://timiza-be601.firebaseio.com",
    projectId: "timiza-be601",
    storageBucket: "timiza-be601.appspot.com",
    messagingSenderId: "210942488431",
    appId: "1:210942488431:web:36711d27854fab87d4029a",
    measurementId: "G-JYT4F7HPP0"

    });*/
const db = firebase.firestore();

//View Student List
const courseList = document.querySelector('#courseListform');

// create element & render Student List
function renderStud(doc){
    let li = document.createElement('li');
    let name = document.createElement('span');
    let cid = document.createElement('span');
    //let whitespace = document.createTextNode("\u00A0");
    //let email = document.createElement('span');
    //button element
    let btn = document.createElement('BUTTON');
    btn.style.color = 'white';
    btn.style.backgroundColor = "green";
    btn.style.outlineColor = "blue";
    btn.style.shapeRendering;
    let space = document.createElement('span');
    //text to be displayed by button
    var text = document.createTextNode("SELECT"); 
    var style = document.createElement('style');

    li.setAttribute('data-id', doc.id);
    name.textContent = doc.data().Name;
    space.textContent = doc.data().space;
    cid.textContent = doc.data().id;
    //appending text to button
    btn.appendChild(text);
    //email.textContent = doc.data().email;
    //sid.textContent = doc.data().sid;

    li.appendChild(name);
    li.appendChild (document.createTextNode (" "));
    //li.appendChild(space);
    li.appendChild(cid);
    li.appendChild (document.createTextNode (" "));
    btn.onclick = false;
    document.body.appendChild(btn);
    var delay = 10000
    if (btn.onclick = true) {

        setTimeout(function(){
            window.location.href = "admin_home.html"

        },delay)
        
    } 

    li.appendChild(btn);

    //li.appendChild(email);
    //li.appendChild(sid);

    courseList.appendChild(li);
}

// getting data
db.collection('courses').get().then(snapshot => {
    snapshot.docs.forEach(doc => {
    renderStud(doc);
    });
});