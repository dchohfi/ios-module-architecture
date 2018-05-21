TEMPLATE_PREFIX="___FILEBASENAME___"

create_module_templates()
{
	MODULE_NAME=$1
	TEMPLATE_CONFIGURATION=$2
	PREFIX_NAME=$3

	rm -rf "./${MODULE_NAME}.xctemplate/${TEMPLATE_CONFIGURATION}"
	mkdir -p "./${MODULE_NAME}.xctemplate/${TEMPLATE_CONFIGURATION}"
	cp -r "../Example/ios-module-architecture/Templates/${PREFIX_NAME}/" "./${MODULE_NAME}.xctemplate/${TEMPLATE_CONFIGURATION}"

	for FILE in `find "${MODULE_NAME}.xctemplate" -type f -name '*.swift'`; do
		echo "Update ${FILE}"
		sed -i '' -e "s/${PREFIX_NAME}/___VARIABLE_productName___/g" "${FILE}" || echo "${FILE} is Not a Regular File"
	done

	SED="mv {} \$(echo {} | sed \"s/${PREFIX_NAME}/${TEMPLATE_PREFIX}/\")"
	find "./${MODULE_NAME}.xctemplate/${TEMPLATE_CONFIGURATION}" -depth -name "*${PREFIX_NAME}*" -execdir sh -c "${SED}" \;

	LIBRARY_PATH="${HOME}/Library/Developer/Xcode/Templates/"
	MODULE_PATH="${LIBRARY_PATH}/${MODULE_NAME}.xctemplate"
	
	rm -rf "${MODULE_PATH}"
	mkdir -p "${MODULE_PATH}"
	cp -R "${MODULE_NAME}.xctemplate" "${LIBRARY_PATH}"
}

create_module_templates "Module" "Default" "ViewLessModule_"
create_module_templates "Module" "ownsView" "Module_"
create_module_templates "Module" "watchOS" "WatchModule_"

