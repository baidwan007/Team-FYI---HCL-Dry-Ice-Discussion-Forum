/**
 * Created by digvijay on 19/7/17.
 */
const mysql = require('mysql');

let dbconf = {
    // host: 'localhost',
    // user: 'root',
    // password: 'India@2012',
    // database: 'hcl',
    host: '43.255.154.27',
    user: 'arpitgoyal',
    port: 3306,
    password: 'arpit4087263',
    database: 'enactusdtu',
};

function addNewTask (title, descript,category,done) {
    let conn = mysql.createConnection(dbconf);
    conn.connect();
    conn.query(
        "INSERT INTO question SET ?",
        {title: title, descript: descript,category: category,uid: 1},
        function (err, result, fields) {
            if(err){
                throw err;
            }
            done(result);
            conn.end();
        }
    );
}

function fetchTasks(done) {
    let conn = mysql.createConnection(dbconf);
    conn.connect();
    conn.query(
        "SELECT * FROM question ORDER BY qid DESC",
        function (err, result, fields) {
            if (err) throw err;
            done(result);
        }
    );
}

function fetchCatTask(cat,done) {
    let conn = mysql.createConnection(dbconf);
    conn.connect();
    conn.query(
        "SELECT * FROM question WHERE category=? ORDER BY qid DESC",[cat],
        function (err, result, fields) {
            if (err) throw err;
            done(result);
        }
    );
}

function fetchq(qid,done) {
    let conn = mysql.createConnection(dbconf);
    conn.connect();
    conn.query(
        "SELECT * FROM question WHERE qid=?",[qid],
        function (err, result, fields) {
            if (err) throw err;
            done(result);
        }
    );
}
function fetchatoq(qid,done) {
    let conn = mysql.createConnection(dbconf);
    conn.connect();
    conn.query(
        "SELECT * FROM answer WHERE qid=?",[qid],
        function (err, result, fields) {
            if (err) throw err;
            done(result);
        }
    );
}
function addAns (ans, qid,done) {
    let conn = mysql.createConnection(dbconf);
    conn.connect();
    conn.query(
        "INSERT INTO answer SET ?",
        {ans: ans, qid: qid,upvote: 0,downvote: 0,uid: 1},
        function (err, result, fields) {
            if(err){
                throw err;
            }
            done(result);
            conn.end();
        }
    );
}

function addup (aid,done) {
    let conn = mysql.createConnection(dbconf);
    conn.connect();
    conn.query(
        "UPDATE answer SET upvote=upvote+1 WHERE aid=?",
        [aid],
        function (err, result, fields) {
            if(err){
                throw err;
            }
            done(result);
            conn.end();
        }
    );
}

function adddown (aid,done) {
    let conn = mysql.createConnection(dbconf);
    conn.connect();
    conn.query(
        "UPDATE answer SET downvote=downvote+1 WHERE aid=?",
        [aid],
        function (err, result, fields) {
            if(err){
                throw err;
            }
            done(result);
            conn.end();
        }
    );
}

// function setTaskState(taskId, isDone, done) {
//     let conn = mysql.createConnection(dbconf);
//     conn.connect();
//     conn.query(
//         "UPDATE todos SET ? WHERE ?",
//         [{done: isDone}, {id: taskId}],
//         function (err, result, fields) {
//             if (err) throw err;
//             done(result)
//         }
//     );
// }

module.exports = {
    fetchTasks, addNewTask,fetchq,fetchatoq,addAns,addup,adddown,fetchCatTask//, setTaskState
};