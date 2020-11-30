package cn.kgc.ybis.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ReportExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ReportExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andRIdIsNull() {
            addCriterion("r_id is null");
            return (Criteria) this;
        }

        public Criteria andRIdIsNotNull() {
            addCriterion("r_id is not null");
            return (Criteria) this;
        }

        public Criteria andRIdEqualTo(Long value) {
            addCriterion("r_id =", value, "rId");
            return (Criteria) this;
        }

        public Criteria andRIdNotEqualTo(Long value) {
            addCriterion("r_id <>", value, "rId");
            return (Criteria) this;
        }

        public Criteria andRIdGreaterThan(Long value) {
            addCriterion("r_id >", value, "rId");
            return (Criteria) this;
        }

        public Criteria andRIdGreaterThanOrEqualTo(Long value) {
            addCriterion("r_id >=", value, "rId");
            return (Criteria) this;
        }

        public Criteria andRIdLessThan(Long value) {
            addCriterion("r_id <", value, "rId");
            return (Criteria) this;
        }

        public Criteria andRIdLessThanOrEqualTo(Long value) {
            addCriterion("r_id <=", value, "rId");
            return (Criteria) this;
        }

        public Criteria andRIdIn(List<Long> values) {
            addCriterion("r_id in", values, "rId");
            return (Criteria) this;
        }

        public Criteria andRIdNotIn(List<Long> values) {
            addCriterion("r_id not in", values, "rId");
            return (Criteria) this;
        }

        public Criteria andRIdBetween(Long value1, Long value2) {
            addCriterion("r_id between", value1, value2, "rId");
            return (Criteria) this;
        }

        public Criteria andRIdNotBetween(Long value1, Long value2) {
            addCriterion("r_id not between", value1, value2, "rId");
            return (Criteria) this;
        }

        public Criteria andTTypeIsNull() {
            addCriterion("t_type is null");
            return (Criteria) this;
        }

        public Criteria andTTypeIsNotNull() {
            addCriterion("t_type is not null");
            return (Criteria) this;
        }

        public Criteria andTTypeEqualTo(Long value) {
            addCriterion("t_type =", value, "tType");
            return (Criteria) this;
        }

        public Criteria andTTypeNotEqualTo(Long value) {
            addCriterion("t_type <>", value, "tType");
            return (Criteria) this;
        }

        public Criteria andTTypeGreaterThan(Long value) {
            addCriterion("t_type >", value, "tType");
            return (Criteria) this;
        }

        public Criteria andTTypeGreaterThanOrEqualTo(Long value) {
            addCriterion("t_type >=", value, "tType");
            return (Criteria) this;
        }

        public Criteria andTTypeLessThan(Long value) {
            addCriterion("t_type <", value, "tType");
            return (Criteria) this;
        }

        public Criteria andTTypeLessThanOrEqualTo(Long value) {
            addCriterion("t_type <=", value, "tType");
            return (Criteria) this;
        }

        public Criteria andTTypeIn(List<Long> values) {
            addCriterion("t_type in", values, "tType");
            return (Criteria) this;
        }

        public Criteria andTTypeNotIn(List<Long> values) {
            addCriterion("t_type not in", values, "tType");
            return (Criteria) this;
        }

        public Criteria andTTypeBetween(Long value1, Long value2) {
            addCriterion("t_type between", value1, value2, "tType");
            return (Criteria) this;
        }

        public Criteria andTTypeNotBetween(Long value1, Long value2) {
            addCriterion("t_type not between", value1, value2, "tType");
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

        public Criteria andUIdEqualTo(Long value) {
            addCriterion("u_id =", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdNotEqualTo(Long value) {
            addCriterion("u_id <>", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdGreaterThan(Long value) {
            addCriterion("u_id >", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdGreaterThanOrEqualTo(Long value) {
            addCriterion("u_id >=", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdLessThan(Long value) {
            addCriterion("u_id <", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdLessThanOrEqualTo(Long value) {
            addCriterion("u_id <=", value, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdIn(List<Long> values) {
            addCriterion("u_id in", values, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdNotIn(List<Long> values) {
            addCriterion("u_id not in", values, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdBetween(Long value1, Long value2) {
            addCriterion("u_id between", value1, value2, "uId");
            return (Criteria) this;
        }

        public Criteria andUIdNotBetween(Long value1, Long value2) {
            addCriterion("u_id not between", value1, value2, "uId");
            return (Criteria) this;
        }

        public Criteria andRScoreIsNull() {
            addCriterion("r_score is null");
            return (Criteria) this;
        }

        public Criteria andRScoreIsNotNull() {
            addCriterion("r_score is not null");
            return (Criteria) this;
        }

        public Criteria andRScoreEqualTo(Integer value) {
            addCriterion("r_score =", value, "rScore");
            return (Criteria) this;
        }

        public Criteria andRScoreNotEqualTo(Integer value) {
            addCriterion("r_score <>", value, "rScore");
            return (Criteria) this;
        }

        public Criteria andRScoreGreaterThan(Integer value) {
            addCriterion("r_score >", value, "rScore");
            return (Criteria) this;
        }

        public Criteria andRScoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("r_score >=", value, "rScore");
            return (Criteria) this;
        }

        public Criteria andRScoreLessThan(Integer value) {
            addCriterion("r_score <", value, "rScore");
            return (Criteria) this;
        }

        public Criteria andRScoreLessThanOrEqualTo(Integer value) {
            addCriterion("r_score <=", value, "rScore");
            return (Criteria) this;
        }

        public Criteria andRScoreIn(List<Integer> values) {
            addCriterion("r_score in", values, "rScore");
            return (Criteria) this;
        }

        public Criteria andRScoreNotIn(List<Integer> values) {
            addCriterion("r_score not in", values, "rScore");
            return (Criteria) this;
        }

        public Criteria andRScoreBetween(Integer value1, Integer value2) {
            addCriterion("r_score between", value1, value2, "rScore");
            return (Criteria) this;
        }

        public Criteria andRScoreNotBetween(Integer value1, Integer value2) {
            addCriterion("r_score not between", value1, value2, "rScore");
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

        public Criteria andTIdEqualTo(Long value) {
            addCriterion("t_id =", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdNotEqualTo(Long value) {
            addCriterion("t_id <>", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdGreaterThan(Long value) {
            addCriterion("t_id >", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdGreaterThanOrEqualTo(Long value) {
            addCriterion("t_id >=", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdLessThan(Long value) {
            addCriterion("t_id <", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdLessThanOrEqualTo(Long value) {
            addCriterion("t_id <=", value, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdIn(List<Long> values) {
            addCriterion("t_id in", values, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdNotIn(List<Long> values) {
            addCriterion("t_id not in", values, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdBetween(Long value1, Long value2) {
            addCriterion("t_id between", value1, value2, "tId");
            return (Criteria) this;
        }

        public Criteria andTIdNotBetween(Long value1, Long value2) {
            addCriterion("t_id not between", value1, value2, "tId");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeIsNull() {
            addCriterion("t_creation_time is null");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeIsNotNull() {
            addCriterion("t_creation_time is not null");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeEqualTo(Date value) {
            addCriterionForJDBCDate("t_creation_time =", value, "tCreationTime");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("t_creation_time <>", value, "tCreationTime");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("t_creation_time >", value, "tCreationTime");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("t_creation_time >=", value, "tCreationTime");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeLessThan(Date value) {
            addCriterionForJDBCDate("t_creation_time <", value, "tCreationTime");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("t_creation_time <=", value, "tCreationTime");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeIn(List<Date> values) {
            addCriterionForJDBCDate("t_creation_time in", values, "tCreationTime");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("t_creation_time not in", values, "tCreationTime");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("t_creation_time between", value1, value2, "tCreationTime");
            return (Criteria) this;
        }

        public Criteria andTCreationTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("t_creation_time not between", value1, value2, "tCreationTime");
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

        public Criteria andTRankIsNull() {
            addCriterion("t_rank is null");
            return (Criteria) this;
        }

        public Criteria andTRankIsNotNull() {
            addCriterion("t_rank is not null");
            return (Criteria) this;
        }

        public Criteria andTRankEqualTo(Integer value) {
            addCriterion("t_rank =", value, "tRank");
            return (Criteria) this;
        }

        public Criteria andTRankNotEqualTo(Integer value) {
            addCriterion("t_rank <>", value, "tRank");
            return (Criteria) this;
        }

        public Criteria andTRankGreaterThan(Integer value) {
            addCriterion("t_rank >", value, "tRank");
            return (Criteria) this;
        }

        public Criteria andTRankGreaterThanOrEqualTo(Integer value) {
            addCriterion("t_rank >=", value, "tRank");
            return (Criteria) this;
        }

        public Criteria andTRankLessThan(Integer value) {
            addCriterion("t_rank <", value, "tRank");
            return (Criteria) this;
        }

        public Criteria andTRankLessThanOrEqualTo(Integer value) {
            addCriterion("t_rank <=", value, "tRank");
            return (Criteria) this;
        }

        public Criteria andTRankIn(List<Integer> values) {
            addCriterion("t_rank in", values, "tRank");
            return (Criteria) this;
        }

        public Criteria andTRankNotIn(List<Integer> values) {
            addCriterion("t_rank not in", values, "tRank");
            return (Criteria) this;
        }

        public Criteria andTRankBetween(Integer value1, Integer value2) {
            addCriterion("t_rank between", value1, value2, "tRank");
            return (Criteria) this;
        }

        public Criteria andTRankNotBetween(Integer value1, Integer value2) {
            addCriterion("t_rank not between", value1, value2, "tRank");
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