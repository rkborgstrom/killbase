exports.up = function(knex, Promise) {
    return knex.schema.createTable('assassins_codename', (table) => { //this function allows us to assign the properites below.

  table.integer('id').references('id').inTable('assassins').onDelete('cascade');
  table.string('code_names');

    })
  
  };
  
  // .catch(function (error) {
  // console.error('Table creation error:', error)
  
  exports.down = function(knex, Promise) {
      return knex.schema.dropTable('assassins_codename'); //does the opposite of above.
  };