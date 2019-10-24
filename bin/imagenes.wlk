import wollok.game.*

class Caja{
     var property position = new Position (
     	x= 0.randomUpTo(game.width()).truncate(0),
     	y= 0.randomUpTo(game.height()).truncate(0)
     )
     method image() = "caja.png"
     method desaparece(){game.removeVisual(self)}
}
