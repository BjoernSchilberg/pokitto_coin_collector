#include <Pokitto.h>
#include <cstdlib>


Pokitto::Core game;

int COIN_X = 50;
int COIN_Y = 50;
int PLAYER_X = 10;
int PLAYER_Y = 10;
const int PLAYER_WIDTH = 8;
const int PLAYER_HEIGHT = 8;
int SPEEDX = 2;
int SPEEDY = 2;

int score = 0;

void setup()
{
    game.begin();
}

void update()
{
    game.display.clear();

    game.display.setColor(C_BROWN);
    // Draw the coin
    game.display.fillCircle(COIN_X, COIN_Y, 4);

    // Draw the player
    game.display.fillRect(PLAYER_X, PLAYER_Y, PLAYER_WIDTH, PLAYER_HEIGHT);

    if (game.buttons.pressed(BTN_UP) && PLAYER_Y > 0)
    {
        PLAYER_Y = PLAYER_Y - SPEEDY;
    }

    if (game.buttons.pressed(BTN_DOWN) && PLAYER_Y < 88 - PLAYER_HEIGHT)
    {
        PLAYER_Y = PLAYER_Y + SPEEDY;
    }

    if (game.buttons.pressed(BTN_LEFT) && PLAYER_X > 0)
    {
        PLAYER_X = PLAYER_X - SPEEDX;
    }

    if (game.buttons.pressed(BTN_RIGHT) && PLAYER_X < 110 - PLAYER_WIDTH)
    {
        PLAYER_X = PLAYER_X + SPEEDX;
    }

    // Check if the player has collected the coin
    if (game.collideRectRect(COIN_X - 4, COIN_Y - 4, 8, 8, PLAYER_X, PLAYER_Y, PLAYER_WIDTH, PLAYER_HEIGHT))
    {
        score++;
        COIN_X = 1 + rand() % 100;
        COIN_Y = 1 + rand() % 100;
    }

    // Display the score
    game.display.setColor(C_WHITE);
    game.display.setCursor(10, 10);
    game.display.print("Score: " );
    game.display.print(score);
}

