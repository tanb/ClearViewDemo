ClearViewDemo
=============

単に座標系として利用する目的でタッチイベントをハンドルしないようにしたView.
userIntaractionEnabledをきるとsubviewsにイベントが伝播しなくなるのでこの方法をとる。

デモではwindowの上にscrollViewとclearViewが乗っかっている。
clearView上をタッチしてもイベントは貫通してscrollViewを動かせる。

http://www.youtube.com/watch?v=XttGJgt9R4E