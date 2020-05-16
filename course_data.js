                // Initialize Cloud Firestore through Firebase
                /*firebase.initializeApp({
                    apiKey: 'AIzaSyBKR2SGqAV6F_M2UhA-o4TRYy8kl7hp93Q',
                    authDomain: 'timiza-be601.firebaseapp.com',
                    projectId: 'timiza-be601'
                    });*/
                
               // var db = firebase.firestore();
                //adding QR Data
                function QRData(){
                    var qrData = document.getElementById('text').value ;
                    

                    db.collection("courses").doc("Software Engineering").set({
                        QRData: qrData
                        
                    })
                    .then(function(docRef) {
                        console.log("Document written with ID: ", docRef.id);
                    })
                    .catch(function(error) {
                        console.error("Error adding document: ", error);
                    });
                     }

                //new course

                function newCourse(){ 
                        var course_title = document.getElementById('course_title').value;
                        var course_id = document.getElementById('course_ID').value;
                        db.collection("courses").add({
                            Name: course_title,
                            id: course_id,
                            latitude: "4.3812785",
                            longitude:"100.96810"
                        })
                        .then(function(docRef) {
                            console.log("Document written with ID: ", docRef.id);
                            window.location ='admin_home.html'
                        })
                        .catch(function(error) {
                            console.error("Error adding document: ", error);
                        });
                         }