package lakshmigowda.session.dao;

// Generated Nov 11, 2014 5:17:49 AM by Hibernate Tools 3.4.0.CR1

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import lakshmigowda.session.entities.Survey;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Home object for domain model class Survey.
 * 
 * @see lakshmigowda.session.entities.Survey
 * @author Lakshmi
 */
@Stateless
public class SurveyHome {

	private static final Log log = LogFactory.getLog(SurveyHome.class);

	@PersistenceContext(unitName = "surveys")
	private EntityManager entityManager;

	public void persist(Survey transientInstance) {
		log.debug("persisting Survey instance");
		try {
			entityManager.persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void remove(Survey persistentInstance) {
		log.debug("removing Survey instance");
		try {
			entityManager.remove(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	public Survey merge(Survey detachedInstance) {
		log.debug("merging Survey instance");
		try {
			Survey result = entityManager.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Survey findById(String id) {
		log.debug("getting Survey instance with id: " + id);
		try {
			Survey instance = entityManager.find(Survey.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Survey> getAllSurveys() {
		try {
			CriteriaBuilder cb = entityManager.getCriteriaBuilder();
			CriteriaQuery<Survey> cq = cb.createQuery(Survey.class);
			Root<Survey> rootEntry = cq.from(Survey.class);
			CriteriaQuery<Survey> all = cq.select(rootEntry);
			TypedQuery<Survey> allQuery = entityManager.createQuery(all);
			return allQuery.getResultList();
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
