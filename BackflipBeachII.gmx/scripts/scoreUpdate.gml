//get parameters
pts = argument0;

//check against all entries
if(pts >= HighScoreCounter.highscores[4,1]){
    if(pts >= HighScoreCounter.highscores[3,1]){
        if(pts >= HighScoreCounter.highscores[2,1]){
            if(pts >= HighScoreCounter.highscores[1,1]){
                if(pts >= HighScoreCounter.highscores[0,1]){
                    //YOU WIN AT LIFE
                    HighScoreCounter.highscores[4,1] = HighScoreCounter.highscores[3,1];
                    HighScoreCounter.highscores[3,1] = HighScoreCounter.highscores[2,1];
                    HighScoreCounter.highscores[2,1] = HighScoreCounter.highscores[1,1];
                    HighScoreCounter.highscores[1,1] = HighScoreCounter.highscores[0,1];
                    HighScoreCounter.highscores[0,1] = pts;
                    return false;
                }else{
                HighScoreCounter.highscores[4,1] = HighScoreCounter.highscores[3,1];
                HighScoreCounter.highscores[3,1] = HighScoreCounter.highscores[2,1];
                HighScoreCounter.highscores[2,1] = HighScoreCounter.highscores[1,1];
                HighScoreCounter.highscores[1,1] = pts;
                return false;
                }
            }else{
            HighScoreCounter.highscores[4,1] = HighScoreCounter.highscores[3,1];
            HighScoreCounter.highscores[3,1] = HighScoreCounter.highscores[2,1];
            HighScoreCounter.highscores[2,1] = pts;
            return false;
            }
        }else{
        HighScoreCounter.highscores[4,1] = HighScoreCounter.highscores[3,1];
        HighScoreCounter.highscores[3,1] = pts;
        return false;
        }
    }else{
    HighScoreCounter.highscores[4,1] = pts;
    return false;
    }
}
