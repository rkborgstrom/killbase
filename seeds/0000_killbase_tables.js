exports.seed=function (knex, Promise) {
    // Deletes ALL existing entries
    return knex('assassins').del() //updates data from multiple api's
    //, knex('contracts').del() --put at end of .del()above
    .then(function () {
        // Inserts seed entries
        return knex('assassins').insert([ 
         {Full_name: 'Alexander Duggan', code_names: 'The Jackal', weapon: "Sniper rifle", age: 31, price: 45, rating: 7.5, kills: 28},
         {Full_name: 'Anton Chigurh', code_names: 'Old Man', weapon: "Pneumatic bolt gun", age: 52, price: 40, rating: 9, kills: 72},
         {Full_name: null, code_names: 'Ghost Dog', weapon: "Pistol", age: 28, price: 20, rating: 6.5, kills: 35},
         {Full_name: 'Jason Bourne', code_names: null, weapon: "Parkour", age: 27, price: 25, rating: 7, kills: 48},
         {Full_name: 'John Wick', code_names: 'Baba Yaga', weapon: 'Lots of guns', age: 35, price: 50, rating: 9.5, kills: 433},
         {Full_name: 'Jules Winnfield', code_names: null, weapon: "Pistol", age: 26, price: 15, rating: 6.5, kills: 13},
         {Full_name: 'Leon', code_names: 'The Professional', weapon: "Everything", age: 41, price: 30, rating: 8.5, kills: 87},
         {Full_name: 'Nikita Mears', code_names: 'Nikita, La Femme Nikita', weapon: "Silenced pistols", age: 28, price: 30, rating: 7, kills: 32},
         {Full_name: 'Pickle Rick', code_names: 'Solenya', weapon: "Lasers and office supplies", age: 60, price: 0, rating: 8, kills: 24},
         ]);
    });
};