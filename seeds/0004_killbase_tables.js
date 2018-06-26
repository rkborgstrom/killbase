exports.seed=function (knex, Promise) {
    // Deletes ALL existing entries
    return knex('assassins_contracts').del() //updates data from multiple api's
    //, knex('contracts').del() --put at end of .del()above
    .then(function() {
        return knex('assassins_contracts').insert([
            {assassins_id: 6, contract_id: 1},
            {assassins_id: 1, contract_id: 2},
            {assassins_id: 5, contract_id: 2},
            {assassins_id: 7, contract_id: 3},
            {assassins_id: 9, contract_id: 5},
            {assassins_id: 6, contract_id: 4},
            {assassins_id: 8, contract_id: 3},
            {assassins_id: 3, contract_id: 1},
        ]);
    });
};