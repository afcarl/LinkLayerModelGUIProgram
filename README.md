The goal of this GUI program is to perform the LinkLayerModel simulation 
in a user-friendly way. With this program, we can initialize all the 
parameters by entering the desired values in the main user interface. 
Our GUI program consists of two interfaces. The main one is gui_main.fig, 
and the other one is gui_mouse.fig. The user can start the program by 
either clicking on the "Run" button in gui_main.m or simply typing 
gui_main() in the console of the directory.

In the main interface, the user needs to enter values of parameters for 
channel, radio and topology. We've initialized some default values, which 
are shown at the top right.
After finishing entering all the values, the user can click on the "GO!" 
button to run the program. Our program will print everything we've entered 
into the inputFile and then run the LinkLayerModel simulator.
Our LinkLayerModel simulator outputs four things: overall result of each 
link in gray scale, a text file with x-y coordinates for each node, a text 
file with PRRM value for each link, and a text file with RSSI value for 
each link.
%%% Detailed explanation for "overall result of each link in gray scale"
The overall result displays the value of each link over iterations in time. 
The vertical axis corresponds to each link, starting from the bottom. 
For example, if we have 25 nodes, we'll have 25^2 links. The point at the 
bottom will be link 1 which is node pair(1,1), and the one at top be link 
625 which is node pair(25,25). Similarly, the horizontal axis corresponds 
to the number of iteration, starting from the left.  
White stands for 1 and black stands for 0. Therefore, if the node has a 
value close to 1, it will look whiter, and vice versa.
For more information, see commands "mat2gray" and "imshow".
%%%%%%%%%%%%%%%%%%%%
One thing to pay attention to is that when we choose "GRID" as our 
topology type, "Number of Nodes" must be a perfect square.
When we choose "FILE" as our topology type, the gui_mouse interface will 
pop up.

In the gui_mouse interface, first the user needs to enter the value for 
terrain dimension. Our program will fetch this value and use it to 
parametrize the field of nodes.
Then the user can place the nodes anywhere by clicking on any point in 
gui_mouse.fig. A coordinate figure will pop up and record the points 
that've been clicked by the user. The number of nodes clicked will be 
displayed at the top of the screen.
%%%%%%%%%%%%%%%%%%%%
(Notice that some nodes aren't placed at the exact location where we put 
those points at, because the coordinate figure is smaller than the 
interface. Therefore, the nodes will be displayed at the corresponding 
location scaled on a smaller figure. The situation can be improved by some 
mathematical manipulation.)
%%%%%%%%%%%%%%%%%%%%
After finishing clicking those points, the user hits "Done" and the 
topologyFile gets updated. After that, the user goes back to the main 
interface, gui_main.fig, and enters the rest of the parameters. Make sure 
the number of nodes and the terrain dimension are consistent with the ones 
in gui_mouse.fig.
At last, the user clicks the "GO!" button, and the same thing will happen 
just as other topology cases: the program will output four things. The 
only difference is that the result this time is based on the topologyFile 
the user created in gui_mouse.
