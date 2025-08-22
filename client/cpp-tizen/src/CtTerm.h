/*
 * CtTerm.h
 *
 * 
 */

#ifndef _CtTerm_H_
#define _CtTerm_H_


#include <string>
#include "CtTermLinks.h"
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

class CtTerm : public Object {
public:
	/*! \brief Constructor.
	 */
	CtTerm();
	CtTerm(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtTerm();

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
	CtTermLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CtTermLinks  _links);

private:
	std::string conceptId;
	std::string submissionValue;
	std::string definition;
	std::string preferredTerm;
	std::list <std::string>synonyms;
	CtTermLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtTerm_H_ */
