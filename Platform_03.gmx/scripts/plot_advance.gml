//test for plot progress
if(plot_progress < 20){
plot_progress++;
}
switch(plot_progress){//['|.]*click*
case 0: current_message = Dialogues[4];cutscene_index = 0;instance_create(0,0,TextBox);instance_create(0,0,Cutscene_panel);
 break;//New game, Lucca's dream

case 1: current_message = Dialogues[5];cutscene_index = 1;instance_create(0,0,TextBox);instance_create(0,0,Cutscene_panel);
 break;//Avion wakes Lucca

case 2: current_message = Dialogues[6];cutscene_index = 2;instance_create(0,0,TextBox);instance_create(0,0,Cutscene_panel);
 break;//Intro to mission 1

case 3: current_message = Dialogues[7];instance_create(0,0,TextBox);  break;//intermission 1

case 4: cutscene_index = 3;current_message = Dialogues[8];instance_create(0,0,TextBox);
instance_create(0,0,Cutscene_panel); break;//Intro to mission 2

case 5: cutscene_index = 4;current_message = Dialogues[9];instance_create(0,0,TextBox);
instance_create(0,0,Cutscene_panel); break;//Avion's mid-mission dialogue

case 6: current_message = Dialogues[10];cutscene_index = 2;instance_create(0,0,TextBox);  break;//intermission 2

case 7: current_message = Dialogues[11];cutscene_index = 2;instance_create(0,0,TextBox);instance_create(0,0,Cutscene_panel);
 break;//Intro to mission 3

case 8: cutscene_index = 5;current_message = Dialogues[12];cutscene_index = 5;  break;//intermission 3

case 9: cutscene_index = 5;current_message = Dialogues[13];cutscene_index = 5;instance_create(0,0,TextBox);
instance_create(0,0,Cutscene_panel); break;//Intro to mission 4

case 10: cutscene_index = 5;current_message = Dialogues[14]; break;//intermission 4

case 11: current_message = Dialogues[15];instance_create(0,0,TextBox);cutscene_index = 5;instance_create(0,0,Cutscene_panel);
 break;//Intro to mission 5

case 12: current_message = Dialogues[16];cutscene_index = 2;instance_create(0,0,TextBox);instance_create(0,0,Cutscene_panel);
 break;//intermission 5

case 13: current_message = Dialogues[17];instance_create(0,0,TextBox);instance_create(0,0,Cutscene_panel);
 break;//Intro to mission 6

case 14: current_message = Dialogues[18];instance_create(0,0,TextBox); break;//After boss fight

case 15: cutscene_index = 6;current_message = Dialogues[19];instance_create(0,0,TextBox);
instance_create(0,0,Cutscene_panel); break;//Self-destruct

case 16: cutscene_index = 7;current_message = Dialogues[20];instance_create(0,0,TextBox);
instance_create(0,0,Cutscene_panel); break;//Never say die

case 17: cutscene_index = 8;current_message = Dialogues[19];instance_create(0,0,TextBox);
instance_create(0,0,Cutscene_panel); break;//Never say die 2

case 18: cutscene_index = 9;current_message = Dialogues[21];instance_create(0,0,TextBox);
instance_create(0,0,Cutscene_panel); break;//Epilogue 1

case 19: cutscene_index = 10;current_message = Dialogues[22];instance_create(0,0,TextBox);
instance_create(0,0,Cutscene_panel); break;//Epilogue 2

case 20: plot_progress = 0;cutscene_index = 11;current_message = Dialogues[23];instance_create(0,0,TextBox);
instance_create(0,0,Cutscene_panel); break;//Ending card
}
