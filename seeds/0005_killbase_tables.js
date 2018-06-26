
exports.seed=function (knex, Promise) {
    // Deletes ALL existing entries
    return knex('assassins_codename').del() //updates data from multiple api's
    //, knex('contracts').del() --put at end of .del()above

.then(function() {
    return knex('assassins_codename').insert([
        {assassins: 1, conde_names: 'The Jackal'},
        {assassins: 2, conde_names: 'Old Man'},
        {assassins: 3, conde_names: 'Ghost Dog'},
        {assassins: 4, conde_names: 'Baba Yaga'},
        {assassins: 5, conde_names: 'The Professional'},
        {assassins: 6, conde_names: 'Nikita, La Femme Nikita'},
        {assassins: 7, conde_names: 'Solenya'},
        ]);

    });

};