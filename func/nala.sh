#!/bin/bash

nala() {
        #setup nala 
		sudo apt update && sudo apt install nala -y 
		sudo nala upgrade -y

		#install some packages
		sudo nala install vim htop curl neofetch plocate -y
}

nala-minimal() {
    sudo apt update && sudo apt install nala -y
}
