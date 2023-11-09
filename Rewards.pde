class Rewards {

    String[] textos;

    PImage cofreCerrado;

    PImage cofreAbierto;

    boolean isDrawn = false;

    boolean isClicked = false;
    
    public Rewards (String [] textos) {
        this.textos = textos;   
        cofreAbierto = loadImage("./images/cofre_abierto.jpg");
        cofreCerrado = loadImage("./images/cofre_cerrado.jpg");
        
    }


    int draw(int p) {
        background(255);
        image(cofreCerrado, 400, 450, 200, 200);
        click(); 
        textSize(20);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
        fill(0);
        text(textos[0], 100, 100);

        // TODO: change window
        if(keyPressed) {
            keyPressed();
        }
        if (isClicked) {
            isDrawn = true;
            isClicked = false;
            p++;
        }
        return p;
    }

    void click() {
        if (mouseX > 400 && mouseX < 600 && mouseY > 450 && mouseY < 650) {
            image(cofreAbierto, 400, 450, 200, 200);
            textSize(20);
            fill(0);
            text("Para continuar pulsa la tecla: \"Espacio\"", 350, 700);            
        }
    }

    void keyPressed() {
        if (key == ' ') {
            isClicked = true;
        }
    }
    
}
