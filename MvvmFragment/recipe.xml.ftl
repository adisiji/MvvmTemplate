<?xml version="1.0"?>
<recipe>

    <instantiate from="res/layout/fragment_blank.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <instantiate from="src/app_package/BlankViewModel.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${packName}/${viewModelName}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/${packName}/${viewModelName}.kt" />

    <instantiate from="src/app_package/BlankFragment.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${packName}/${fragmentName}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/${packName}/${fragmentName}.kt" />

    <instantiate from="src/app_package/BlankModule.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/${packName}/${fragmentName}Module.kt" />

    <instantiate from="src/app_package/BlankFragmentProvider.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/${packName}/${fragmentName}Provider.kt" />

</recipe>