package 닌텐도;

public class GameMain {

	public static void main(String[] args) {

		// 닌텐도 게임기 그 자체!!
		// 실제 게임이 실행되는 곳!

		// 게임 칩과 게임기를 연결할 수 있는 메소드 생성!
		// -> insert()

		// 포켓몬 고 게임 게임 칩 생성!
		PockeMon poke = new PockeMon();
		// 게임을 진행할 수 있는 insert()에 생성된 게임 칩 연결!

		Mario mario = new Mario();
		Animal animal = new Animal();
		insert(poke);
		insert(mario);
		insert(animal);

	}
	// insert() 하나만 만들어 놓고
	// 다양한 타입의 게임칩이 들어오도록 수정!
	public static void insert(Game game) {
		game.start();
	}

}
