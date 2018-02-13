package ${packageName}.${packName}

import android.arch.lifecycle.ViewModel
import dagger.Binds
import dagger.Module
import dagger.multibindings.IntoMap
import ${applicationPackage}.di.ViewModelKey

@Module
internal abstract class ${fragmentName}Module {

  @Binds
  @IntoMap
  @ViewModelKey(${viewModelName}::class)
  abstract fun bind${viewModelName}(viewModel: ${viewModelName}): ViewModel

}