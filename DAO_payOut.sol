function payOut(address _recipient, uint _amount) returns
(bool){
  if(msg.sender != owner || msg.value > 0
  || (payOwnerOnly && _recipient != owner))
  throw;
  if(_recipient.call.value(_amount)()){
    Payout(_recipient, _amount);
    return true;
  }else{
    return false;
  }
}
