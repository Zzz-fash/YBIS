package cn.kgc.ybis.pojo;

import java.util.ArrayList;
import java.util.List;

public class TeacherExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TeacherExample() {
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

        public Criteria andTNameIsNull() {
            addCriterion("t_name is null");
            return (Criteria) this;
        }

        public Criteria andTNameIsNotNull() {
            addCriterion("t_name is not null");
            return (Criteria) this;
        }

        public Criteria andTNameEqualTo(String value) {
            addCriterion("t_name =", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotEqualTo(String value) {
            addCriterion("t_name <>", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameGreaterThan(String value) {
            addCriterion("t_name >", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameGreaterThanOrEqualTo(String value) {
            addCriterion("t_name >=", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameLessThan(String value) {
            addCriterion("t_name <", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameLessThanOrEqualTo(String value) {
            addCriterion("t_name <=", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameLike(String value) {
            addCriterion("t_name like", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotLike(String value) {
            addCriterion("t_name not like", value, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameIn(List<String> values) {
            addCriterion("t_name in", values, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotIn(List<String> values) {
            addCriterion("t_name not in", values, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameBetween(String value1, String value2) {
            addCriterion("t_name between", value1, value2, "tName");
            return (Criteria) this;
        }

        public Criteria andTNameNotBetween(String value1, String value2) {
            addCriterion("t_name not between", value1, value2, "tName");
            return (Criteria) this;
        }

        public Criteria andTPasswordIsNull() {
            addCriterion("t_password is null");
            return (Criteria) this;
        }

        public Criteria andTPasswordIsNotNull() {
            addCriterion("t_password is not null");
            return (Criteria) this;
        }

        public Criteria andTPasswordEqualTo(String value) {
            addCriterion("t_password =", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordNotEqualTo(String value) {
            addCriterion("t_password <>", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordGreaterThan(String value) {
            addCriterion("t_password >", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("t_password >=", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordLessThan(String value) {
            addCriterion("t_password <", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordLessThanOrEqualTo(String value) {
            addCriterion("t_password <=", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordLike(String value) {
            addCriterion("t_password like", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordNotLike(String value) {
            addCriterion("t_password not like", value, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordIn(List<String> values) {
            addCriterion("t_password in", values, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordNotIn(List<String> values) {
            addCriterion("t_password not in", values, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordBetween(String value1, String value2) {
            addCriterion("t_password between", value1, value2, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPasswordNotBetween(String value1, String value2) {
            addCriterion("t_password not between", value1, value2, "tPassword");
            return (Criteria) this;
        }

        public Criteria andTPhoneIsNull() {
            addCriterion("t_phone is null");
            return (Criteria) this;
        }

        public Criteria andTPhoneIsNotNull() {
            addCriterion("t_phone is not null");
            return (Criteria) this;
        }

        public Criteria andTPhoneEqualTo(String value) {
            addCriterion("t_phone =", value, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneNotEqualTo(String value) {
            addCriterion("t_phone <>", value, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneGreaterThan(String value) {
            addCriterion("t_phone >", value, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("t_phone >=", value, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneLessThan(String value) {
            addCriterion("t_phone <", value, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneLessThanOrEqualTo(String value) {
            addCriterion("t_phone <=", value, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneLike(String value) {
            addCriterion("t_phone like", value, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneNotLike(String value) {
            addCriterion("t_phone not like", value, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneIn(List<String> values) {
            addCriterion("t_phone in", values, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneNotIn(List<String> values) {
            addCriterion("t_phone not in", values, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneBetween(String value1, String value2) {
            addCriterion("t_phone between", value1, value2, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTPhoneNotBetween(String value1, String value2) {
            addCriterion("t_phone not between", value1, value2, "tPhone");
            return (Criteria) this;
        }

        public Criteria andTDescIsNull() {
            addCriterion("t_desc is null");
            return (Criteria) this;
        }

        public Criteria andTDescIsNotNull() {
            addCriterion("t_desc is not null");
            return (Criteria) this;
        }

        public Criteria andTDescEqualTo(String value) {
            addCriterion("t_desc =", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescNotEqualTo(String value) {
            addCriterion("t_desc <>", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescGreaterThan(String value) {
            addCriterion("t_desc >", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescGreaterThanOrEqualTo(String value) {
            addCriterion("t_desc >=", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescLessThan(String value) {
            addCriterion("t_desc <", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescLessThanOrEqualTo(String value) {
            addCriterion("t_desc <=", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescLike(String value) {
            addCriterion("t_desc like", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescNotLike(String value) {
            addCriterion("t_desc not like", value, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescIn(List<String> values) {
            addCriterion("t_desc in", values, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescNotIn(List<String> values) {
            addCriterion("t_desc not in", values, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescBetween(String value1, String value2) {
            addCriterion("t_desc between", value1, value2, "tDesc");
            return (Criteria) this;
        }

        public Criteria andTDescNotBetween(String value1, String value2) {
            addCriterion("t_desc not between", value1, value2, "tDesc");
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

        public Criteria andStatusEqualTo(String value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(String value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(String value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(String value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(String value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(String value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLike(String value) {
            addCriterion("status like", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotLike(String value) {
            addCriterion("status not like", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<String> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<String> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(String value1, String value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(String value1, String value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andTEmailIsNull() {
            addCriterion("t_email is null");
            return (Criteria) this;
        }

        public Criteria andTEmailIsNotNull() {
            addCriterion("t_email is not null");
            return (Criteria) this;
        }

        public Criteria andTEmailEqualTo(String value) {
            addCriterion("t_email =", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailNotEqualTo(String value) {
            addCriterion("t_email <>", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailGreaterThan(String value) {
            addCriterion("t_email >", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailGreaterThanOrEqualTo(String value) {
            addCriterion("t_email >=", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailLessThan(String value) {
            addCriterion("t_email <", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailLessThanOrEqualTo(String value) {
            addCriterion("t_email <=", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailLike(String value) {
            addCriterion("t_email like", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailNotLike(String value) {
            addCriterion("t_email not like", value, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailIn(List<String> values) {
            addCriterion("t_email in", values, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailNotIn(List<String> values) {
            addCriterion("t_email not in", values, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailBetween(String value1, String value2) {
            addCriterion("t_email between", value1, value2, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTEmailNotBetween(String value1, String value2) {
            addCriterion("t_email not between", value1, value2, "tEmail");
            return (Criteria) this;
        }

        public Criteria andTPathIsNull() {
            addCriterion("t_path is null");
            return (Criteria) this;
        }

        public Criteria andTPathIsNotNull() {
            addCriterion("t_path is not null");
            return (Criteria) this;
        }

        public Criteria andTPathEqualTo(String value) {
            addCriterion("t_path =", value, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathNotEqualTo(String value) {
            addCriterion("t_path <>", value, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathGreaterThan(String value) {
            addCriterion("t_path >", value, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathGreaterThanOrEqualTo(String value) {
            addCriterion("t_path >=", value, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathLessThan(String value) {
            addCriterion("t_path <", value, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathLessThanOrEqualTo(String value) {
            addCriterion("t_path <=", value, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathLike(String value) {
            addCriterion("t_path like", value, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathNotLike(String value) {
            addCriterion("t_path not like", value, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathIn(List<String> values) {
            addCriterion("t_path in", values, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathNotIn(List<String> values) {
            addCriterion("t_path not in", values, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathBetween(String value1, String value2) {
            addCriterion("t_path between", value1, value2, "tPath");
            return (Criteria) this;
        }

        public Criteria andTPathNotBetween(String value1, String value2) {
            addCriterion("t_path not between", value1, value2, "tPath");
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