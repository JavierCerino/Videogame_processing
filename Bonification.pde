class Bonification {

    private int cantidad;
    private int tipo; //1 +vida, 2 +velocidad, 3 +vidaMax, 4 -vida, 5 -velocidad
    private boolean reward = false;
    private int x;
    private int y;
    private int ancho = 70;
    private int alto = 70;
    private boolean estado;
    private int time;
    private PImage consumible1, consumible2, consumible3, consumible4;

    public Bonification () {
        consumible1 = loadImage("/images/bonificacion1.png");
        consumible2 = loadImage("/images/bonificacion2.png");
        consumible3 = loadImage("/images/bonificacion3.png");
        consumible4 = loadImage("/images/bonificacion4.png");
        int limiteSup;
        int limiteInf;
        tipo = int(random(1, 6));
        switch (tipo) {
        case 1:
            limiteInf = 1;
            limiteSup = 11;
            break;
        case 2:
            limiteInf = 1;
            limiteSup = 6;
            break;
        case 3:
            limiteInf = 5;
            limiteSup = 21;
            break;
        case 4:
            limiteInf = -5;
            limiteSup = 0;
            break;
        case 5:
            limiteInf = -5;
            limiteSup = 0;
            break;
        }
        cantidad = int(random(limiteInf, limiteSup));
    }

    public void draw () {
        int logo = int(random(1, 5));
        if (reward==false) {
            if (logo==1) {
                image(consumible1, x, y, ancho, alto);
            } else if (logo==2) {
                image(consumible2, x, y, ancho, alto);
            } else if (logo==3) {
                image(consumible3, x, y, ancho, alto);
            } else if (logo==4) {
                image(consumible4, x, y, ancho, alto);
            }
        }
    }

    public void colision(int xObj, int yObj, int maxXObj, int maxYObj) {
        if (!estado) {
            if ((xObj < (maxX())) && ((maxXObj) > int(x)) && (yObj < (maxY())) && ((maxYObj) > y)) {
                estado = true;
            }
        }
    }

    public boolean getEstado () {
        return estado;
    }

    public void setTime() {
        time = millis();
    }

    public void setReward (boolean reward) {
        this.reward=reward;
    }

    public int maxX () {
        return x+ancho;
    }

    public int maxY () {
        return y+alto;
    }

    public void setPos (int x, int y) {
        this.x=x;
        this.y=y;
    }

    public void setEstado (boolean estado) {
        this.estado=estado;
    }

    public void setTime (int time) {
        this.time=time;
    }

    public int getTipo () {
        return tipo;
    }

    public int getCantidad () {
        return cantidad;
    }

}