<?xml version="1.0"?>
<recipe>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <instantiate from="res/layout/activity_blank.xml.ftl"
                to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <instantiate from="src/app_package/BlankView.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/${packName}/${viewName}.kt" />

   	<open file="${escapeXmlAttribute(srcOut)}/${packName}/${viewName}.kt" />

    <instantiate from="src/app_package/BlankViewModel.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/${packName}/${viewModelName}.kt" />

    <instantiate from="src/app_package/BlankModule.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/${packName}/${activityName}Module.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/${packName}/${activityName}.kt" />

    <instantiate from="src/app_package/BlankActivity.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/${packName}/${activityName}.kt" />
</recipe>