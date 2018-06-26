exports.up = function (knex, Promise) {
    return knex.schema.createTable('assassins_contracts', (table) => { //this function allows us to assign the properites below.
        table.integer('assassins_id').references('id').inTable('assassins').onDelete('cascade');
        table.integer('contract_id').references('id').inTable('contracts').onDelete('cascade');

    })
};


exports.down = function (knex, Promise) {
return knex.schema.dropTable('assassins_contracts');
};