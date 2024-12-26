contract MyContract {
    string name = "pranav";

    function setName(string memory _name) public {
        name = _name;
    }
    function getName() public view returns (string memory) {
        return name;
    }
}
