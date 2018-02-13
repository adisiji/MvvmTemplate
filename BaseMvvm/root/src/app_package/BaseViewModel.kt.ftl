package ${packageName}.ui.base

import android.arch.lifecycle.ViewModel
import io.reactivex.disposables.CompositeDisposable

abstract class BaseViewModel : ViewModel() {

  protected val mCompositeDisposable by lazy {
    CompositeDisposable()
  }

  override fun onCleared() {
    super.onCleared()
    mCompositeDisposable.clear()
  }
}