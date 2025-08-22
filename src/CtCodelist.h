/*
 * CtCodelist.h
 *
 * 
 */

#ifndef _CtCodelist_H_
#define _CtCodelist_H_


#include <string>
#include "CtCodelistLinks.h"
#include "CtPackageTerm.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class CtCodelist : public Object {
public:
	/*! \brief Constructor.
	 */
	CtCodelist();
	CtCodelist(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtCodelist();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getConceptId();

	/*! \brief Set 
	 */
	void setConceptId(std::string  conceptId);
	/*! \brief Get 
	 */
	std::string getExtensible();

	/*! \brief Set 
	 */
	void setExtensible(std::string  extensible);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getSubmissionValue();

	/*! \brief Set 
	 */
	void setSubmissionValue(std::string  submissionValue);
	/*! \brief Get 
	 */
	std::string getDefinition();

	/*! \brief Set 
	 */
	void setDefinition(std::string  definition);
	/*! \brief Get 
	 */
	std::string getPreferredTerm();

	/*! \brief Set 
	 */
	void setPreferredTerm(std::string  preferredTerm);
	/*! \brief Get 
	 */
	std::list<std::string> getSynonyms();

	/*! \brief Set 
	 */
	void setSynonyms(std::list <std::string> synonyms);
	/*! \brief Get 
	 */
	CtCodelistLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CtCodelistLinks  _links);
	/*! \brief Get 
	 */
	std::list<CtPackageTerm> getTerms();

	/*! \brief Set 
	 */
	void setTerms(std::list <CtPackageTerm> terms);

private:
	std::string conceptId;
	std::string extensible;
	std::string name;
	std::string submissionValue;
	std::string definition;
	std::string preferredTerm;
	std::list <std::string>synonyms;
	CtCodelistLinks _links;
	std::list <CtPackageTerm>terms;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtCodelist_H_ */
