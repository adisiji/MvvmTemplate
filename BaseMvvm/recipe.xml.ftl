<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/BaseView.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/ui/base/BaseView.kt" />

    <instantiate from="src/app_package/BaseActivity.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/ui/base/BaseActivity.kt" />
    
    <instantiate from="src/app_package/BaseViewModel.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/ui/base/BaseViewModel.kt" />

</recipe>