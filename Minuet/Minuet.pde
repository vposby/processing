import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput out;

void setup(){
 size(600, 600, P3D);
 background(50,15,100);
 frameRate(15);
 smooth();
 stroke(255,25);
 strokeWeight(4);
 
 minim = new Minim(this);
 out = minim.getLineOut();
 
 out.setTempo(120);
 out.pauseNotes();

 //melody (sine waves)
 out.playNote(1.0,1.5,"D4");
 out.playNote(2.5,0.5,"Eb4");
 out.playNote(3.0,1.0,"D4");
 out.playNote(4.0,1.0,"C4");
 out.playNote(5.0,0.5,"Bb3");
 out.playNote(5.5,0.5,"A3");
 out.playNote(6.0,1.0,"Bb3");
 out.playNote(7.0,1.0,"C4");
 out.playNote(8.0,1.0,"Bb3");
 out.playNote(9.0,1.0,"A3");
 out.playNote(10.0,1.0,"G3");
 out.playNote(11.0,0.5,"G3");
 out.playNote(11.5,0.5,"A3");
 out.playNote(12.0,0.5,"Bb3");
 out.playNote(12.5,0.5,"C4");
 out.playNote(13.0,2.0,"D4");
 out.playNote(15.0,1.0,"G4");
 out.playNote(16.0,1.0,"C4");
 out.playNote(17.0,0.5,"Bb3");
 out.playNote(17.5,0.5,"A3");
 out.playNote(18.0,0.5,"Bb3");
 out.playNote(18.5,0.5,"C4");
 out.playNote(19.0,0.5,"Bb3");
 out.playNote(19.5,0.25,"A3");
 out.playNote(19.75,0.25,"Bb3");
 out.playNote(20.0,1.0,"A3");
 out.playNote(21.0,1.0,"D4");
 out.playNote(22.0,3.0,"G3");

 //bassline (squarewaves)
 out.playNote(1.0,2.0,"G2");
 out.playNote(3.0,1.0,"Bb2");
 out.playNote(4.0,1.0,"A2");
 out.playNote(5.0,1.0,"D2");
 out.playNote(6.0,1.0,"G2");
 out.playNote(7.0,1.0,"C2");
 out.playNote(8.0,2.0,"D2");
 out.playNote(10.0,2.0,"G2");
 out.playNote(12.0,0.5,"G2");
 out.playNote(12.5,0.5,"A2");
 out.playNote(13.0,1.0,"Bb2");
 out.playNote(14.0,1.0,"G2");
 out.playNote(15.0,1.0,"Bb2");
 out.playNote(16.0,1.0,"A2");
 out.playNote(17.0,1.0,"D2");
 out.playNote(18.0,1.0,"G2");
 out.playNote(19.0,1.0,"C2");
 out.playNote(20.0,2.0,"D2");
 out.playNote(22.0,3.0,"G2");
 
 //countermelody (sawtooth waves)
 out.playNote(1.0,0.5,"G5");
 out.playNote(1.5,0.5,"A5");
 out.playNote(2.0,0.5,"Bb5");
 out.playNote(2.5,0.5,"G5");
 out.playNote(3.0,0.5,"A5");
 out.playNote(3.5,0.5,"Bb5");
 out.playNote(4.0,0.5,"A5");
 out.playNote(4.5,0.5,"G5");
 out.playNote(5.0,0.5,"Gb5");
 out.playNote(5.5,0.5,"A5");
 out.playNote(6.0,0.5,"G5");
 out.playNote(6.5,0.5,"Bb5");
 out.playNote(7.0,0.5,"C6");
 out.playNote(7.5,0.5,"Eb6");
 out.playNote(8.0,0.5,"D6");
 out.playNote(8.5,0.5,"Db6");
 out.playNote(9.0,0.5,"D6");
 out.playNote(9.5,0.5,"D5");
 out.playNote(10.0,0.5,"G5");
 out.playNote(10.5,0.5,"D5");
 out.playNote(10.5,0.5,"Bb2");
 out.playNote(11.0,0.5,"Bb4");
 out.playNote(11.0,0.5,"D3");
 out.playNote(11.5,0.5,"D5");
 out.playNote(11.5,0.5,"Gb3");
 out.playNote(12.0,1.0,"G5");
 out.playNote(12.0,0.5,"G3");
 out.playNote(12.5,0.5,"A3");
 out.playNote(13.0,0.5,"G5");
 out.playNote(13.5,0.5,"A5");
 out.playNote(14.0,0.5,"Bb5");
 out.playNote(14.5,0.5,"G5");
 out.playNote(15.0,0.5,"A5");
 out.playNote(15.5,0.5,"Bb5");
 out.playNote(16.0,0.5,"A5");
 out.playNote(16.5,0.5,"G5");
 out.playNote(17.0,0.5,"Gb5");
 out.playNote(17.5,0.5,"A5");
 out.playNote(18.0,0.5,"G5");
 out.playNote(18.5,0.5,"Bb5");
 out.playNote(19.0,0.5,"C6");
 out.playNote(19.5,0.5,"Eb6");
 out.playNote(20.0,0.5,"D6");
 out.playNote(20.5,0.5,"Db6");
 out.playNote(21.0,0.5,"D6");
 out.playNote(21.5,0.5,"C6");
 out.playNote(22.0,3.0,"Bb5");

 loop();
 out.resumeNotes();
}

void draw(){
 fill(50,15,100,60);
 rect(0,0,width,height); 
 
 for(int i=0;i<out.bufferSize()-1;i++){
  line(i, 300+out.left.get(i)*250, i+1, 300+out.left.get(i)*250);
  line(i, 300+out.right.get(i)*250, i+1, 300+out.right.get(i)*250);
 }
}