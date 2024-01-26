use dep::std;

fn main(
    commitment : [Field; 62],
    index : Field,
    hashpath : [Field; 40],
    root : Field) {
    let leaf = std::hash::pedersen_hash(commitment);
    let merkle_root = std::merkle::compute_merkle_root(leaf, index, hashpath);
    assert(merkle_root == root);
}
