/*
 * RootSdtmigDatasetVariableLinks.h
 *
 * 
 */

#ifndef _RootSdtmigDatasetVariableLinks_H_
#define _RootSdtmigDatasetVariableLinks_H_


#include <string>
#include "RootSdtmigDatasetVariableRef.h"
#include "SdtmigDatasetVariableRefVersion.h"
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

class RootSdtmigDatasetVariableLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	RootSdtmigDatasetVariableLinks();
	RootSdtmigDatasetVariableLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootSdtmigDatasetVariableLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSdtmigDatasetVariableRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootSdtmigDatasetVariableRef  self);
	/*! \brief Get 
	 */
	std::list<SdtmigDatasetVariableRefVersion> getVersions();

	/*! \brief Set 
	 */
	void setVersions(std::list <SdtmigDatasetVariableRefVersion> versions);

private:
	RootSdtmigDatasetVariableRef self;
	std::list <SdtmigDatasetVariableRefVersion>versions;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootSdtmigDatasetVariableLinks_H_ */
