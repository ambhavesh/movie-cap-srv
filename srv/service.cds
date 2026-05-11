namespace srv.service;

using { db.schema as db } from '../db/schema';

service ZMOVIE_SRV @(path: '/srv') {
    entity MovieSet     as projection on db.Movie;
    entity DirectorSet as projection on db.Director;    
}

