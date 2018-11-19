package poly.dto;

public class SubmitDTO {
	// DTO : Data Transfer Object
	// 데이터 전송을 위한 객체
	private String	docid	;//	pk
	private String	movieId	;//	등록ID
	private String	movieSeq	;//	등록SEQ
	private String	title	;//	영화명
	private String	titleEng	;//	영문제명
	private String	directorNm	;//	감독명
	private String	directorId	;//	감독등록번호
	private String	actorNm	;//	배우명
	private String	actorId	;//	배우등록번호
	private String	nation	;//	제작국가
	private String	company	;//	제작사
	private String	prodYear	;//	제작년도
	private String	plot	;//	줄거리
	private String	runtime	;//	대표상영시간
	private String	genre	;//	kmdbUrl
	private String	kmdbUrl	;//	링크URL
	private String	type	;//	유형구분
	private String	ratingGrade	;//	관람기준
	private String	releaseDate	;//	개봉일자
	private String	keywords	;//	키워드
	private String	StaffNm	;//	스텝이름
	private String	staffRoleGroup	;//	스텝크레딧명
	private String	StaffRole	;//	스텝배역
	private String	StaffId	;//	스텝등록번호
	private String	vodClass	;//	VOD 구분
	private String	vodUrl	;//	VOD URL
	private String	soundtrack	;//	삽입곡
	public String getDocid() {
		return docid;
	}
	public void setDocid(String docid) {
		this.docid = docid;
	}
	public String getMovieId() {
		return movieId;
	}
	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}
	public String getMovieSeq() {
		return movieSeq;
	}
	public void setMovieSeq(String movieSeq) {
		this.movieSeq = movieSeq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitleEng() {
		return titleEng;
	}
	public void setTitleEng(String titleEng) {
		this.titleEng = titleEng;
	}
	public String getDirectorNm() {
		return directorNm;
	}
	public void setDirectorNm(String directorNm) {
		this.directorNm = directorNm;
	}
	public String getDirectorId() {
		return directorId;
	}
	public void setDirectorId(String directorId) {
		this.directorId = directorId;
	}
	public String getActorNm() {
		return actorNm;
	}
	public void setActorNm(String actorNm) {
		this.actorNm = actorNm;
	}
	public String getActorId() {
		return actorId;
	}
	public void setActorId(String actorId) {
		this.actorId = actorId;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getProdYear() {
		return prodYear;
	}
	public void setProdYear(String prodYear) {
		this.prodYear = prodYear;
	}
	public String getPlot() {
		return plot;
	}
	public void setPlot(String plot) {
		this.plot = plot;
	}
	public String getRuntime() {
		return runtime;
	}
	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getKmdbUrl() {
		return kmdbUrl;
	}
	public void setKmdbUrl(String kmdbUrl) {
		this.kmdbUrl = kmdbUrl;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRatingGrade() {
		return ratingGrade;
	}
	public void setRatingGrade(String ratingGrade) {
		this.ratingGrade = ratingGrade;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getStaffNm() {
		return StaffNm;
	}
	public void setStaffNm(String staffNm) {
		StaffNm = staffNm;
	}
	public String getStaffRoleGroup() {
		return staffRoleGroup;
	}
	public void setStaffRoleGroup(String staffRoleGroup) {
		this.staffRoleGroup = staffRoleGroup;
	}
	public String getStaffRole() {
		return StaffRole;
	}
	public void setStaffRole(String staffRole) {
		StaffRole = staffRole;
	}
	public String getStaffId() {
		return StaffId;
	}
	public void setStaffId(String staffId) {
		StaffId = staffId;
	}
	public String getVodClass() {
		return vodClass;
	}
	public void setVodClass(String vodClass) {
		this.vodClass = vodClass;
	}
	public String getVodUrl() {
		return vodUrl;
	}
	public void setVodUrl(String vodUrl) {
		this.vodUrl = vodUrl;
	}
	public String getSoundtrack() {
		return soundtrack;
	}
	public void setSoundtrack(String soundtrack) {
		this.soundtrack = soundtrack;
	}
}
