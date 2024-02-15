no = input("Enter binary no. : ");

flag = validbin(no);

if(flag == 1)
    as = bin_to_dec(no);
    fprintf("The decimal for your no. is %d\n",as);
else
    fprintf("Wrong input! Binary input should only include 0s and 1s!\n");
end