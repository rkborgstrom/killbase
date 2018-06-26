exports.up = function (knex, Promise) {
    return knex.schema.createTable('contracts', (table) => { //this function allows us to assign the properites below.
        table.increments(); //defaults to id-serial.
        table.integer('client_id').references('id').inTable('clients').onDelete('cascade');;
        table.integer('budget');
        table.integer('target_id').references('id').inTable('assassins');
        table.boolean('completed').references('id').inTable('assassins').onDelete('cascade').nullable();;
        table.integer('assassins_id');
    })

};

exports.down = function (knex, Promise) {
    return knex.schema.dropTable('contracts');
};
