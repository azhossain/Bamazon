require("dotenv").config();

var continuedOptions = require("./options.js");
var mysql = require("mysql");

var inquirer = require("inquirer");



var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "",
    database: "bamazon_db"
});

connection.query("SELECT * FROM products ", function (err, res) {
    if (err) throw err;

    inquirer.prompt([
        {
            type: "confirm",
            name: "confirm",
            message: "This is Bamazon! Would you like to see what we have in store?",
            default: true
        }

    ]).then(function (inquirerResponse) {
        if (inquirerResponse.confirm) {

            res.forEach(function (number) {
                console.log("\n");
                console.log("Product ID: " + number.ID);
                console.log("Product: " + number.PRODUCT_NAME);
                console.log("Department: " + number.DEPARTMENT_NAME);
                console.log("SubDepart.: " + number.SUBDEPARTMENT_NAME);
                console.log("Price: " + number.PRICE);
                console.log("In Stock: " + number.STOCK_QUANTITY);
                console.log("\n");

                console.log("\nWelcome! Browse our Products Above...");
                console.log("You can type the product ID to check if it's on sale.");
            });


        } else {
            console.log("\nPlease come again!\n");
        };
    
    });

    connection.end(); 


});
