package Plan;

public class SelfStudyPlan {
	private String id;
	private String numPaperEnglish;
	private String numWordEnglish;
	private String numChoicePolitics;
	private String numPaperPolitics;
	private String numPaperMajor;
	private String numPaperMath;
	private String othersMath;
	private String othersPolitics;
	private String othersEnglish;
	private String othersMajor;
	
	
	public void setNull(){
		id = null;
		numPaperEnglish=null;
		numWordEnglish=null;
		numChoicePolitics=null;
		numPaperPolitics=null;
		numPaperMajor=null;
		numPaperMath=null;
		othersMath=null;
		othersPolitics=null;
		othersEnglish=null;
		othersMajor=null;
	}

	public void copy(SelfStudyPlan plan){
		id=plan.getId();
		numPaperEnglish=plan.getNumPaperEnglish();
		numWordEnglish=plan.getNumWordEnglish();
		numChoicePolitics=plan.getNumChoicePolitics();
		numPaperPolitics=plan.getNumPaperPolitics();
		numPaperMajor=plan.getNumPaperMajor();
		numPaperMath=plan.getNumPaperMath();
		othersMath=plan.getOthersMath();
		othersPolitics=plan.getOthersPolitics();
		othersEnglish=plan.getOthersPolitics();
		othersMajor=plan.getOthersMajor();
	}
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getNumPaperEnglish() {
		return numPaperEnglish;
	}


	public void setNumPaperEnglish(String numPaperEnglish) {
		this.numPaperEnglish = numPaperEnglish;
	}


	public String getNumWordEnglish() {
		return numWordEnglish;
	}


	public void setNumWordEnglish(String numWordEnglish) {
		this.numWordEnglish = numWordEnglish;
	}


	public String getNumChoicePolitics() {
		return numChoicePolitics;
	}


	public void setNumChoicePolitics(String numChoicePolitics) {
		this.numChoicePolitics = numChoicePolitics;
	}


	public String getNumPaperPolitics() {
		return numPaperPolitics;
	}


	public void setNumPaperPolitics(String numPaperPolitics) {
		this.numPaperPolitics = numPaperPolitics;
	}


	public String getNumPaperMajor() {
		return numPaperMajor;
	}


	public void setNumPaperMajor(String numPaperMajor) {
		this.numPaperMajor = numPaperMajor;
	}


	public String getNumPaperMath() {
		return numPaperMath;
	}


	public void setNumPaperMath(String numPaperMath) {
		this.numPaperMath = numPaperMath;
	}


	public String getOthersMath() {
		return othersMath;
	}


	public void setOthersMath(String othersMath) {
		this.othersMath = othersMath;
	}


	public String getOthersPolitics() {
		return othersPolitics;
	}


	public void setOthersPolitics(String othersPolitics) {
		this.othersPolitics = othersPolitics;
	}


	public String getOthersEnglish() {
		return othersEnglish;
	}


	public void setOthersEnglish(String othersEnglish) {
		this.othersEnglish = othersEnglish;
	}


	public String getOthersMajor() {
		return othersMajor;
	}


	public void setOthersMajor(String othersMajor) {
		this.othersMajor = othersMajor;
	}

}