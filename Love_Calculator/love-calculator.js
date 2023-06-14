function loveCal(){
    let partnerOneName = prompt("Enter your name");
    let partnerTwoName = prompt("Enter your partner's name");
    let loveGenerator = Math.random() * 100;
    loveGenerator = Math.floor(loveGenerator)+1;

    if(loveGenerator >= 70){
        console.log(partnerOneName + " and " + partnerTwoName + " love score is " + loveGenerator + ". You're a match made in heaven")
    }
    else if(loveGenerator > 50 && loveGenerator < 70){
        console.log(partnerOneName + " and " + partnerTwoName + " love score is " + loveGenerator + ". You might see some struggle but what's love without troubles?")
    }
    else if(loveGenerator > 30 && loveGenerator <= 50){
        console.log(partnerOneName + " and " + partnerTwoName + " love score is " + loveGenerator + ". You're two go together like oil and water")
    }
    else(
        console.log(partnerOneName + " and " + partnerTwoName + " love score is " + loveGenerator + ". You're a matchmade in hell")
    )
    return loveGenerator
}
loveCal();