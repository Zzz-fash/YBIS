package cn.kgc.ybis.pojo;

import java.util.ArrayList;
import java.util.List;

public class DownloadExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DownloadExample() {
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

        public Criteria andDownIdIsNull() {
            addCriterion("down_id is null");
            return (Criteria) this;
        }

        public Criteria andDownIdIsNotNull() {
            addCriterion("down_id is not null");
            return (Criteria) this;
        }

        public Criteria andDownIdEqualTo(Long value) {
            addCriterion("down_id =", value, "downId");
            return (Criteria) this;
        }

        public Criteria andDownIdNotEqualTo(Long value) {
            addCriterion("down_id <>", value, "downId");
            return (Criteria) this;
        }

        public Criteria andDownIdGreaterThan(Long value) {
            addCriterion("down_id >", value, "downId");
            return (Criteria) this;
        }

        public Criteria andDownIdGreaterThanOrEqualTo(Long value) {
            addCriterion("down_id >=", value, "downId");
            return (Criteria) this;
        }

        public Criteria andDownIdLessThan(Long value) {
            addCriterion("down_id <", value, "downId");
            return (Criteria) this;
        }

        public Criteria andDownIdLessThanOrEqualTo(Long value) {
            addCriterion("down_id <=", value, "downId");
            return (Criteria) this;
        }

        public Criteria andDownIdIn(List<Long> values) {
            addCriterion("down_id in", values, "downId");
            return (Criteria) this;
        }

        public Criteria andDownIdNotIn(List<Long> values) {
            addCriterion("down_id not in", values, "downId");
            return (Criteria) this;
        }

        public Criteria andDownIdBetween(Long value1, Long value2) {
            addCriterion("down_id between", value1, value2, "downId");
            return (Criteria) this;
        }

        public Criteria andDownIdNotBetween(Long value1, Long value2) {
            addCriterion("down_id not between", value1, value2, "downId");
            return (Criteria) this;
        }

        public Criteria andTTitleIsNull() {
            addCriterion("t_title is null");
            return (Criteria) this;
        }

        public Criteria andTTitleIsNotNull() {
            addCriterion("t_title is not null");
            return (Criteria) this;
        }

        public Criteria andTTitleEqualTo(String value) {
            addCriterion("t_title =", value, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleNotEqualTo(String value) {
            addCriterion("t_title <>", value, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleGreaterThan(String value) {
            addCriterion("t_title >", value, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleGreaterThanOrEqualTo(String value) {
            addCriterion("t_title >=", value, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleLessThan(String value) {
            addCriterion("t_title <", value, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleLessThanOrEqualTo(String value) {
            addCriterion("t_title <=", value, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleLike(String value) {
            addCriterion("t_title like", value, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleNotLike(String value) {
            addCriterion("t_title not like", value, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleIn(List<String> values) {
            addCriterion("t_title in", values, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleNotIn(List<String> values) {
            addCriterion("t_title not in", values, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleBetween(String value1, String value2) {
            addCriterion("t_title between", value1, value2, "tTitle");
            return (Criteria) this;
        }

        public Criteria andTTitleNotBetween(String value1, String value2) {
            addCriterion("t_title not between", value1, value2, "tTitle");
            return (Criteria) this;
        }

        public Criteria andDownPathIsNull() {
            addCriterion("down_path is null");
            return (Criteria) this;
        }

        public Criteria andDownPathIsNotNull() {
            addCriterion("down_path is not null");
            return (Criteria) this;
        }

        public Criteria andDownPathEqualTo(String value) {
            addCriterion("down_path =", value, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathNotEqualTo(String value) {
            addCriterion("down_path <>", value, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathGreaterThan(String value) {
            addCriterion("down_path >", value, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathGreaterThanOrEqualTo(String value) {
            addCriterion("down_path >=", value, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathLessThan(String value) {
            addCriterion("down_path <", value, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathLessThanOrEqualTo(String value) {
            addCriterion("down_path <=", value, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathLike(String value) {
            addCriterion("down_path like", value, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathNotLike(String value) {
            addCriterion("down_path not like", value, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathIn(List<String> values) {
            addCriterion("down_path in", values, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathNotIn(List<String> values) {
            addCriterion("down_path not in", values, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathBetween(String value1, String value2) {
            addCriterion("down_path between", value1, value2, "downPath");
            return (Criteria) this;
        }

        public Criteria andDownPathNotBetween(String value1, String value2) {
            addCriterion("down_path not between", value1, value2, "downPath");
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