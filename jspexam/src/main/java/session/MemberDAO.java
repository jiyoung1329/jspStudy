package session;

import java.util.ArrayList;

public class MemberDAO {
	
	private static ArrayList<MemberDTO> members = new ArrayList<MemberDTO>() ;
	
	public void insert(MemberDTO member) {
		members.add(member);
	}
	
	public ArrayList<MemberDTO> selectAll(){
		return members;
	}
	
	public MemberDTO selectId(String id) {
		for(MemberDTO member : members) {
			if(member.getId().equals(id)) {
				return member;
			}
		}
		
		return null;
	}
	
	public void update(MemberDTO member) {
		for (int i=0; i<members.size(); i++) {
			if (members.get(i).getId().equals(member.getId())) {
				members.set(i, member);
			}
				
		}
	}
	
	public void delete(MemberDTO member) {
		for (int i=0; i<members.size(); i++) {
			if (members.get(i).getId().equals(member.getId())) {
				members.remove(i);
			}
				
		}
	}
}
