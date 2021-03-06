import hechizos.*
import artefactosDeLucha.*
object rolando {
	
	var hechizoPreferido
	var valorFuerzaOscura = 5
	var artefactosDeLucha = []
	var valorBase = 1
	var refuerzoArmadura
	//punto 1	
	method valorFuerzaOscura(){
		return valorFuerzaOscura
	}
	method valorFuerzaOscura(unValor){
		valorFuerzaOscura=unValor
	}
	method nivelBase (){
		return 3
	}
	method hechizoPreferido(unHechizo){
		hechizoPreferido=unHechizo
	} 
	method nivelDeHechiceria(){
		return ( (self.nivelBase() * self.poderHechizoPreferido()) +  self.valorFuerzaOscura())
	}
	method poderHechizoPreferido(){
		return hechizoPreferido.poder()
	}
	method eclipse(){
		self.valorFuerzaOscura(valorFuerzaOscura * 2)
	}
	method esPoderoso(){
		return hechizoPreferido.esPoderoso()
	}
	
	
	//´punto 1//
	method habilidadLucha(){
		return  (self.armadura() + artefactosDeLucha.fold(self.valorBase(), {inicial, unArtefacto => unArtefacto.aportar() + inicial }))
	}
	method valorBase(){ 
		return valorBase
	}
	
	
	//punto 2 //
	method valorBase(unValor){
		valorBase=unValor
	}
	method agregarArtefacto(unArtefacto){
		artefactosDeLucha.add(unArtefacto)
	}
	method quitarArtefacto(unArtefacto){
		artefactosDeLucha.remove(unArtefacto)
	}
	method tieneMejorNivelDeLucha(){
		return self.habilidadLucha() > self.nivelDeHechiceria()
	}
	
	
	//punto 3 //
	method refuerzoArmadura(){
		return refuerzoArmadura.aportar()
	}
	method refuerzoArmadura(unRefuerzo){
		refuerzoArmadura=unRefuerzo
	}	
	
}
