# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias t='tree -AC -L 3 --dirsfirst --filelimit 10'
alias l='ls -ltrh'
alias rm='echo'
alias vi='vim'

alias master='ssh -i ~/.ssh/ansible ansible@master'
alias node1='ssh -i ~/.ssh/ansible ansible@node1'
alias node2='ssh -i ~/.ssh/ansible ansible@node2'
alias node3='ssh -i ~/.ssh/ansible ansible@node3'

# directory colors
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# High Intensity colors
IBlack='\e[0;90m' # Black
IRed='\e[0;91m' # Red
IGreen='\e[0;92m' # Green
IYellow='\e[0;93m\e[4m' # Yellow
IBlue='\e[0;94m' # Blue
IGreenbg='\e[30;48;5;82m' # Blue
IPurple='\e[0;95m' # Purple
ICyan='\e[0;96m' # Cyan
IWhite='\e[0;97m' # White
Color_Off='\e[0m' # Text Reset


# modify command prompt
PROMPT_COMMAND=prompt_func
 
 function prompt_func() {
    # Initialize the prompt
       PS1=""
        
    # Add a newline
       PS1="\n"
             
    # Status of last command
       PS1+=' `if [ $? = 0 ]; then echo "\[\033[01;32m\]*"; else echo "\[\033[01;31m\]*";fi` '
                  
    # Command history number
       PS1+="$ICyan\!$Color_Off "
                       
    # User and hostname
       PS1+="$IYellow\u$IBlue@$IGreenbg\h$Color_Off "
                            
    # Current time
       PS1+="`date +%H:%M:%S` "
                                 
    # Working directory
       PS1+="$IRed\w$Color_Off "
                                                                                                                                      
    # Add a newline
       PS1+=":\n"
                                                                                                   
    # Add a trailing dollar sign
       PS1+=" -> "
  }
