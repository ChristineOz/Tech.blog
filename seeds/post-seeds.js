const { Post } = require('../models');

const postData = [
    {
        title: "Password Generator successfully deploys!",
        post_content: "Password Generator keeps your logins secure!",
        user_id: 3
    },
    {
        title: "German Pointers give birth to a 100 puppies!",
        post_content: "Pointer breaks record of most puppies born in one birth!",
        user_id: 1
    },
    {
        title: "Work Day Scheduler tool now available!",
        post_content: "A simple calendar application that allows a user to save events for each hour of the day. This app will run in the browser and feature dynamically updated HTML and CSS powered by jQuery. Use Moment.js library to work with date and time",
        user_id: 2

    },
    {
        title: "Tech Blog has been released!",
        post_content: "With hard work and dedication, the Tech Blog has been completed",
        user_id: 5
    },
    {
        title: "Bet Full Stack goes public!",
        post_content: "Want to bet on Soccer? This is the app for you!",
        user_id: 4
    }
]

const seedPosts = () => Post.bulkCreate(postData);

module.exports = seedPosts;
