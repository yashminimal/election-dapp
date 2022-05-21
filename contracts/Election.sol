pragma solidity ^0.5.16;

contract Election {
  //Model a candidate
  struct Candidate {
    uint uid;
    string name;
    uint voteCount;
  }

  //Store candidate
  mapping(uint => Candidate) public candidates; //uint will be key (id) and value (candidate) will be the candidate struct type
  //Fetch candidate
  //Store candidate vote count
  uint public candidatesCount;

  string public candidate;
  //Constructor
  constructor () public {
    addCandidate("Rasputin");
    addCandidate("Hitler");
  }
  function addCandidate(string memory _name) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0); //creates a new candidate using candidateCount as the id
  }
}