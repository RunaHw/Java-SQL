package Pocketmon;

public class Pocketmon {

	private String name; // 이름
	private String type; // 타입
	private String skill; // 스킬
	private int hp; // 체력
	private int atk; // 공격력
	
	//----------------------------------------------------------------------------------
	public Pocketmon(String name, String type, String skill, int hp, int atk) {
		super();
		this.name = name;
		this.type = type;
		this.skill = skill;
		this.hp = hp;
		this.atk = atk;
	}
	
	public Pocketmon() {
		super();
	}
	
	
	//----------------------------------------------------------------------------------
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public int getHp() {
		return hp;
	}
	public void setHp(int hp) {
		this.hp = hp;
	}
	public int getAtk() {
		return atk;
	}
	public void setAtk(int atk) {
		this.atk = atk;
	}
	
	//----------------------------------------------------------------------------------
	
	
	
	
}
