function getBotResponse(input) {
    
    //Responses 1
    if (input == "how are you"){
        
        return "I'm fine..thankyou";
    
    } else if(input == "hello"){
       
        return "Hello, how can i help you?";
        } 
    else if(input == "hi"){
       
        return "Hello, how can i help you?";
    
    } else if(input == "bye"){
       
        return "Bye..Do visit sooon!!"
    
    }

    //Responses 2
    if (input == "how can i order?") {
        
        return "well you need to select items you want and put them in your cart and give us your location and we will deliver it there";
    
    } else if (input == "how to use?") {
        
        return "well you can look around and click on any products and also search for any specific product";
    
    } else if (input == "are you AI?") {
        
        return "NO, I am just a simple hardcoded bot";
    
    }

    //Responses 3
    if (input == "can i pay by card?") {
        
        return "Yes you can..or you can also pay cash on delivery";
    
    } else if (input == "how to login?") {
        
        return "well if your are an admin you can just signin from the top right corner..else you can create a new account";
    
    } else if(input == "are there any offers?") {
        
        return "Yeah actually..you get a 20% discount on everything today!";
    
    }
    
    //Responses 4
    if (input == "how do i check product status?") {
        
        return "well you get a token number which you can track through gps";
    
    } else if (input == "where is your office?") {
        
        return "our head branch is in jhamsikhel";
    
    } else if(input == "can i pay online") {
        
        return "Yeah you can pay using esewa,khalti also directly from your bank";
    
    }
    
     //Responses 5
    if (input == "are the products authentic?") {
        
        return "Yes they are..we directly ship them from US";
    
    } else if (input == "can you deliver any faster?") {
       
        return "yes we can but it's gonna cost you extra 20 bucks";
    
    } else if(input == "how did you started?") {
        
        return "Well it's just started as a fling but now we are pretty serious about it";
    
    }
    
     //Responses 6
    if (input == "how to create account?") {
        
        return "you can go to the signin page and create an account there..you need to provide your gmail for security purpose though";
    
    } else if (input == "can i visit your warehouse?") {
        
        return "Yes you can come anytime between 10-5";
    
    } else if(input == "can i use coupon?") {
        
        return "Yes if you have any..you will get discount as per your coupon offer";
    
    }
    
     //Responses 7
    if (input == "can i pick it up myself?") {
        
        return "Yes you can..but during this pandemic we are actually delivering for free though";
    
    } else if (input == "can i also be an admin?") {
        
        return "Sorry but you can't..it's against company's rules";
    
    } else if(input == "well appreciate the help") {
        
        return "Not at all man...loved chatting with you..do visit soon!!";
    
    }
    else{
        return "try something else!!"
    }

   
}