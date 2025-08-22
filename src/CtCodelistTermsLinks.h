/*
 * CtCodelistTermsLinks.h
 *
 * 
 */

#ifndef _CtCodelistTermsLinks_H_
#define _CtCodelistTermsLinks_H_


#include <string>
#include "CtCodelistTermsRef.h"
#include "CtPackageRef.h"
#include "CtTermRefElement.h"
#include "RootCtCodelistRef.h"
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

class CtCodelistTermsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CtCodelistTermsLinks();
	CtCodelistTermsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtCodelistTermsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtCodelistTermsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtCodelistTermsRef  self);
	/*! \brief Get 
	 */
	CtPackageRef getParentPackage();

	/*! \brief Set 
	 */
	void setParentPackage(CtPackageRef  parentPackage);
	/*! \brief Get 
	 */
	RootCtCodelistRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootCtCodelistRef  rootItem);
	/*! \brief Get 
	 */
	CtCodelistTermsRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CtCodelistTermsRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<CtTermRefElement> getTerms();

	/*! \brief Set 
	 */
	void setTerms(std::list <CtTermRefElement> terms);

private:
	CtCodelistTermsRef self;
	CtPackageRef parentPackage;
	RootCtCodelistRef rootItem;
	CtCodelistTermsRef priorVersion;
	std::list <CtTermRefElement>terms;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtCodelistTermsLinks_H_ */
