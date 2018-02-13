package ${packageName}.${packName}

import android.os.Bundle
import ${applicationPackage}.R
import ${applicationPackage}.BR
import ${applicationPackage}.databinding.Activity${Name}Binding
import ${applicationPackage}.ui.base.BaseActivity

class ${activityName} : BaseActivity<Activity${Name}Binding, ${viewModelName}>(), ${viewName} {

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)

  }

  override fun getLayoutActivity() = R.layout.${layoutName}

  override fun getBindingVariable() = BR.viewModel

  override fun getViewModelClass(): Class<${viewModelName}> = ${viewModelName}::class.java
}