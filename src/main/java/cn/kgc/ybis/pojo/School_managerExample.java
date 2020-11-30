package cn.kgc.ybis.pojo;

import java.util.ArrayList;
import java.util.List;

public class School_managerExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public School_managerExample() {
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

        public Criteria andSmPhoneIsNull() {
            addCriterion("sm_phone is null");
            return (Criteria) this;
        }

        public Criteria andSmPhoneIsNotNull() {
            addCriterion("sm_phone is not null");
            return (Criteria) this;
        }

        public Criteria andSmPhoneEqualTo(String value) {
            addCriterion("sm_phone =", value, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneNotEqualTo(String value) {
            addCriterion("sm_phone <>", value, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneGreaterThan(String value) {
            addCriterion("sm_phone >", value, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("sm_phone >=", value, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneLessThan(String value) {
            addCriterion("sm_phone <", value, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneLessThanOrEqualTo(String value) {
            addCriterion("sm_phone <=", value, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneLike(String value) {
            addCriterion("sm_phone like", value, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneNotLike(String value) {
            addCriterion("sm_phone not like", value, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneIn(List<String> values) {
            addCriterion("sm_phone in", values, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneNotIn(List<String> values) {
            addCriterion("sm_phone not in", values, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneBetween(String value1, String value2) {
            addCriterion("sm_phone between", value1, value2, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPhoneNotBetween(String value1, String value2) {
            addCriterion("sm_phone not between", value1, value2, "smPhone");
            return (Criteria) this;
        }

        public Criteria andSmPasswordIsNull() {
            addCriterion("sm_password is null");
            return (Criteria) this;
        }

        public Criteria andSmPasswordIsNotNull() {
            addCriterion("sm_password is not null");
            return (Criteria) this;
        }

        public Criteria andSmPasswordEqualTo(String value) {
            addCriterion("sm_password =", value, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordNotEqualTo(String value) {
            addCriterion("sm_password <>", value, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordGreaterThan(String value) {
            addCriterion("sm_password >", value, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("sm_password >=", value, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordLessThan(String value) {
            addCriterion("sm_password <", value, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordLessThanOrEqualTo(String value) {
            addCriterion("sm_password <=", value, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordLike(String value) {
            addCriterion("sm_password like", value, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordNotLike(String value) {
            addCriterion("sm_password not like", value, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordIn(List<String> values) {
            addCriterion("sm_password in", values, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordNotIn(List<String> values) {
            addCriterion("sm_password not in", values, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordBetween(String value1, String value2) {
            addCriterion("sm_password between", value1, value2, "smPassword");
            return (Criteria) this;
        }

        public Criteria andSmPasswordNotBetween(String value1, String value2) {
            addCriterion("sm_password not between", value1, value2, "smPassword");
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

        public Criteria andSmEmailIsNull() {
            addCriterion("sm_email is null");
            return (Criteria) this;
        }

        public Criteria andSmEmailIsNotNull() {
            addCriterion("sm_email is not null");
            return (Criteria) this;
        }

        public Criteria andSmEmailEqualTo(String value) {
            addCriterion("sm_email =", value, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailNotEqualTo(String value) {
            addCriterion("sm_email <>", value, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailGreaterThan(String value) {
            addCriterion("sm_email >", value, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailGreaterThanOrEqualTo(String value) {
            addCriterion("sm_email >=", value, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailLessThan(String value) {
            addCriterion("sm_email <", value, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailLessThanOrEqualTo(String value) {
            addCriterion("sm_email <=", value, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailLike(String value) {
            addCriterion("sm_email like", value, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailNotLike(String value) {
            addCriterion("sm_email not like", value, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailIn(List<String> values) {
            addCriterion("sm_email in", values, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailNotIn(List<String> values) {
            addCriterion("sm_email not in", values, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailBetween(String value1, String value2) {
            addCriterion("sm_email between", value1, value2, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmEmailNotBetween(String value1, String value2) {
            addCriterion("sm_email not between", value1, value2, "smEmail");
            return (Criteria) this;
        }

        public Criteria andSmPathIsNull() {
            addCriterion("sm_path is null");
            return (Criteria) this;
        }

        public Criteria andSmPathIsNotNull() {
            addCriterion("sm_path is not null");
            return (Criteria) this;
        }

        public Criteria andSmPathEqualTo(String value) {
            addCriterion("sm_path =", value, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathNotEqualTo(String value) {
            addCriterion("sm_path <>", value, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathGreaterThan(String value) {
            addCriterion("sm_path >", value, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathGreaterThanOrEqualTo(String value) {
            addCriterion("sm_path >=", value, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathLessThan(String value) {
            addCriterion("sm_path <", value, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathLessThanOrEqualTo(String value) {
            addCriterion("sm_path <=", value, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathLike(String value) {
            addCriterion("sm_path like", value, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathNotLike(String value) {
            addCriterion("sm_path not like", value, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathIn(List<String> values) {
            addCriterion("sm_path in", values, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathNotIn(List<String> values) {
            addCriterion("sm_path not in", values, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathBetween(String value1, String value2) {
            addCriterion("sm_path between", value1, value2, "smPath");
            return (Criteria) this;
        }

        public Criteria andSmPathNotBetween(String value1, String value2) {
            addCriterion("sm_path not between", value1, value2, "smPath");
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