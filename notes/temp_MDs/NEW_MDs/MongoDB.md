# My MongoDB Cheatsheet

btw, here's the [best MongoDB cheatsheet ever](https://www.codewithharry.com/blogpost/mongodb-cheatsheet/)

---
## Commands for databases

Show all databses 
```show dbs``` 

What is the current database I am working in ?
```db```

Switch to a database / or create it if it doesn't exist
```use alpha```

Delete current database
```db.dropDatabase()```

---
## Commands for collections

List all the collections in the current db
```show collections```

Create a collection
```db.createCollection('alpha')```

Delete a collection named alpha
```db.alpha.drop()```

---
## Commands for rows

Show all rows in 'alpha' collections
```db.alpha.find()```

Show all rows in 'alpha' collections in a prettier way
```db.alpha.find().pretty()```

Insert a row in collection 'alpha' 
```javascript
db.alpha.insert({
    'name':'Abhijit',
    'lang':'MongoDB'
})
```

Insert many rows in collection 'alpha'
```
db.alpha.insert([
    {
        'name':'Harry',
        'lang':'Javascript',
        'member_since':2
    },
    {
        'name':'Rohan',
        'lang':'Python',
        'member_since':5
    },
])
```

Delete rows matching search-query
```db.alpha.remove({'name':'Rohan'})```

Search in a MongoDB database
```db.alpha.find({'lang':'Python'})```

Limit the number of search-results
```db.alpha.find().limit(2)```

Count number of rows in search-results
```db.alpha.find().count()```

Sort the search-results
```db.alpha.find().sort({"member_since":2})```
#### check needed here

Find the first match only
```db.alpha.findOne()```

Update a row with search-query as \$1, changes as \$2, and options as \$3 (like upsert true or something)
```db.alpha.update({})```
#### check needed here

---
## Update operators

Increment update operator
```
db.alpha.update({'name':'Rohan'},{
    $inc:{
        member_since: 2
    }
})
```

Rename Update operator
```
db.alpha.update({'name':'Rohan'},{
    $rename:{
        member_since: 'member'
    }
})
```

List rows with member_since < 90
```
db.alpha.find({member_since: {$lt: 90}})
```

So it's lt,lte,gt,gte for less-than,less-than-equal-to,greater-than,greater-than-equal-to

