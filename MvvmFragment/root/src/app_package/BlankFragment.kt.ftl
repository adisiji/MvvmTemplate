package ${packageName}.${packName}

import android.os.Bundle
import ${applicationPackage}.R
import ${applicationPackage}.BR
import ${applicationPackage}.databinding.Fragment${Name}Binding
import ${applicationPackage}.ui.base.BaseFragment

class ${fragmentName} : BaseFragment<Fragment${Name}Binding, ${viewModelName}>() {

  override fun onActivityCreated(savedInstanceState: Bundle?) {
    super.onActivityCreated(savedInstanceState)
    
  }

  override fun getLayoutActivity() = R.layout.${layoutName}

  override fun getBindingVariable() = BR.viewModel

  override fun getViewModelClass(): Class<${viewModelName}> = ${viewModelName}::class.java
}
