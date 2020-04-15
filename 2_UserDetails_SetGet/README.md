cmd>truffle development <br>
.<br>
.<br>
.<br>
truffle(develop)> var hd<br>
truffle(develop)> UserDetails.deployed().then(function(d){hd=d;});<br>
truffle(develop)> hd.getUserCout()<br>
truffle(develop)> hd.addUserData("Abdullah","Pariyani", "Ahmedabad");<br>
truffle(develop)> hd.getUserDetails(1);<br>
