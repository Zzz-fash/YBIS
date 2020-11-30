package cn.kgc.ybis.pojo;

import java.util.ArrayList;
import java.util.List;

public class Super_adminExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public Super_adminExample() {
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

        public Criteria andSaIdIsNull() {
            addCriterion("sa_id is null");
            return (Criteria) this;
        }

        public Criteria andSaIdIsNotNull() {
            addCriterion("sa_id is not null");
            return (Criteria) this;
        }

        public Criteria andSaIdEqualTo(Integer value) {
            addCriterion("sa_id =", value, "saId");
            return (Criteria) this;
        }

        public Criteria andSaIdNotEqualTo(Integer value) {
            addCriterion("sa_id <>", value, "saId");
            return (Criteria) this;
        }

        public Criteria andSaIdGreaterThan(Integer value) {
            addCriterion("sa_id >", value, "saId");
            return (Criteria) this;
        }

        public Criteria andSaIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("sa_id >=", value, "saId");
            return (Criteria) this;
        }

        public Criteria andSaIdLessThan(Integer value) {
            addCriterion("sa_id <", value, "saId");
            return (Criteria) this;
        }

        public Criteria andSaIdLessThanOrEqualTo(Integer value) {
            addCriterion("sa_id <=", value, "saId");
            return (Criteria) this;
        }

        public Criteria andSaIdIn(List<Integer> values) {
            addCriterion("sa_id in", values, "saId");
            return (Criteria) this;
        }

        public Criteria andSaIdNotIn(List<Integer> values) {
            addCriterion("sa_id not in", values, "saId");
            return (Criteria) this;
        }

        public Criteria andSaIdBetween(Integer value1, Integer value2) {
            addCriterion("sa_id between", value1, value2, "saId");
            return (Criteria) this;
        }

        public Criteria andSaIdNotBetween(Integer value1, Integer value2) {
            addCriterion("sa_id not between", value1, value2, "saId");
            return (Criteria) this;
        }

        public Criteria andSaNameIsNull() {
            addCriterion("sa_name is null");
            return (Criteria) this;
        }

        public Criteria andSaNameIsNotNull() {
            addCriterion("sa_name is not null");
            return (Criteria) this;
        }

        public Criteria andSaNameEqualTo(String value) {
            addCriterion("sa_name =", value, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameNotEqualTo(String value) {
            addCriterion("sa_name <>", value, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameGreaterThan(String value) {
            addCriterion("sa_name >", value, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameGreaterThanOrEqualTo(String value) {
            addCriterion("sa_name >=", value, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameLessThan(String value) {
            addCriterion("sa_name <", value, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameLessThanOrEqualTo(String value) {
            addCriterion("sa_name <=", value, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameLike(String value) {
            addCriterion("sa_name like", value, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameNotLike(String value) {
            addCriterion("sa_name not like", value, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameIn(List<String> values) {
            addCriterion("sa_name in", values, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameNotIn(List<String> values) {
            addCriterion("sa_name not in", values, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameBetween(String value1, String value2) {
            addCriterion("sa_name between", value1, value2, "saName");
            return (Criteria) this;
        }

        public Criteria andSaNameNotBetween(String value1, String value2) {
            addCriterion("sa_name not between", value1, value2, "saName");
            return (Criteria) this;
        }

        public Criteria andSaPasswordIsNull() {
            addCriterion("sa_password is null");
            return (Criteria) this;
        }

        public Criteria andSaPasswordIsNotNull() {
            addCriterion("sa_password is not null");
            return (Criteria) this;
        }

        public Criteria andSaPasswordEqualTo(String value) {
            addCriterion("sa_password =", value, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordNotEqualTo(String value) {
            addCriterion("sa_password <>", value, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordGreaterThan(String value) {
            addCriterion("sa_password >", value, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("sa_password >=", value, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordLessThan(String value) {
            addCriterion("sa_password <", value, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordLessThanOrEqualTo(String value) {
            addCriterion("sa_password <=", value, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordLike(String value) {
            addCriterion("sa_password like", value, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordNotLike(String value) {
            addCriterion("sa_password not like", value, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordIn(List<String> values) {
            addCriterion("sa_password in", values, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordNotIn(List<String> values) {
            addCriterion("sa_password not in", values, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordBetween(String value1, String value2) {
            addCriterion("sa_password between", value1, value2, "saPassword");
            return (Criteria) this;
        }

        public Criteria andSaPasswordNotBetween(String value1, String value2) {
            addCriterion("sa_password not between", value1, value2, "saPassword");
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