%Sofiya Markova  
%goal of code:  
%use the Caesar Box Cipher to encode and decode messages 

function OutMsg = CaesarBox(inMsg, Flg)

%flag 1 option to encode message
if (Flg == 1)

%take away blanks from inputted string     
noBlankStr = strrep(inMsg, ' ', '');

%length of string without blanks
L = strlength(noBlankStr);

%use ceil function to get dimensions of Caesar Box
N = ceil(sqrt(L));

%declaring final message string holder and setting all to blank characters
R = '';

%loop to fill the "box" blanks
for x = 1 : N
    
    for y = 1 : N
        
      %looping through columns. index moves through each letter to add
      index = (y-1)*N + x;  
        
      %fill a space if run out of letters in column
      if(index > L)
         
      R = [R ' '];
      
      else
          
      %fill into R the next letter according to index from string without blanks    
      R = [R noBlankStr(index)];  
      
      end
      
      
    end 
    
end

%display out final message
display(R);

end

%flag 2 option to decode message
if (Flg == 2)

%save string without blanks into the message will want in end (backwards syntax)    
noBlankStr = inMsg;

%length of string without blanks
L = strlength(noBlankStr);

%use ceil function to get dimensions of Caesar Box
N = ceil(sqrt(L));

%make all blanks strings without input
R = '';

%loop to fill the "box" blanks
for x = 1 : N
    
    for y = 1 : N
       
      %looping through columns
      index = (y-1)*N + x;  
       
      %fill a space if run out of letters in column
      if(index > L)
         
      R = [R ' '];
      
      else
      
      %fill into R the next letter according to index from string without blanks     
      R = [R noBlankStr(index)];  
      
      end
      
      
    end 
    
end

%take away spaces by finding all spaces in R and replacing them with no
%space
R = strrep(R, ' ', '');

%display out final message
display(R);

end
    
    


