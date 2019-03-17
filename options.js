
    if (userIdSearch === 2 || userIdSearch === 4 || userIdSearch === 6 || userIdSearch === 8 || userIdSearch === 7) {
        console.log("yay");
    } else {
        console.log("This item is not on sale.");

        inquirer.prompt([
            {
                type: "confirm",
                name: "choice",
                message: "Would you like to see our items for sale, Purchase current item or Return to Main Store Page",
                choices: ["Sale items", "Purchase This Item", "Return to Main Store"]
            }

        ]).then(function (inquireResponse) {
            if (inquireResponse.choice === "Sale Items") {

                inquirer.prompt([
                    {
                        type: "checkbox",
                        name: "saleitem",
                        message: "These Items Are On Sale Today!",
                        choices: [res[2].ID + " " + res[2].PRODUCT_NAME, res[4].ID + " " + res[4].PRODUCT_NAME, res[6].ID + " " + res[6].PRODUCT_NAME, res[8].ID + " " + res[8].PRODUCT_NAME, res[7].ID + " " + res[7].PRODUCT_NAME]
                    }

                ]).then(function (err) {
                    console.log(err);

                });
            } else if (inquirerResponse.choice === "Purchase This Item") {

            } else if (inquirerResponse.choice === "Return to Main Store") {
            };



        });

    }
