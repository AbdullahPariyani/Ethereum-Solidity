cmd>truffle development <br>
.
.
.
truffle(develop)> var hd
undefined
truffle(develop)> UserDetails.deployed().then(function(d){hd=d;});
undefined
truffle(develop)> hd.getUserCout()
truffle(develop)> hd.addUserData("Abdullah","Pariyani", "Ahmedabad");
truffle(develop)> hd.getUserDetails(1);
