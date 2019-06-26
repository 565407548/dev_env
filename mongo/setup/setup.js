db=db.getSiblingDB("newDB"); //create db: newDB
db.createUser( // create user and set privilege;
	{
		user: "zhengcj",
		pwd: "123456",
		roles: [
			{ role: "dbOwner", db: "newDB" }
		]
	}
);
db.createCollection("newCollection"); // create a connection whose name is "newCollection"
