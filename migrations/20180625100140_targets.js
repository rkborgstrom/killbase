exports.up = function(knex, Promise) {
    return knex.schema.createTable('targets', (table) => { //this function allows us to assign the properites below.
  table.increments();  //defaults to id-serial.
  table.string('name');
  table.string('location');
  table.string('photo');
  table.integer('security_level');
    })
  
  };
  
  // .catch(function (error) {
  // console.error('Table creation error:', error)
  
  exports.down = function(knex, Promise) {
      return knex.schema.dropTable('targets'); //does the opposite of above.
  };