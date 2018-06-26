exports.seed=function (knex, Promise) {
    // Deletes ALL existing entries
    return knex('clients').del() //updates data from multiple api's
    //, knex('contracts').del() --put at end of .del()above
    .then(function() {
        return knex('clients').insert([
            {client_name: 'Marcellus Wallace'},
            {client_name: 'Concerto'},
            {client_name: 'Mathilda'},
            {client_name: 'Winston'},
            {client_name: 'Ray Vargo'},
        ]);
    });
};