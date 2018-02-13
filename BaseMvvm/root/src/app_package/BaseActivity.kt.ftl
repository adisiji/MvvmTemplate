package ${packageName}.ui.base

import android.arch.lifecycle.ViewModelProvider
import android.arch.lifecycle.ViewModelProviders
import android.databinding.DataBindingUtil
import android.databinding.ViewDataBinding
import android.os.Bundle
import android.support.annotation.LayoutRes
import android.support.v4.app.Fragment
import android.support.v7.app.AppCompatActivity
import dagger.android.DispatchingAndroidInjector
import dagger.android.support.HasSupportFragmentInjector
import javax.inject.Inject

abstract class BaseActivity<T : ViewDataBinding, V: BaseViewModel> : AppCompatActivity(), HasSupportFragmentInjector {

  @Inject
  lateinit var androidInjector: DispatchingAndroidInjector<Fragment>

  protected lateinit var binding : T

  protected lateinit var viewModel : V

  @Inject
  lateinit var viewModelFactory: ViewModelProvider.Factory

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)

    performBinding()

  }

  private fun performBinding() {
    binding = DataBindingUtil.setContentView(this, getLayoutActivity())

    viewModel = ViewModelProviders.of(this, viewModelFactory).get(getViewModelClass())

    binding.setVariable(getBindingVariable(), viewModel)

    binding.executePendingBindings()
  }

  override fun supportFragmentInjector() = androidInjector

  /**
   * Get Layout File
   *
   * @return R.layout file
   */
  @LayoutRes abstract fun getLayoutActivity() : Int

  /**
   * Override for set binding variable
   *
   * @return variable id
   */
  abstract fun getBindingVariable(): Int

  /**
   * Get View Model Class that extends BaseViewModel
   *
   * @return ViewModel Class
   */
  abstract fun getViewModelClass(): Class<V>
}