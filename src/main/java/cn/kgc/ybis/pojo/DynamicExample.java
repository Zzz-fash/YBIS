package cn.kgc.ybis.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DynamicExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DynamicExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andDIdIsNull() {
            addCriterion("d_id is null");
            return (Criteria) this;
        }

        public Criteria andDIdIsNotNull() {
            addCriterion("d_id is not null");
            return (Criteria) this;
        }

        public Criteria andDIdEqualTo(Integer value) {
            addCriterion("d_id =", value, "dId");
            return (Criteria) this;
        }

        public Criteria andDIdNotEqualTo(Integer value) {
            addCriterion("d_id <>", value, "dId");
            return (Criteria) this;
        }

        public Criteria andDIdGreaterThan(Integer value) {
            addCriterion("d_id >", value, "dId");
            return (Criteria) this;
        }

        public Criteria andDIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("d_id >=", value, "dId");
            return (Criteria) this;
        }

        public Criteria andDIdLessThan(Integer value) {
            addCriterion("d_id <", value, "dId");
            return (Criteria) this;
        }

        public Criteria andDIdLessThanOrEqualTo(Integer value) {
            addCriterion("d_id <=", value, "dId");
            return (Criteria) this;
        }

        public Criteria andDIdIn(List<Integer> values) {
            addCriterion("d_id in", values, "dId");
            return (Criteria) this;
        }

        public Criteria andDIdNotIn(List<Integer> values) {
            addCriterion("d_id not in", values, "dId");
            return (Criteria) this;
        }

        public Criteria andDIdBetween(Integer value1, Integer value2) {
            addCriterion("d_id between", value1, value2, "dId");
            return (Criteria) this;
        }

        public Criteria andDIdNotBetween(Integer value1, Integer value2) {
            addCriterion("d_id not between", value1, value2, "dId");
            return (Criteria) this;
        }

        public Criteria andDNameIsNull() {
            addCriterion("d_name is null");
            return (Criteria) this;
        }

        public Criteria andDNameIsNotNull() {
            addCriterion("d_name is not null");
            return (Criteria) this;
        }

        public Criteria andDNameEqualTo(String value) {
            addCriterion("d_name =", value, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameNotEqualTo(String value) {
            addCriterion("d_name <>", value, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameGreaterThan(String value) {
            addCriterion("d_name >", value, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameGreaterThanOrEqualTo(String value) {
            addCriterion("d_name >=", value, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameLessThan(String value) {
            addCriterion("d_name <", value, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameLessThanOrEqualTo(String value) {
            addCriterion("d_name <=", value, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameLike(String value) {
            addCriterion("d_name like", value, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameNotLike(String value) {
            addCriterion("d_name not like", value, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameIn(List<String> values) {
            addCriterion("d_name in", values, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameNotIn(List<String> values) {
            addCriterion("d_name not in", values, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameBetween(String value1, String value2) {
            addCriterion("d_name between", value1, value2, "dName");
            return (Criteria) this;
        }

        public Criteria andDNameNotBetween(String value1, String value2) {
            addCriterion("d_name not between", value1, value2, "dName");
            return (Criteria) this;
        }

        public Criteria andDDateIsNull() {
            addCriterion("d_date is null");
            return (Criteria) this;
        }

        public Criteria andDDateIsNotNull() {
            addCriterion("d_date is not null");
            return (Criteria) this;
        }

        public Criteria andDDateEqualTo(Date value) {
            addCriterion("d_date =", value, "dDate");
            return (Criteria) this;
        }

        public Criteria andDDateNotEqualTo(Date value) {
            addCriterion("d_date <>", value, "dDate");
            return (Criteria) this;
        }

        public Criteria andDDateGreaterThan(Date value) {
            addCriterion("d_date >", value, "dDate");
            return (Criteria) this;
        }

        public Criteria andDDateGreaterThanOrEqualTo(Date value) {
            addCriterion("d_date >=", value, "dDate");
            return (Criteria) this;
        }

        public Criteria andDDateLessThan(Date value) {
            addCriterion("d_date <", value, "dDate");
            return (Criteria) this;
        }

        public Criteria andDDateLessThanOrEqualTo(Date value) {
            addCriterion("d_date <=", value, "dDate");
            return (Criteria) this;
        }

        public Criteria andDDateIn(List<Date> values) {
            addCriterion("d_date in", values, "dDate");
            return (Criteria) this;
        }

        public Criteria andDDateNotIn(List<Date> values) {
            addCriterion("d_date not in", values, "dDate");
            return (Criteria) this;
        }

        public Criteria andDDateBetween(Date value1, Date value2) {
            addCriterion("d_date between", value1, value2, "dDate");
            return (Criteria) this;
        }

        public Criteria andDDateNotBetween(Date value1, Date value2) {
            addCriterion("d_date not between", value1, value2, "dDate");
            return (Criteria) this;
        }

        public Criteria andDContentIsNull() {
            addCriterion("d_content is null");
            return (Criteria) this;
        }

        public Criteria andDContentIsNotNull() {
            addCriterion("d_content is not null");
            return (Criteria) this;
        }

        public Criteria andDContentEqualTo(String value) {
            addCriterion("d_content =", value, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentNotEqualTo(String value) {
            addCriterion("d_content <>", value, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentGreaterThan(String value) {
            addCriterion("d_content >", value, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentGreaterThanOrEqualTo(String value) {
            addCriterion("d_content >=", value, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentLessThan(String value) {
            addCriterion("d_content <", value, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentLessThanOrEqualTo(String value) {
            addCriterion("d_content <=", value, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentLike(String value) {
            addCriterion("d_content like", value, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentNotLike(String value) {
            addCriterion("d_content not like", value, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentIn(List<String> values) {
            addCriterion("d_content in", values, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentNotIn(List<String> values) {
            addCriterion("d_content not in", values, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentBetween(String value1, String value2) {
            addCriterion("d_content between", value1, value2, "dContent");
            return (Criteria) this;
        }

        public Criteria andDContentNotBetween(String value1, String value2) {
            addCriterion("d_content not between", value1, value2, "dContent");
            return (Criteria) this;
        }

        public Criteria andDImgIsNull() {
            addCriterion("d_img is null");
            return (Criteria) this;
        }

        public Criteria andDImgIsNotNull() {
            addCriterion("d_img is not null");
            return (Criteria) this;
        }

        public Criteria andDImgEqualTo(String value) {
            addCriterion("d_img =", value, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgNotEqualTo(String value) {
            addCriterion("d_img <>", value, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgGreaterThan(String value) {
            addCriterion("d_img >", value, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgGreaterThanOrEqualTo(String value) {
            addCriterion("d_img >=", value, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgLessThan(String value) {
            addCriterion("d_img <", value, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgLessThanOrEqualTo(String value) {
            addCriterion("d_img <=", value, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgLike(String value) {
            addCriterion("d_img like", value, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgNotLike(String value) {
            addCriterion("d_img not like", value, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgIn(List<String> values) {
            addCriterion("d_img in", values, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgNotIn(List<String> values) {
            addCriterion("d_img not in", values, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgBetween(String value1, String value2) {
            addCriterion("d_img between", value1, value2, "dImg");
            return (Criteria) this;
        }

        public Criteria andDImgNotBetween(String value1, String value2) {
            addCriterion("d_img not between", value1, value2, "dImg");
            return (Criteria) this;
        }

        public Criteria andTIdIsNull() {
            addCriterion("t_id is null");
            return (Criteria) this;
        }

        public Criteria andTIdIsNotNull() {
            addCriterion("t_id is not null");
            return (Criteria) this;
        }

        public Criteria andTIdEqualTo(Integer value) {
            addCriterion("t_id =", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdNotEqualTo(Integer value) {
            addCriterion("t_id <>", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdGreaterThan(Integer value) {
            addCriterion("t_id >", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("t_id >=", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdLessThan(Integer value) {
            addCriterion("t_id <", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdLessThanOrEqualTo(Integer value) {
            addCriterion("t_id <=", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdIn(List<Integer> values) {
            addCriterion("t_id in", values, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdNotIn(List<Integer> values) {
            addCriterion("t_id not in", values, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdBetween(Integer value1, Integer value2) {
            addCriterion("t_id between", value1, value2, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdNotBetween(Integer value1, Integer value2) {
            addCriterion("t_id not between", value1, value2, "tId");
            return (Criteria) this;
        }

        public Criteria andUIdIsNull() {
            addCriterion("u_id is null");
            return (Criteria) this;
        }

        public Criteria andUIdIsNotNull() {
            addCriterion("u_id is not null");
            return (Criteria) this;
        }

        public Criteria andUIdEqualTo(Integer value) {
            addCriterion("u_id =", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdNotEqualTo(Integer value) {
            addCriterion("u_id <>", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdGreaterThan(Integer value) {
            addCriterion("u_id >", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("u_id >=", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdLessThan(Integer value) {
            addCriterion("u_id <", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdLessThanOrEqualTo(Integer value) {
            addCriterion("u_id <=", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdIn(List<Integer> values) {
            addCriterion("u_id in", values, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdNotIn(List<Integer> values) {
            addCriterion("u_id not in", values, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdBetween(Integer value1, Integer value2) {
            addCriterion("u_id between", value1, value2, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdNotBetween(Integer value1, Integer value2) {
            addCriterion("u_id not between", value1, value2, "uId");
            return (Criteria) this;
        }

        public Criteria andSmIdIsNull() {
            addCriterion("sm_id is null");
            return (Criteria) this;
        }

        public Criteria andSmIdIsNotNull() {
            addCriterion("sm_id is not null");
            return (Criteria) this;
        }

        public Criteria andSmIdEqualTo(Integer value) {
            addCriterion("sm_id =", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdNotEqualTo(Integer value) {
            addCriterion("sm_id <>", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdGreaterThan(Integer value) {
            addCriterion("sm_id >", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("sm_id >=", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdLessThan(Integer value) {
            addCriterion("sm_id <", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdLessThanOrEqualTo(Integer value) {
            addCriterion("sm_id <=", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdIn(List<Integer> values) {
            addCriterion("sm_id in", values, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdNotIn(List<Integer> values) {
            addCriterion("sm_id not in", values, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdBetween(Integer value1, Integer value2) {
            addCriterion("sm_id between", value1, value2, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdNotBetween(Integer value1, Integer value2) {
            addCriterion("sm_id not between", value1, value2, "smId");
            return (Criteria) this;
        }

        public Criteria andComIdIsNull() {
            addCriterion("com_id is null");
            return (Criteria) this;
        }

        public Criteria andComIdIsNotNull() {
            addCriterion("com_id is not null");
            return (Criteria) this;
        }

        public Criteria andComIdEqualTo(Integer value) {
            addCriterion("com_id =", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdNotEqualTo(Integer value) {
            addCriterion("com_id <>", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdGreaterThan(Integer value) {
            addCriterion("com_id >", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("com_id >=", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdLessThan(Integer value) {
            addCriterion("com_id <", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdLessThanOrEqualTo(Integer value) {
            addCriterion("com_id <=", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdIn(List<Integer> values) {
            addCriterion("com_id in", values, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdNotIn(List<Integer> values) {
            addCriterion("com_id not in", values, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdBetween(Integer value1, Integer value2) {
            addCriterion("com_id between", value1, value2, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdNotBetween(Integer value1, Integer value2) {
            addCriterion("com_id not between", value1, value2, "comId");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andDUnameIsNull() {
            addCriterion("d_uname is null");
            return (Criteria) this;
        }

        public Criteria andDUnameIsNotNull() {
            addCriterion("d_uname is not null");
            return (Criteria) this;
        }

        public Criteria andDUnameEqualTo(String value) {
            addCriterion("d_uname =", value, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameNotEqualTo(String value) {
            addCriterion("d_uname <>", value, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameGreaterThan(String value) {
            addCriterion("d_uname >", value, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameGreaterThanOrEqualTo(String value) {
            addCriterion("d_uname >=", value, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameLessThan(String value) {
            addCriterion("d_uname <", value, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameLessThanOrEqualTo(String value) {
            addCriterion("d_uname <=", value, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameLike(String value) {
            addCriterion("d_uname like", value, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameNotLike(String value) {
            addCriterion("d_uname not like", value, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameIn(List<String> values) {
            addCriterion("d_uname in", values, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameNotIn(List<String> values) {
            addCriterion("d_uname not in", values, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameBetween(String value1, String value2) {
            addCriterion("d_uname between", value1, value2, "dUname");
            return (Criteria) this;
        }

        public Criteria andDUnameNotBetween(String value1, String value2) {
            addCriterion("d_uname not between", value1, value2, "dUname");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}