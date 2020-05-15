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
const db = firebase.firestore();

//View Student List
const studentList = document.querySelector('#stdlistform');

// create element & render Student List
function renderStud(doc){
    let li = document.createElement('li');
    let first = document.createElement('span');
    let last = document.createElement('span');

    li.setAttribute('data-id', doc.id);
    first.textContent = doc.data().first;
    last.textContent = doc.data().last;

    li.appendChild(first);
    li.appendChild(last);

    studentList.appendChild(li);
}

// getting data
db.collection('users').get().then(snapshot => {
    snapshot.docs.forEach(doc => {
    renderStud(doc);
    });
});