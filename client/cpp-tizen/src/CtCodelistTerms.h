/*
 * CtCodelistTerms.h
 *
 * 
 */

#ifndef _CtCodelistTerms_H_
#define _CtCodelistTerms_H_


#include <string>
#include "CtCodelistTermsLinks.h"
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

class CtCodelistTerms : public Object {
public:
	/*! \brief Constructor.
	 */
	CtCodelistTerms();
	CtCodelistTerms(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtCodelistTerms();

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
	CtCodelistTermsLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CtCodelistTermsLinks  _links);

private:
	std::string conceptId;
	std::string extensible;
	std::string name;
	std::string submissionValue;
	std::string definition;
	std::string preferredTerm;
	std::list <std::string>synonyms;
	CtCodelistTermsLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtCodelistTerms_H_ */
