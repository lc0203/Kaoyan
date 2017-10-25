package cn.enity;
//得到用户输入的关键字和搜索的类型
public class SearchInfo {
		private String keywords;
		private int Type;
		public String getKeywords() {
			return keywords;
		}

		public void setKeywords(String keywords) {
			this.keywords = keywords;
		}

		public int getType() {
			return Type;
		}

		public void setType(int type) {
			Type = type;
		}
}
