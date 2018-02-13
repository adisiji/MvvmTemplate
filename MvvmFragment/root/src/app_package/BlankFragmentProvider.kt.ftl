package ${packageName}.${packName}

import dagger.Module
import dagger.android.ContributesAndroidInjector

@Module
abstract class ${fragmentName}Provider {

  @ContributesAndroidInjector(modules = [${fragmentName}Module::class])
  abstract fun provide${fragmentName}() : ${fragmentName}
}