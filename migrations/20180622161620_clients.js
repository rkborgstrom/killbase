exports.up = function (knex, Promise) {
    return knex.schema.createTable('clients', (table) => { //this function allows us to assign the properites below.
        table.increments(); //defaults to id-serial.
        table.integer('client_name');

    })
};


exports.down = function (knex, Promise) {
return knex.schema.dropTable('clients');
};