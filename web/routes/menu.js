var express = require('express');
var formidable = require('formidable');
var db = require('../db')
var router = express.Router();

// menu/update
router.post('/update', function(req, res) {
  var mSeq = req.body.mSeq;
  var mName = req.body.mName;
  var mImgUrl = req.body.mImgUrl;
  var mPrice = req.body.mPrice;
  var mDetail = req.body.mDetail;
  var seller_seq = req.body.seller_seq;
  var action = req.body.action;
 
  console.log({mSeq, mName, mImgUrl, mPrice, mDetail, seller_seq, action});

  var sql_insert = "insert into menu (mName, mImgUrl, mPrice, mDetail, seller_seq) values(?,?,?,?,?);";
  var sql_update = "update menu "+
                 "set mName = ?, mImgUrl =?, mPrice = ?, mDetail = ? "+
                 "where mSeq = ? limit 1; ";
  var sql_delete = "delete from menu where mName = ?; ";
  
  
  switch(action){
  
  case 1: // �űԸ޴� ���
      console.log("sql_insert : " + sql_insert);
      db.get().query(sql_insert, [mName, mImgUrl, mPrice, mDetail, seller_seq], function (err, result) {
        if (err) return res.sendStatus(400);

        res.status(200).send('' + result.insertId);
      });
      break;
      
  case 2: // �޴� ����
     
     console.log("�����Ϸ��� mSeq��"+mSeq);
     
      console.log("sql_update : " + sql_update);

      db.get().query(sql_update, [mName, mImgUrl, mPrice, mDetail, mSeq], function (err, result) {
        if (err) return res.sendStatus(400);

        res.status(200).send('' + result.insertId);
      });
      break;
      
  case 3: // �޴� ����
      console.log("sql_delete : " + sql_delete);

      db.get().query(sql_delete, mName , function (err, result) {
        if (err) return res.sendStatus(400);

        res.status(200).send('' + result.insertId);
      });
      break;   
  }
});

//menu/list
router.get('/list', function(req, res, next) {
  var seller_seq = req.query.seller_seq;
  
  console.log(seller_seq);
  
  if(!seller_seq) { return res.sendStatus(400); } 
  
  var sql = "select mSeq, mName, mImgUrl, mPrice, mDetail " +
            "from menu " + 
            "where seller_seq = ?;";
  
  console.log("sql : " + sql);     
   
   db.get().query(sql, seller_seq, function (err, rows) {
      console.log("rows : " + JSON.stringify(rows));
      console.log("row.length : " + rows.length);
      if (rows.length > 0) {
        res.status(200).json(rows);
      } else {
        res.sendStatus(400);
      }
  });
});



module.exports = router;