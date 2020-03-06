**经典散射理论**

提到散射理论， 通常会指向三种不同形式的散射，即经典散射，半经典散射以及量子散射理论。这里我们先从经典散射理论说起。

我们考虑一个简单的二维平面内的散射问题。
在质心系下，假设入射粒子流以相同的速度*v_in*入射。不同的入射粒子通常具有不同的碰撞参数，因此有不同的散射角度*\theta*。定义*dN*为单位时间内通过角度区间*\theta*到*\theta+d\theta*范围内的粒子数目。这个数目本身并不能很好的描述散射过程，因为它与入射粒子流的密度成正比。 因此我们采用它们之间的比值

<a href="https://www.codecogs.com/eqnedit.php?latex=d&space;\sigma=d&space;N&space;/&space;n" target="_blank"><img src="https://latex.codecogs.com/gif.latex?d&space;\sigma=d&space;N&space;/&space;n" title="d \sigma=d N / n" /></a>

其中*n*是单位时间内通过单位面积的粒子数。 可以发现，这个比值具有面积的量纲，通常把它称为**截面**



![alt text](https://github.com/jinleiphys/notes/blob/master/classical_scattering/fig.png?raw=true)

接下来我们讨论一下入射粒子的轨迹, 如上图所示，在中心力场下的散射轨迹以入射粒子到散射中心最短距离（*OA*）为中心线对称的。两条轨迹渐近线与中心对称线的夹角（*\phi_0*）是相同的。因此散射角*\theta*等于

<a href="https://www.codecogs.com/eqnedit.php?latex=\theta=|\pi-2&space;\phi_0|" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\theta=|\pi-2&space;\phi_0|" title="\theta=|\pi-2 \phi_0|" /></a>


另外，入射粒子的散射问题，可以看成是在中心力场*U(r)*下的散射，在质心系下总能量为

<a href="https://www.codecogs.com/eqnedit.php?latex=E=\frac{1}{2}\left(m&space;\dot{r}^{2}&plus;r^{2}&space;\dot{\phi}^{2}\right)&plus;U(r)=\frac{1}{2}&space;m&space;\dot{r}^{2}&plus;\frac{1}{2}&space;P_{L}^{2}&space;/&space;m&space;r^{2}&plus;U(r)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?E=\frac{1}{2}\left(m&space;\dot{r}^{2}&plus;r^{2}&space;\dot{\phi}^{2}\right)&plus;U(r)=\frac{1}{2}&space;m&space;\dot{r}^{2}&plus;\frac{1}{2}&space;P_{L}^{2}&space;/&space;m&space;r^{2}&plus;U(r)" title="E=\frac{1}{2}\left(m \dot{r}^{2}+r^{2} \dot{\phi}^{2}\right)+U(r)=\frac{1}{2} m \dot{r}^{2}+\frac{1}{2} P_{L}^{2} / m r^{2}+U(r)" /></a>

其中角动量*P_L*被定义为

<a href="https://www.codecogs.com/eqnedit.php?latex=P_{L}=m&space;r^{2}&space;\dot{\phi}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P_{L}=m&space;r^{2}&space;\dot{\phi}" title="P_{L}=m r^{2} \dot{\phi}" /></a>



因此，我们得到入射粒子的速度为

<a href="https://www.codecogs.com/eqnedit.php?latex=\dot{r}=\frac{d&space;r}{d&space;t}=\sqrt{\frac{2}{m}[E-U(r)]-\frac{P_{L}^{2}}{m^{2}&space;r^{2}}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\dot{r}=\frac{d&space;r}{d&space;t}=\sqrt{\frac{2}{m}[E-U(r)]-\frac{P_{L}^{2}}{m^{2}&space;r^{2}}}" title="\dot{r}=\frac{d r}{d t}=\sqrt{\frac{2}{m}[E-U(r)]-\frac{P_{L}^{2}}{m^{2} r^{2}}}" /></a>

通过角动量的定义，我们可以得到

<a href="https://www.codecogs.com/eqnedit.php?latex=d&space;\phi=P_{L}&space;d&space;t&space;/&space;m&space;r^{2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?d&space;\phi=P_{L}&space;d&space;t&space;/&space;m&space;r^{2}" title="d \phi=P_{L} d t / m r^{2}" /></a>

接下来我们把入射粒子速度定义中的*dt*代入上式中，可以得到

<a href="https://www.codecogs.com/eqnedit.php?latex=\phi=\int_{r_{min}}^{\infty}&space;\frac{P_L&space;d&space;r&space;/&space;r^{2}}{\sqrt{2&space;m(E-U(r))-P_{L}^{2}&space;/&space;r^{2}}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\phi=\int_{r_{min}}^{\infty}&space;\frac{P_L&space;d&space;r&space;/&space;r^{2}}{\sqrt{2&space;m(E-U(r))-P_{L}^{2}&space;/&space;r^{2}}}" title="\phi=\int_{r_{min}}^{\infty} \frac{P_L d r / r^{2}}{\sqrt{2 m(E-U(r))-P_{L}^{2} / r^{2}}}" /></a>


其中*r_{min}*为入射粒子与靶核的最短距离，也是上式根号内表达式为*0*时的*r*值。为了方便后续的讨论，我们使用入射粒子速度*v_in*和碰撞参数*p*为变量， 因此，入射粒子能量与角动量可以表述为

<a href="https://www.codecogs.com/eqnedit.php?latex=E=\frac{1}{2}&space;m&space;v_{i&space;n}^{2},&space;\quad&space;P_{L}=m&space;p&space;v_{i&space;n}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?E=\frac{1}{2}&space;m&space;v_{i&space;n}^{2},&space;\quad&space;P_{L}=m&space;p&space;v_{i&space;n}" title="E=\frac{1}{2} m v_{i n}^{2}, \quad P_{L}=m p v_{i n}" /></a>

因此*\phi*角的公式可以改写为

<a href="https://www.codecogs.com/eqnedit.php?latex=\phi=\int_{r_{min}}^{\infty}&space;\frac{\left(p^{2}&space;/&space;r^{2}\right)&space;d&space;r}{\sqrt{1-\left(p^{2}&space;/&space;r^{2}\right)-\left(2&space;U&space;/&space;m&space;v_{i&space;n}^{2}\right)}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\phi=\int_{r_{min}}^{\infty}&space;\frac{\left(p^{2}&space;/&space;r^{2}\right)&space;d&space;r}{\sqrt{1-\left(p^{2}&space;/&space;r^{2}\right)-\left(2&space;U&space;/&space;m&space;v_{i&space;n}^{2}\right)}}" title="\phi=\int_{r_{min}}^{\infty} \frac{\left(p^{2} / r^{2}\right) d r}{\sqrt{1-\left(p^{2} / r^{2}\right)-\left(2 U / m v_{i n}^{2}\right)}}" /></a>

通过*\phi*角与*\theta*角的关系式，我们得到碰撞参数与散射角的关系式。 通过上述表达式可以发现，一个*\phi*角只对应一个碰撞参数。 因此当碰撞参数处于*p(\theta)*和*p(\theta)+dp(\theta)*之间时，散射角度对应的区间为*\theta*到*\theta+d\theta*。通过该散射角区域的粒子数通过半径为*p*和*p+dp*之间环形的面积乘以粒子流密度*n*求得，

<a href="https://www.codecogs.com/eqnedit.php?latex=d&space;N=2&space;\pi&space;p&space;d&space;p&space;\cdot&space;n" target="_blank"><img src="https://latex.codecogs.com/gif.latex?d&space;N=2&space;\pi&space;p&space;d&space;p&space;\cdot&space;n" title="d N=2 \pi p d p \cdot n" /></a>

因此我们可以得到散射截面为

<a href="https://www.codecogs.com/eqnedit.php?latex=d&space;\sigma=2&space;\pi&space;p&space;d&space;p" target="_blank"><img src="https://latex.codecogs.com/gif.latex?d&space;\sigma=2&space;\pi&space;p&space;d&space;p" title="d \sigma=2 \pi p d p" /></a>


为了找到散射截面与角度的关系， 上式可以改写成

<a href="https://www.codecogs.com/eqnedit.php?latex=d&space;\sigma=2&space;\pi&space;p(\theta)|d&space;p(\theta)&space;/&space;d&space;\theta|&space;d&space;\theta" target="_blank"><img src="https://latex.codecogs.com/gif.latex?d&space;\sigma=2&space;\pi&space;p(\theta)|d&space;p(\theta)&space;/&space;d&space;\theta|&space;d&space;\theta" title="d \sigma=2 \pi p(\theta)|d p(\theta) / d \theta| d \theta" /></a>

在三维空间下，我们可以对坐标进行球坐标展开，并假设散射对于*phi*角是各向同性的，我们通常用立体角代替上式的*\theta*角，

<a href="https://www.codecogs.com/eqnedit.php?latex=d&space;O=\frac{p(\theta)}{\sin&space;\theta}\left|\frac{d&space;p}{d&space;\theta}\right|&space;d&space;\Omega" target="_blank"><img src="https://latex.codecogs.com/gif.latex?d&space;\sigma=\frac{p(\theta)}{\sin&space;\theta}\left|\frac{d&space;p}{d&space;\theta}\right|&space;d&space;\Omega" title="d \sigma=\frac{p(\theta)}{\sin \theta}\left|\frac{d p}{d \theta}\right| d \Omega" /></a>


另外对于库伦散射，我们只需要把上面讨论的相互作用势*U*设为库伦势即可。

**经典散射轨迹**

我们假设散射发生在二维平面内， 那么经典散射轨迹可以通过求解下式获得

<a href="https://www.codecogs.com/eqnedit.php?latex=\begin{aligned}&space;&v_{x}=\frac{d&space;x}{d&space;t}\\&space;&\mu&space;\dot{v}_{x}=-\frac{\partial&space;U(x)}{\partial&space;x}\\&space;&v_{y}=\frac{d&space;y}{d&space;t}&space;\\&space;&\mu&space;\dot{v}_{y}=-\frac{\partial&space;U(y)}{\partial&space;y}&space;\end{aligned}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\begin{aligned}&space;&v_{x}=\frac{d&space;x}{d&space;t}\\&space;&\mu&space;\dot{v}_{x}=-\frac{\partial&space;U(x)}{\partial&space;x}\\&space;&v_{y}=\frac{d&space;y}{d&space;t}&space;\\&space;&\mu&space;\dot{v}_{y}=-\frac{\partial&space;U(y)}{\partial&space;y}&space;\end{aligned}" title="\begin{aligned} &v_{x}=\frac{d x}{d t}\\ &\mu \dot{v}_{x}=-\frac{\partial U(x)}{\partial x}\\ &v_{y}=\frac{d y}{d t} \\ &\mu \dot{v}_{y}=-\frac{\partial U(y)}{\partial y} \end{aligned}" /></a>
