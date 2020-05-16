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
    //let email = document.createElement('span');
    //let sid = document.createElement('span');
    //let space = document.createElement('nbsp');


    li.setAttribute('data-id', doc.id);
    name.textContent = doc.data().Name;
    //space.textContent = "";
    cid.textContent = doc.data().id;
    //email.textContent = doc.data().email;
    //sid.textContent = doc.data().sid;

    li.appendChild(name);
    //li.appendChild(space);
    li.appendChild(cid);
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