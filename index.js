const express = require ('express')
const app = express();


app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/home',(req,res)=>{
    res.status(200).json({
        message: 'Welcome to Mini Testing Application Which we are gone deploy \ using Kubernetes via creating an image and uploading it on dockerhub'
    })
})

app.listen(3306,()=>{
    console.log('listening on port 3306');
})