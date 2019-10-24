import wollok.game.* 

object hector {
	var property position 
	var energia = 100
	var pasos = 0
	method image() = "player.png"
	method moveteHaciaArriba() {
		if(self.position().y() != game.height()-1) self.position(self.position().up(1))
		self.contarPasos()
		} 
	method moveteHaciaAbajo() {if(self.position().y() != 0)
		self.position(self.position().down(1))
		self.contarPasos()}
	method moveteHaciaIzquierda() {if(self.position().x() != 0)
		self.position(self.position().left(1))
		self.contarPasos()}
	method moveteHaciaDerecha() {if(self.position().x() != game.width()-1)
		self.position(self.position().right(1))
		self.contarPasos()}   
	
	method energia(){
		game.say(self,"Mi energia es: " + energia + " Pasos:" + pasos)
	}
	method contarPasos() {pasos++
		if (pasos%10==0)
		energia--
	}
}

object zorro {
	var property position = game.at(9,0)
	method image() = "zorro.png"
	method movete() {
		const x = 0.randomUpTo(game.width()).truncate(0)
		const y = 0.randomUpTo(game.height()).truncate(0)
		position = game.at(x,y)
	}
	method desaparece() { }
}