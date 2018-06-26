
exports.up = function(knex, Promise) {
  return knex.schema.createTable('assassins', (table) => { //this function allows us to assign the properites below.
table.increments();  //defaults to id-serial.
table.string('Full_name');
table.string('code_names');
table.string('weapon');
table.integer('age');
table.integer('price');
table.float('rating');
table.integer('kills');
  })

};

// .catch(function (error) {
// console.error('Table creation error:', error)

exports.down = function(knex, Promise) {
    return knex.schema.dropTable('assassins'); //does the opposite of above.
};