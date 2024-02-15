fprintf("For \n");
fprintf("Binary to Octal    -  enter 2\n");
fprintf("Octal to Binary    -  enter 8\n");
fprintf("Exit               -  enter anything else\n")
opt = input("Option : ");

if(opt == 2)
    no = input("Enter binary no. : ");
    flag = validbin(no);
    
    if(flag == 1)
        as = bin_to_dec(no);
        answ = dec_to_oct(as);
        fprintf("The octal for your binary no. is %d\n",answ);
    else
        fprintf("Wrong input! Binary input should only include 0s and 1s!\n");
    end
    
elseif(opt == 8)
    no = input("Enter octal no. : ");
    flag = validoct(no);
    
    if(flag == 1)
        as = oct_to_dec(no);
        answ = dec_to_bin(as);
        fprintf("The binary for your octal no. is %d\n",answ);
    else
        fprintf("Wrong input! Octal input should not include 8s or 9s!\n");
    end
    
else
    fprintf("Quit\n")
end