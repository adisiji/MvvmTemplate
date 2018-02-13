package ${packageName}.${packName}

import javax.inject.Inject
import ${applicationPackage}.util.rx.SchedulerProvider
import ${applicationPackage}.data.DataManager
import ${applicationPackage}.ui.base.BaseViewModel

class ${viewModelName} @Inject constructor(
  private val dataManager: DataManager, 
  private val schedulerProvider: SchedulerProvider) : BaseViewModel() {

  
}
