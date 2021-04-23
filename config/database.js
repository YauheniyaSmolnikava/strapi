module.exports = ({ env }) => ({
   "defaultConnection": "default",
  "connections": {
    "default": {
      "connector": "mongoose",
      "settings": {
        "client": "mongo",
        "host": "test-strapi-cosmos.mongo.cosmos.azure.com",
        "port": 10255,
        "database": "test-strapi-cosmos",
        "username": "test-strapi-cosmos",
        "password": "7I9JQuF66UL1K10w1vK19tIgL8Vr1mrs9qBn56jHq712bjM9Btf7xARLQqS1XQq8Up4dPvowqeSs1XdawYf7mg=="
      },
      "options": {
		  "authenticationDatabase": "test-strapi-cosmos",
        "ssl": true
	  }
    }
  }
});
