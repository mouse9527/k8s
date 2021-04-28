rs.initiate({
    _id: "rs0",
    members: [
        {_id: 0, host: "mongo-replication-0.mongo-replication.db:27017"},
        {_id: 1, host: "mongo-replication-1.mongo-replication.db:27017"},
        {_id: 2, host: "mongo-replication-2.mongo-replication.db:27017"}
    ]
})
