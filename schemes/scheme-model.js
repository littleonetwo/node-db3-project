

const db = require('../data/config');

function find() {
  return db('schemes');

}

function findById(id) {
  return db('schemes').where({id}).first();

}

function findSteps(id){
  return db('schemes as a')
            .join("steps as b", "a.id", "b.scheme_id")
            .where("a.id", id)
            .select("b.id","a.scheme_name","b.step_number","b.instructions");
}

function add(scheme) {
  return db('schemes').insert(scheme)
          .then(ids => {
            return findById(ids[0]);
          })
}

function update(changes, id) {

  return findById(id)
          .update(changes);

}

function remove(id) {

  return findById(id).delete();

}

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove
}
