/*
 * RootSendigDatasetVariableLinks.h
 *
 * 
 */

#ifndef _RootSendigDatasetVariableLinks_H_
#define _RootSendigDatasetVariableLinks_H_


#include <string>
#include "RootSendigDatasetVariableRef.h"
#include "SendigDatasetVariableRefVersion.h"
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

class RootSendigDatasetVariableLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	RootSendigDatasetVariableLinks();
	RootSendigDatasetVariableLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootSendigDatasetVariableLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSendigDatasetVariableRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootSendigDatasetVariableRef  self);
	/*! \brief Get 
	 */
	std::list<SendigDatasetVariableRefVersion> getVersions();

	/*! \brief Set 
	 */
	void setVersions(std::list <SendigDatasetVariableRefVersion> versions);

private:
	RootSendigDatasetVariableRef self;
	std::list <SendigDatasetVariableRefVersion>versions;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootSendigDatasetVariableLinks_H_ */
