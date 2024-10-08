ttt=data.frame("1"=c(NA,NA,NA),"2"=c(NA,NA,NA),"3"=c(NA,NA,NA))

compwin=function(ttt){
  Diag1= c(ttt[1,1],ttt[2,2],ttt[3,3])
  Diag2= c(ttt[1,3],ttt[2,2],ttt[3,1])
  ret= TRUE
  if(sum(grepl("o",ttt[1,]))==3){
  } else if(sum(grepl("o",ttt[2,]))==3){
  } else if(sum(grepl("o",ttt[3,]))==3){
  } else if(sum(grepl("o",ttt[,1]))==3){
  } else if(sum(grepl("o",ttt[,2]))==3){
  } else if(sum(grepl("o",ttt[,3]))==3){
  } else if(sum(grepl("o",Diag1))==3){
  } else if(sum(grepl("o",Diag2))==3){
  } else{
    ret= FALSE
  }
  return(ret)
}

userwin=function(ttt){
  diag1=c(ttt[1,1],ttt[2,2],ttt[3,3])
  diag2=c(ttt[1,3],ttt[2,2],ttt[3,1])
  ret=TRUE
  if(sum(grepl("x",ttt[1,]))==3){
  }else if(sum(grepl("x",ttt[2,]))==3){
  }else if(sum(grepl("x",ttt[3,]))==3){
  }else if(sum(grepl("x",ttt[,1]))==3){
  }else if(sum(grepl("x",ttt[,2]))==3){
  }else if(sum(grepl("x",ttt[,3]))==3){
  }else if(sum(grepl("x",diag1))==3){
  }else if(sum(grepl("x",diag2))==3){
  }else{
    ret=FALSE
  }
  return(ret)
}

draw=function(ttt){
  ret=TRUE
  if(sum(is.na(ttt))==0){
    print(paste0("The Game is Draw !"))
  }else{
    ret=FALSE
  }
}

first_move=function(ttt){
  if(sum(is.na(ttt))>0){
    ret=FALSE
    print(paste0("Game is not Over !"))
  }else{
    ret=TRUE
    print(paste0("Game Over !"))
  }
  while (sum(is.na(ttt))<=10) {
    M=readline("Enter the row number and column number:")
    if(grepl("^[1-3]{1},[1-3]{1}$",M)){
      M=as.integer(unlist(strsplit(M,",")))
      break
    }else if(grepl("^[1-3]{1}[,]{1}[1-3]{1}$",M)==FALSE){
      print(paste0("Invalid position, Re-enter it !"))
    }else{
      print(paste0("The position is already taken, Re-enter it !"))
    }
  }
    ttt[M[1],M[2]]="x"
    return(ttt) 
}


chance_win_c=function(ttt){
  diag1=c(ttt[1,3],ttt[2,2],ttt[3,1])
  diag2=c(ttt[1,1],ttt[2,2],ttt[3,3])
  if(sum(is.na(ttt[1,]))>0 & sum(grepl("o",ttt[1,]))>1){return(TRUE)
  }else if(sum(is.na(ttt[2,]))>0 & sum(grepl("o",ttt[2,]))>1){return(TRUE)
  }else if(sum(is.na(ttt[3,]))>0 & sum(grepl("o",ttt[3,]))>1){return(TRUE)
  }else if(sum(is.na(ttt[,1]))>0 & sum(grepl("o",ttt[,1]))>1){return(TRUE)
  }else if(sum(is.na(ttt[,2]))>0 & sum(grepl("o",ttt[,2]))>1){return(TRUE)
  }else if(sum(is.na(ttt[,3]))>0 & sum(grepl("o",ttt[,3]))>1){return(TRUE)
  }else if(sum(is.na(diag1))>0 & sum(grepl("o",diag1))>1){return(TRUE)
  }else if(sum(is.na(diag2))>0 & sum(grepl("o",diag2))>1){return(TRUE)
  }else{
    ret=FALSE
  }
}



winning=function(ttt){
  if(sum(is.na(ttt[1,]))>0 & sum(grepl("o",ttt[1,]))>1){
    ttt[1,][is.na(ttt[1,])]="o"
  }else if(sum(is.na(ttt[2,]))>0 & sum(grepl("o",ttt[2,]))>1){
    ttt[2,][is.na(ttt[2,])]="o" 
  }else if(sum(is.na(ttt[3,]))>0 & sum(grepl("o",ttt[3,]))>1){
    ttt[3,][is.na(ttt[3,])]="o" 
  }else if(sum(is.na(ttt[,1]))>0 & sum(grepl("o",ttt[,1]))>1){
    ttt[,1][is.na(ttt[,1])]="o"
  }else if(sum(is.na(ttt[,2]))>0 & sum(grepl("o",ttt[,2]))>1){
    ttt[,2][is.na(ttt[,2])]="o"
  }else if(sum(is.na(ttt[,3]))>0 & sum(grepl("o",ttt[,3]))>1){
    ttt[,3][is.na(ttt[,3])]="o"
  }else if(sum(is.na(ttt[1,1]))>0 & sum(grepl("o",c(ttt[1,1],ttt[2,2],ttt[3,3])))>1){
    ttt[1,1][is.na(ttt[1,1])]="o" 
  } else if(sum(is.na(ttt[2,2]))>0 & sum(grepl("o",c(ttt[1,1],ttt[2,2],ttt[3,3])))>1){
    ttt[2,2][is.na(ttt[2,2])]="o" 
  } else if(sum(is.na(ttt[3,3]))>0 & sum(grepl("o",c(ttt[1,1],ttt[2,2],ttt[3,3])))>1){
    ttt[3,3][is.na(ttt[3,3])]="o" 
  } else if(sum(is.na(ttt[3,1]))>0 & sum(grepl("o",c(ttt[1,3],ttt[2,2],ttt[3,1])))>1){
    ttt[3,1][is.na(ttt[3,1])]="o" 
  } else if(sum(is.na(ttt[2,2]))>0 & sum(grepl("o",c(ttt[1,3],ttt[2,2],ttt[3,1])))>1){
    ttt[2,2][is.na(ttt[2,2])]="o" 
  } else if(sum(is.na(ttt[1,3]))>0 & sum(grepl("o",c(ttt[1,3],ttt[2,2],ttt[3,1])))>1){
    ttt[1,3][is.na(ttt[1,3])]="o" 
  }
  return(ttt)
}

chance_win_u=function(ttt){
  if(sum(grepl("x",ttt[1,]))>1 & sum(is.na(ttt[1,]))>0){return(TRUE)
  }else if(sum(grepl("x",ttt[2,]))>1 & sum(is.na(ttt[2,]))>0){return(TRUE)
  }else if(sum(grepl("x",ttt[3,]))>1 & sum(is.na(ttt[3,]))>0){return(TRUE)
  }else if(sum(grepl("x",ttt[,1]))>1 & sum(is.na(ttt[,1]))>0){return(TRUE)
  }else if(sum(grepl("x",ttt[,2]))>1 & sum(is.na(ttt[,2]))>0){return(TRUE)
  }else if(sum(grepl("x",ttt[,3]))>1 & sum(is.na(ttt[,3]))>0){return(TRUE)
  }else if(sum(is.na(c(ttt[1,3],ttt[2,2],ttt[3,1])))>0 & sum(grepl("x",c(ttt[1,3],ttt[2,2],ttt[3,1])))>1){return(TRUE)
  }else if(sum(is.na(c(ttt[1,1],ttt[2,2],ttt[3,3])))>0 & sum(grepl("x",c(ttt[1,1],ttt[2,2],ttt[3,3])))>1){return(TRUE)
  }else{
    ret=FALSE
  }
}

block=function(ttt){
  if(sum(is.na(ttt[1,]))>0 & sum(grepl("x",ttt[1,]))>1){
    ttt[1,][is.na(ttt[1,])]="o"
  }else if(sum(is.na(ttt[2,]))>0 & sum(grepl("x",ttt[2,]))>1){
    ttt[2,][is.na(ttt[2,])]="o" 
  }else if(sum(is.na(ttt[3,]))>0 & sum(grepl("x",ttt[3,]))>1){
    ttt[3,][is.na(ttt[3,])]="o" 
  }else if(sum(is.na(ttt[,1]))>0 & sum(grepl("x",ttt[,1]))>1){
    ttt[,1][is.na(ttt[,1])]="o"
  }else if(sum(is.na(ttt[,2]))>0 & sum(grepl("x",ttt[,2]))>1){
    ttt[,2][is.na(ttt[,2])]="o"
  }else if(sum(is.na(ttt[,3]))>0 & sum(grepl("x",ttt[,3]))>1){
    ttt[,3][is.na(ttt[,3])]="o"
  }else if(sum(is.na(ttt[1,1]))>0 & sum(grepl("x",c(ttt[1,1],ttt[2,2],ttt[3,3])))>1){
    ttt[1,1][is.na(ttt[1,1])]="o" 
  } else if(sum(is.na(ttt[2,2]))>0 & sum(grepl("x",c(ttt[1,1],ttt[2,2],ttt[3,3])))>1){
    ttt[2,2][is.na(ttt[2,2])]="o" 
  } else if(sum(is.na(ttt[3,3]))>0 & sum(grepl("x",c(ttt[1,1],ttt[2,2],ttt[3,3])))>1){
    ttt[3,3][is.na(ttt[3,3])]="o" 
  } else if(sum(is.na(ttt[3,1]))>0 & sum(grepl("x",c(ttt[1,3],ttt[2,2],ttt[3,1])))>1){
    ttt[3,1][is.na(ttt[3,1])]="o" 
  } else if(sum(is.na(ttt[2,2]))>0 & sum(grepl("x",c(ttt[1,3],ttt[2,2],ttt[3,1])))>1){
    ttt[2,2][is.na(ttt[2,2])]="o" 
  } else if(sum(is.na(ttt[1,3]))>0 & sum(grepl("x",c(ttt[1,3],ttt[2,2],ttt[3,1])))>1){
    ttt[1,3][is.na(ttt[1,3])]="o" 
  }
  return(ttt)
}

stratergy= function(ttt) { 
  if(is.na(ttt[2,2])){
    ttt[2,2][is.na(ttt[2,2])]="o"
    return(ttt)
  } else if(grepl("x",ttt[1,1]) & grepl("x",ttt[3,3])){
    ttt[1,2][is.na(ttt[1,2])]="o"
    return(ttt)
  } else if(grepl("x",ttt[1,3]) & grepl("x",ttt[3,1])){
    ttt[3,2][is.na(ttt[3,2])]="o"
    return(ttt)
  } else if(is.na(ttt[1,1])){
    ttt[1,1][is.na(ttt[1,1])]="o"
    return(ttt)
  } else if(is.na(ttt[1,3])){
    ttt[1,3][is.na(ttt[1,3])]="o"
    return(ttt)
  } else if(is.na(ttt[3,1])){
    ttt[3,1][is.na(ttt[3,1])]="o"
    return(ttt)
  } else if(is.na(ttt[3,2])){
    ttt[3,2][is.na(ttt[3,2])]="o"
    return(ttt)
  } else if(is.na(ttt[2,1])){
    ttt[2,1][is.na(ttt[2,1])]="o"
    return(ttt)
  } else if(is.na(ttt[2,3])){
    ttt[2,3][is.na(ttt[2,3])]="o"
    return(ttt)
  } 
  
  
}

play_Tic_Tac_Toe=function(){
  ttt=data.frame("1"=c(NA,NA,NA),"2"=c(NA,NA,NA),"3"=c(NA,NA,NA))
  print("Your symbol is x and mine is o !")
  while(TRUE){
    if(compwin(ttt)==TRUE){
      print(paste0("SORRY YOU LOST !"))
      break
    }else if(userwin(ttt)){
      print(paste0("CONGRATULATIONS YOU WIN !"))
      break
    }else if(draw(ttt)){
      print(paste0("IT IS A DRAW !"))
      break
    }else{
     ttt=first_move(ttt) 
     if(chance_win_c(ttt)==TRUE){
       ttt=winning(ttt)
     }else if(chance_win_u(ttt)==TRUE){
       ttt=block(ttt)
       print(ttt)
     }else{
       ttt=stratergy(ttt)
       print(ttt)
     }
    }
  }
}
play_Tic_Tac_Toe
