exports.seed=function (knex, Promise) {
    // Deletes ALL existing entries
    return knex('contracts').del() //updates data from multiple api's
    //, knex('contracts').del() --put at end of .del()above
    .then(function () {
        return knex('contracts').insert([ 
        {client_id: 1, budget: 40, target_id: 1, completed: false, assassins_id: null},
        {client_id: 2, budget: 70, target_id: 2, completed: false, assassins_id: null},
        {client_id: 3, budget: 35, target_id: 3, completed: false, assassins_id: null},
        {client_id: 4, budget: 25, target_id: 4, completed: false, assassins_id: null},
        {client_id: 5, budget: 10, target_id: 5, completed: false, assassins_id: null},
         ]);
    })
}
