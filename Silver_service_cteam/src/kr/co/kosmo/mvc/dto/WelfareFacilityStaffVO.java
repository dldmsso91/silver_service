package kr.co.kosmo.mvc.dto;


/*
facilityNo number(10),
facilityName varchar2(100) not null,
staffTotal number(3),
director number(3),
general number(3),
socialWorker number(3),
doctor number(3),
contractDoctor number(3),
nurse number(3),
nurseAside number(3),
dentalist number(3),
careWorker1st number(3),
careWorker2nd number(3),
careWorker3rd number(3),
physicalTherapist number(3),
occupationalTherapist number(3),
officer number(3),
nutritionist number(3),
cook number(3),
cleanliness number(3),
keeper number(3),
assitant number(3),
others number(3),
foreign key(facilityNO) references welfareFacilities(facilityNo)
 */
public class WelfareFacilityStaffVO {
	private int facilityNo;
	private String facilityName;
	private int staffTotal;
	private int director;
	private int general;
	private int socialWorker;
	private int doctor;
	private int contractDoctor;
	private int nurse;
	private int nurseAside;
	private int dentalist;
	private int careWorker1st;
	private int careWorker2nd;
	private int careWorker3rd;
	private int physicalTherapist;
	private int occupationalTherapist;
	private int officer;
	private int nutritionist;
	private int cook;
	private int cleanliness;
	private int keeper;
	private int assitant;
	private int others;
	
	public int getFacilityNo() {
		return facilityNo;
	}
	public void setFacilityNo(int facilityNo) {
		this.facilityNo = facilityNo;
	}
	public String getFacilityName() {
		return facilityName;
	}
	public void setFacilityName(String facilityName) {
		this.facilityName = facilityName;
	}
	public int getStaffTotal() {
		return staffTotal;
	}
	public void setStaffTotal(int staffTotal) {
		this.staffTotal = staffTotal;
	}
	public int getDirector() {
		return director;
	}
	public void setDirector(int director) {
		this.director = director;
	}
	public int getGeneral() {
		return general;
	}
	public void setGeneral(int general) {
		this.general = general;
	}
	public int getSocialWorker() {
		return socialWorker;
	}
	public void setSocialWorker(int socialWorker) {
		this.socialWorker = socialWorker;
	}
	public int getDoctor() {
		return doctor;
	}
	public void setDoctor(int doctor) {
		this.doctor = doctor;
	}
	public int getContractDoctor() {
		return contractDoctor;
	}
	public void setContractDoctor(int contractDoctor) {
		this.contractDoctor = contractDoctor;
	}
	public int getNurse() {
		return nurse;
	}
	public void setNurse(int nurse) {
		this.nurse = nurse;
	}
	public int getNurseAside() {
		return nurseAside;
	}
	public void setNurseAside(int nurseAside) {
		this.nurseAside = nurseAside;
	}
	public int getDentalist() {
		return dentalist;
	}
	public void setDentalist(int dentalist) {
		this.dentalist = dentalist;
	}
	public int getCareWorker1st() {
		return careWorker1st;
	}
	public void setCareWorker1st(int careWorker1st) {
		this.careWorker1st = careWorker1st;
	}
	public int getCareWorker2nd() {
		return careWorker2nd;
	}
	public void setCareWorker2nd(int careWorker2nd) {
		this.careWorker2nd = careWorker2nd;
	}
	public int getCareWorker3rd() {
		return careWorker3rd;
	}
	public void setCareWorker3rd(int careWorker3rd) {
		this.careWorker3rd = careWorker3rd;
	}
	public int getPhysicalTherapist() {
		return physicalTherapist;
	}
	public void setPhysicalTherapist(int physicalTherapist) {
		this.physicalTherapist = physicalTherapist;
	}
	public int getOccupationalTherapist() {
		return occupationalTherapist;
	}
	public void setOccupationalTherapist(int occupationalTherapist) {
		this.occupationalTherapist = occupationalTherapist;
	}
	public int getOfficer() {
		return officer;
	}
	public void setOfficer(int officer) {
		this.officer = officer;
	}
	public int getNutritionist() {
		return nutritionist;
	}
	public void setNutritionist(int nutritionist) {
		this.nutritionist = nutritionist;
	}
	public int getCook() {
		return cook;
	}
	public void setCook(int cook) {
		this.cook = cook;
	}
	public int getCleanliness() {
		return cleanliness;
	}
	public void setCleanliness(int cleanliness) {
		this.cleanliness = cleanliness;
	}
	public int getKeeper() {
		return keeper;
	}
	public void setKeeper(int keeper) {
		this.keeper = keeper;
	}
	public int getAssitant() {
		return assitant;
	}
	public void setAssitant(int assitant) {
		this.assitant = assitant;
	}
	public int getOthers() {
		return others;
	}
	public void setOthers(int others) {
		this.others = others;
	}
	
}
