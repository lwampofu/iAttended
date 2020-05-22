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
    //let space = document.createElement('span');
    let first = document.createElement('span');
    let last = document.createElement('span');
    let sid = document.createElement('span');
    let count = document.createElement('span');
    
    //let space = document.createElement('nbsp');
    let btn = document.createElement('BUTTON');
    btn.style.color = 'white';
    btn.style.backgroundColor = "green";
    btn.style.outlineColor = "blue";
    btn.style.shapeRendering;
    let space = document.createElement('span');
    //text to be displayed by button
    var text = document.createTextNode("View Student");

        //another button
        let btn1 = document.createElement('BUTTON');
        btn1.style.color = 'white';
        btn1.style.backgroundColor = "red";
        btn1.style.outlineColor = "red";
        btn1.style.shapeRendering;
        //let space = document.createElement('span');
        //text to be displayed by button
        var texty = document.createTextNode("Remove Student");


    li.setAttribute('data-id', doc.id);
    first.textContent = doc.data().first;
    //space.textContent = "";
    last.textContent = doc.data().last;
    count.textContent = doc.data().count;
    //space.textContent = doc.data().space;
    sid.textContent = doc.data().sid;
     //appending text to button
     btn.appendChild(text);
     btn1.appendChild(texty);

    li.appendChild(first);
    li.appendChild (document.createTextNode (" "));
    li.appendChild (document.createTextNode (" "));
    li.appendChild (document.createTextNode (" "));
    //li.appendChild(space);
    li.appendChild(last);
    li.appendChild (document.createTextNode (" "));
    //li.appendChild(space)
    li.appendChild(sid);
    li.appendChild (document.createTextNode (" "));
    //li.appendChild(space)
    li.appendChild (document.createTextNode (" "));
    li.appendChild(count);
    li.appendChild(btn);
    li.appendChild (document.createTextNode (" "));
    li.appendChild(btn1);
    studentList.appendChild(li);
}

// getting data
db.collection('students').get().then(snapshot => {
    snapshot.docs.forEach(doc => {
    renderStud(doc);
    });
});