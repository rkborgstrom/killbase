exports.seed=function (knex, Promise) {
    // Deletes ALL existing entries
    return knex('targets').del() //updates data from multiple api's
    //, knex('contracts').del() --put at end of .del()above
    .then(function() {
        return knex('targets').insert([
            {name: 'Butch Coolidge', location: 'Los Angeles', photo: 'https://goo.gl/LCquZj', security_level: 3},
            {name: 'The Jaguar', location: 'Russian Embassy', photo: 'https://goo.gl/6JWsiv', security_level: 9},
            {name: 'Norman Stansfield', location: 'Manhattan', photo: 'https://i.imgur.com/mdIk33E.jpg', security_level: 7},
            {name: "Santino D'Antonio", location: 'Continental Hotel', photo: 'https://goo.gl/fUPkYy', security_level: 10},
            {name: 'Sonny Valerio', location: 'Queens', photo: 'https://goo.gl/8DHYUS', security_level: 4},
        ]);
    });
};