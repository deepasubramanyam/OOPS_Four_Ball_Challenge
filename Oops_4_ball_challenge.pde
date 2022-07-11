import processing.core.PApplet;

import java.util.*;

public class Oops_4_ball_challenge extends PApplet {
  
    public static final int height= 500;
    public static final int width = 500;
    public static final int diameter = 10;
    private int x_position;
    private int y_position;
    private int ballIncrementUnit;

    private static List<Oops_4_ball_challenge> balls = new ArrayList<>();

    public Oops_4_ball_challenge() {
    }

    public Oops_4_ball_challenge(int x_position,int ballIncrementUnit) {
        this.x_position = x_position;
        this.y_position = ballIncrementUnit;
        this.ballIncrementUnit = ballIncrementUnit;
    }
    
    @Override
    public void settings() {
        super.settings();
        size(width , height);
        smooth(0);  
    }

    @Override
    public void draw() {
        for (Oops_4_ball_challenge ball : balls) {
            ball.x_position = updateWidth(ball);
            ball.y_position = updateHeight(ball);
            ellipse(ball.x_position,ball.y_position,diameter,diameter);
        }
    }

    private int updateWidth(Oops_4_ball_challenge ball) {         
        ball.x_position += ball.ballIncrementUnit;
        return ball.x_position;
    }
    
    private int updateHeight(Oops_4_ball_challenge ball) {         
        ball.y_position = ball.ballIncrementUnit*height/5;
        return ball.y_position;
    }
    
    
    public static void main(String[] args) {
      
        PApplet.main("Oops_4_ball_challenge", args);
        
        for(int unit=1;unit<=4;unit++){
            Oops_4_ball_challenge ball = new Oops_4_ball_challenge(0,unit);
            balls.add(ball);
       }
    }

}
