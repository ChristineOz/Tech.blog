const { User } = require('../models');

const userData = [
    {
        username: "Franciso_Cortes",
        twitter: "CortesF",
        github: "FanCort",
        email: "Fthomascortes@gmail.com",
        password: "p@ssword1"
    },
    {
        username: "Chris_O",
        twitter: "ChistineeeOz",
        github: "ChristineOz",
        email: "ChristineOsmak@gmail.com",
        password: "p@ssword2"
    },
    {
        username: "shaun_c",
        twitter: "shaun",
        github: "shaun",
        email: "shaun_c@gmail.com",
        password: "p@ssword3"
    },
    {
        username: "lee_n",
        twitter: "leenorris",
        github: "leenorris",
        email: "lee_n@gmail.com",
        password: "p@ssword4"
    },
    {
        username: "JackieO",
        twitter: "Ozmag",
        github: "JackOz",
        email: "Ozmag@gmail.com",
        password: "p@ssword5"
    },
    {
        username: "JamieO",
        twitter: "JamOz",
        github: "Osmak",
        email: "Jo311@gmail.com",
        password: "p@ssword6"
    }
]

const seedUsers = () => User.bulkCreate(userData);

module.exports = seedUsers;