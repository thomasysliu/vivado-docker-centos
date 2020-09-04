# vivado-docker-centos
vivado design docker file using CentOS

#### Usage (where $HOME/Xilinx is your vivado install folder)

docker run -ti --rm --network=host -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/developer/.Xauthority:ro -v $HOME/Xilinx:/Xilinx:ro -u root thomasysliu/vivado-docker-centos bash



#### Execute in container

source /Xilinx/Vivado/2020.1/settings64.sh



#### Start vivado

vivado
