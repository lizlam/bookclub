class Person(val name: String)

trait Nice {
  def greet() = println("Howdy!")
}

class Character(override val name:String) extends Person(name) with Nice

val flanders = new Character("Ned")
flanders.greet
