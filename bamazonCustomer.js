var mysql = require('mysql');
var inquirer = require('inquirer');
var connection = mysql.createConnection({
  host: "localhost",
  // Your port; if not 3306
  port: 3306,
  // Your username
  user: "root",

  // Your password
  password: "yourRootPassword",
  database: "bamazon"
});

connection.connect();

connection.query('SELECT item_id, product_name, price, stock_quantity FROM products', function (error, res) {
  if (error) throw error;
  console.log(res);
  start()
});

function start() {
  inquirer
    .prompt({
      name: "product_id",
      type: "input",
      message: "What product id would like to buy?"
    }).then(function (answers) {
      inquirer.prompt({
        name: "units",
        type: "input",
        message: "How many units of " + answers.product_id + " would you like to buy?"
      }).then(function (answers) {
        if (answers.units != 0) {
          console.log("We have the item in stock!")
          //connection query 
          connection.query('SELECT item_id, product_name, price, stock_quantity FROM products', function (error, res) {
            if (error) throw error;
            console.log(res);
          });
        }
        else {
          console.log("Item is not in stock! Insufficient Quantity")
          //connection query 
        }
      });
    });
}
