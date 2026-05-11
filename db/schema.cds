namespace db.schema;

entity Movie {
    key id           : UUID;
        name         : String;
        releasedDate : Date;
        directedBy   : Association to Director;
}

entity Director {
    key id     : UUID;
        name   : String;
        movies : Association to many Movie
                     on movies.directedBy = $self;
}
