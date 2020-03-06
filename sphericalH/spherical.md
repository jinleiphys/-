**球谐函数的渐进形式**

最近在研究量子散射在高能下的半经典形式。因为入射能较高的关系，在做分波展开的时候，通常情况下*lmax*的取值会很大，那么对于这种情况，相对于完全求解该分波下的球谐函数，在一些文献中（大多数半经典文献中），比如J. Phys. G : Nucl. Phys. 4 1573（1978），采用了球谐函数的渐进形式。

球谐函数被定义为

<a href="https://www.codecogs.com/eqnedit.php?latex=Y_{l&space;m}(\theta,&space;\phi)=(-1)^{m}\left[\frac{(2&space;l&plus;1)}{4&space;\pi}&space;\frac{(l-m)&space;!}{(l&plus;m)&space;!}\right]^{1&space;/&space;2}&space;P_{l}^{m}(\cos&space;\theta)&space;\mathrm{e}^{\mathrm{i}&space;m&space;\phi}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?Y_{l&space;m}(\theta,&space;\phi)=(-1)^{m}\left[\frac{(2&space;l&plus;1)}{4&space;\pi}&space;\frac{(l-m)&space;!}{(l&plus;m)&space;!}\right]^{1&space;/&space;2}&space;P_{l}^{m}(\cos&space;\theta)&space;\mathrm{e}^{\mathrm{i}&space;m&space;\phi}" title="Y_{l m}(\theta, \phi)=(-1)^{m}\left[\frac{(2 l+1)}{4 \pi} \frac{(l-m) !}{(l+m) !}\right]^{1 / 2} P_{l}^{m}(\cos \theta) \mathrm{e}^{\mathrm{i} m \phi}" /></a>

其中伴随勒让德多项式有以下渐进形式

<a href="https://www.codecogs.com/eqnedit.php?latex=P_{l}^{m}(\cos&space;\theta)=\frac{\Gamma(l&plus;m&plus;1)}{\Gamma\left(l&plus;\frac{3}{2}\right)}\left(\frac{1}{2}&space;\pi&space;\sin&space;\theta\right)^{-1}&space;\cos&space;\left[\left(l&plus;\frac{1}{2}\right)&space;\theta-\frac{\pi}{4}&plus;\frac{m&space;\pi}{2}\right]" target="_blank"><img src="https://latex.codecogs.com/gif.latex?P_{l}^{m}(\cos&space;\theta)=\frac{\Gamma(l&plus;m&plus;1)}{\Gamma\left(l&plus;\frac{3}{2}\right)}\left(\frac{1}{2}&space;\pi&space;\sin&space;\theta\right)^{-1}&space;\cos&space;\left[\left(l&plus;\frac{1}{2}\right)&space;\theta-\frac{\pi}{4}&plus;\frac{m&space;\pi}{2}\right]" title="P_{l}^{m}(\cos \theta)=\frac{\Gamma(l+m+1)}{\Gamma\left(l+\frac{3}{2}\right)}\left(\frac{1}{2} \pi \sin \theta\right)^{-1} \cos \left[\left(l+\frac{1}{2}\right) \theta-\frac{\pi}{4}+\frac{m \pi}{2}\right]" /></a>

同时使用Gamma函数的关系式

<a href="https://www.codecogs.com/eqnedit.php?latex=\Gamma(n&plus;1)=1&space;\cdot&space;2&space;\cdot&space;3&space;\dots(n-1)&space;n=n&space;!" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\Gamma(n&plus;1)=1&space;\cdot&space;2&space;\cdot&space;3&space;\dots(n-1)&space;n=n&space;!" title="\Gamma(n+1)=1 \cdot 2 \cdot 3 \dots(n-1) n=n !" /></a>

我们得到球谐函数的渐进形式

<a href="https://www.codecogs.com/eqnedit.php?latex=Y_{lm}(\theta,&space;\phi)=B_{l&space;m}&space;\frac{&space;\cos&space;\left[\left(l&plus;\frac{1}{2}\right)&space;\theta-\frac{\pi}{4}&plus;\frac{m&space;\pi}{2}\right]}{\sqrt{\sin&space;\theta}}e^{im\phi}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?Y_{lm}(\theta,&space;\phi)=B_{l&space;m}&space;\frac{&space;\cos&space;\left[\left(l&plus;\frac{1}{2}\right)&space;\theta-\frac{\pi}{4}&plus;\frac{m&space;\pi}{2}\right]}{\sqrt{\sin&space;\theta}}e^{im\phi}" title="Y_{lm}(\theta, \phi)=B_{l m} \frac{ \cos \left[\left(l+\frac{1}{2}\right) \theta-\frac{\pi}{4}+\frac{m \pi}{2}\right]}{\sqrt{\sin \theta}}e^{im\phi}" /></a>


其中，

<a href="https://www.codecogs.com/eqnedit.php?latex=B_{l&space;m}=\frac{1}{\pi}(-1)^{m}\left[\frac{2&space;l&plus;1}{2}&space;\frac{\Gamma(l-m&plus;1)&space;\Gamma(l&plus;m&plus;1)}{(\Gamma(l&plus;3&space;/&space;2))^{2}}\right]^{1&space;/&space;2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?B_{l&space;m}=\frac{1}{\pi}(-1)^{m}\left[\frac{2&space;l&plus;1}{2}&space;\frac{\Gamma(l-m&plus;1)&space;\Gamma(l&plus;m&plus;1)}{(\Gamma(l&plus;3&space;/&space;2))^{2}}\right]^{1&space;/&space;2}" title="B_{l m}=\frac{1}{\pi}(-1)^{m}\left[\frac{2 l+1}{2} \frac{\Gamma(l-m+1) \Gamma(l+m+1)}{(\Gamma(l+3 / 2))^{2}}\right]^{1 / 2}" /></a>



现在我们使用Gamma函数的渐进形式，

<a href="https://www.codecogs.com/eqnedit.php?latex=\begin{aligned}&space;&\ln&space;\Gamma(z)&space;\sim\left(z-\frac{1}{2}\right)&space;\ln&space;z-z&plus;\frac{1}{2}&space;\ln&space;(2&space;\pi)&plus;\frac{1}{12&space;z}-\frac{1}{360&space;z^{3}}\\&space;&&plus;\frac{1}{1260&space;z^{5}}-\frac{1}{1680&space;z^{7}}&plus;\dots&space;\quad(z&space;\rightarrow&space;\infty&space;\text&space;{&space;in&space;}&space;|&space;\text&space;{&space;arg&space;}&space;z&space;|<\pi)&space;\end{aligned}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\begin{aligned}&space;&\ln&space;\Gamma(z)&space;\sim\left(z-\frac{1}{2}\right)&space;\ln&space;z-z&plus;\frac{1}{2}&space;\ln&space;(2&space;\pi)&plus;\frac{1}{12&space;z}-\frac{1}{360&space;z^{3}}\\&space;&&plus;\frac{1}{1260&space;z^{5}}-\frac{1}{1680&space;z^{7}}&plus;\dots&space;\quad(z&space;\rightarrow&space;\infty&space;\text&space;{&space;in&space;}&space;|&space;\text&space;{&space;arg&space;}&space;z&space;|<\pi)&space;\end{aligned}" title="\begin{aligned} &\ln \Gamma(z) \sim\left(z-\frac{1}{2}\right) \ln z-z+\frac{1}{2} \ln (2 \pi)+\frac{1}{12 z}-\frac{1}{360 z^{3}}\\ &+\frac{1}{1260 z^{5}}-\frac{1}{1680 z^{7}}+\dots \quad(z \rightarrow \infty \text { in } | \text { arg } z |<\pi) \end{aligned}" /></a>


对上式进行展开， 当我们假设*l>>m*,并且忽略较小项时，我们得到

<a href="https://www.codecogs.com/eqnedit.php?latex=&space;\begin{aligned}&space;&&space;\ln&space;\left[\frac{\pi}{\left(-)^{m}\right.}&space;\times&space;B_{l&space;m}\right]=\ln&space;\left(\frac{\left(l&plus;\frac{1}{2}\right)&space;\Gamma(l-m&plus;1)&space;\Gamma(l&plus;m&plus;1)}{\Gamma\left(l&plus;\frac{3}{2}\right)^{2}}\right)^{\frac{1}{2}}&space;\\&space;=&&space;\frac{1}{2}\left[\ln&space;\left(l&plus;\frac{1}{2}\right)&plus;\ln&space;(\Gamma(l-m&plus;1))&plus;\ln&space;(\Gamma(l&plus;m&plus;1))-2&space;\ln&space;\left(\Gamma\left(l&plus;\frac{3}{2}\right)\right)\right]&space;\\&space;=&\frac{1}{2}\left[\ln&space;\left(l&plus;\frac{1}{2}\right)\right.&plus;\left(l-m&plus;\frac{1}{2}\right)&space;\ln&space;(l-m&plus;1)&plus;\left(l&plus;m&plus;\frac{1}{2}\right)&space;\ln&space;(l&plus;m&plus;1)&space;\\&space;&\left.-2(l&plus;1)&space;\ln&space;\left(l&plus;\frac{3}{2}\right)&plus;1\right]\\&space;=&\frac{1}{2}\left[\ln&space;\left(1-\frac{1}{l&plus;\frac{3}{2}}\right)&plus;\left(l&plus;\frac{1}{2}\right)&space;\ln&space;\left(1-\frac{m&plus;\frac{1}{2}}{l&plus;\frac{3}{2}}\right)&plus;m&space;\ln&space;\left(1&plus;\frac{2&space;m}{l-m&plus;1}\right)\right.\\&space;&\left.&plus;\left(l&plus;\frac{1}{2}\right)&space;\ln&space;\left(1&plus;\frac{m-\frac{1}{2}}{l&plus;\frac{3}{2}}\right)&plus;1\right]&space;\end{aligned}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?&space;\begin{aligned}&space;&&space;\ln&space;\left[\frac{\pi}{\left(-)^{m}\right.}&space;\times&space;B_{l&space;m}\right]=\ln&space;\left(\frac{\left(l&plus;\frac{1}{2}\right)&space;\Gamma(l-m&plus;1)&space;\Gamma(l&plus;m&plus;1)}{\Gamma\left(l&plus;\frac{3}{2}\right)^{2}}\right)^{\frac{1}{2}}&space;\\&space;=&&space;\frac{1}{2}\left[\ln&space;\left(l&plus;\frac{1}{2}\right)&plus;\ln&space;(\Gamma(l-m&plus;1))&plus;\ln&space;(\Gamma(l&plus;m&plus;1))-2&space;\ln&space;\left(\Gamma\left(l&plus;\frac{3}{2}\right)\right)\right]&space;\\&space;=&\frac{1}{2}\left[\ln&space;\left(l&plus;\frac{1}{2}\right)\right.&plus;\left(l-m&plus;\frac{1}{2}\right)&space;\ln&space;(l-m&plus;1)&plus;\left(l&plus;m&plus;\frac{1}{2}\right)&space;\ln&space;(l&plus;m&plus;1)&space;\\&space;&\left.-2(l&plus;1)&space;\ln&space;\left(l&plus;\frac{3}{2}\right)&plus;1\right]\\&space;=&\frac{1}{2}\left[\ln&space;\left(1-\frac{1}{l&plus;\frac{3}{2}}\right)&plus;\left(l&plus;\frac{1}{2}\right)&space;\ln&space;\left(1-\frac{m&plus;\frac{1}{2}}{l&plus;\frac{3}{2}}\right)&plus;m&space;\ln&space;\left(1&plus;\frac{2&space;m}{l-m&plus;1}\right)\right.\\&space;&\left.&plus;\left(l&plus;\frac{1}{2}\right)&space;\ln&space;\left(1&plus;\frac{m-\frac{1}{2}}{l&plus;\frac{3}{2}}\right)&plus;1\right]&space;\end{aligned}" title=" \begin{aligned} & \ln \left[\frac{\pi}{\left(-)^{m}\right.} \times B_{l m}\right]=\ln \left(\frac{\left(l+\frac{1}{2}\right) \Gamma(l-m+1) \Gamma(l+m+1)}{\Gamma\left(l+\frac{3}{2}\right)^{2}}\right)^{\frac{1}{2}} \\ =& \frac{1}{2}\left[\ln \left(l+\frac{1}{2}\right)+\ln (\Gamma(l-m+1))+\ln (\Gamma(l+m+1))-2 \ln \left(\Gamma\left(l+\frac{3}{2}\right)\right)\right] \\ =&\frac{1}{2}\left[\ln \left(l+\frac{1}{2}\right)\right.+\left(l-m+\frac{1}{2}\right) \ln (l-m+1)+\left(l+m+\frac{1}{2}\right) \ln (l+m+1) \\ &\left.-2(l+1) \ln \left(l+\frac{3}{2}\right)+1\right]\\ =&\frac{1}{2}\left[\ln \left(1-\frac{1}{l+\frac{3}{2}}\right)+\left(l+\frac{1}{2}\right) \ln \left(1-\frac{m+\frac{1}{2}}{l+\frac{3}{2}}\right)+m \ln \left(1+\frac{2 m}{l-m+1}\right)\right.\\ &\left.+\left(l+\frac{1}{2}\right) \ln \left(1+\frac{m-\frac{1}{2}}{l+\frac{3}{2}}\right)+1\right] \end{aligned}" /></a>


当我们假设*l*很大并且*l>>m*时，我们对对数进行多项式展开，并保留*1/l* 项，我们得到

<a href="https://www.codecogs.com/eqnedit.php?latex=\begin{aligned}&space;\ln&space;\left(\frac{\pi}{(-)^{m}}&space;B_{l&space;m}\right)=&&space;\frac{1}{2}\left(-\frac{1}{l&plus;\frac{3}{2}}-\left(l&plus;\frac{1}{2}\right)\left(\frac{m&plus;\frac{1}{2}}{l&plus;\frac{3}{2}}\right)&plus;m&space;\cdot&space;\frac{2&space;m}{l-m&plus;1}\right.\\&space;&\left.&plus;\left(l&plus;\frac{1}{2}\right)\left(\frac{m-\frac{1}{2}}{l&plus;\frac{3}{2}}\right)&plus;1\right)&space;\\&space;=&&space;\frac{m^{2}}{l-m&plus;1}&space;\end{aligned}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\begin{aligned}&space;\ln&space;\left(\frac{\pi}{(-)^{m}}&space;B_{l&space;m}\right)=&&space;\frac{1}{2}\left(-\frac{1}{l&plus;\frac{3}{2}}-\left(l&plus;\frac{1}{2}\right)\left(\frac{m&plus;\frac{1}{2}}{l&plus;\frac{3}{2}}\right)&plus;m&space;\cdot&space;\frac{2&space;m}{l-m&plus;1}\right.\\&space;&\left.&plus;\left(l&plus;\frac{1}{2}\right)\left(\frac{m-\frac{1}{2}}{l&plus;\frac{3}{2}}\right)&plus;1\right)&space;\\&space;=&&space;\frac{m^{2}}{l-m&plus;1}&space;\end{aligned}" title="\begin{aligned} \ln \left(\frac{\pi}{(-)^{m}} B_{l m}\right)=& \frac{1}{2}\left(-\frac{1}{l+\frac{3}{2}}-\left(l+\frac{1}{2}\right)\left(\frac{m+\frac{1}{2}}{l+\frac{3}{2}}\right)+m \cdot \frac{2 m}{l-m+1}\right.\\ &\left.+\left(l+\frac{1}{2}\right)\left(\frac{m-\frac{1}{2}}{l+\frac{3}{2}}\right)+1\right) \\ =& \frac{m^{2}}{l-m+1} \end{aligned}" /></a>

因此我们得到

<a href="https://www.codecogs.com/eqnedit.php?latex=B_{l&space;m}=\exp&space;\left(\frac{m^{2}}{l-m&plus;1}\right)&space;\cdot&space;\frac{(-)^{m}}{\pi}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?B_{l&space;m}=\exp&space;\left(\frac{m^{2}}{l-m&plus;1}\right)&space;\cdot&space;\frac{(-)^{m}}{\pi}" title="B_{l m}=\exp \left(\frac{m^{2}}{l-m+1}\right) \cdot \frac{(-)^{m}}{\pi}" /></a>

对于高能散射来说，我们假设有效的部分原来于*m*值比较小的项并且忽略*m*值比较大的， 因此我们忽略掉上式的指数项。 最终我们得到球谐函数的渐进表达式为

<a href="https://www.codecogs.com/eqnedit.php?latex=Y_{l&space;m}(\theta,&space;\phi)=\frac{(-)^m}{\pi}\frac{\cos&space;\left[\left(l&plus;\frac{1}{2}\right)&space;\theta-\frac{\pi}{4}&plus;\frac{m&space;\pi}{2}\right]}{\sqrt{\sin&space;\theta}}&space;e^{i&space;m&space;\phi}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?Y_{l&space;m}(\theta,&space;\phi)=\frac{(-)^m}{\pi}\frac{\cos&space;\left[\left(l&plus;\frac{1}{2}\right)&space;\theta-\frac{\pi}{4}&plus;\frac{m&space;\pi}{2}\right]}{\sqrt{\sin&space;\theta}}&space;e^{i&space;m&space;\phi}" title="Y_{l m}(\theta, \phi)=\frac{(-)^m}{\pi}\frac{\cos \left[\left(l+\frac{1}{2}\right) \theta-\frac{\pi}{4}+\frac{m \pi}{2}\right]}{\sqrt{\sin \theta}} e^{i m \phi}" /></a>



然而，在进行数值计算对比球谐函数的精确解和渐进形式时，我们发现球谐函数的渐进根本不等于其精确解， 比如我们选取l=100, m=1, theta=30, phi=0时，进行求解

- 精确解为：-0.45018217559285850
- 渐进形式为：0.45015815807855308

可以发现其中4位有效数字相同，但是结算结果的正负正好相反， 而且在进一步的计算中我们发现m>1的情况下，即使l>1000,渐进形式也只能保证1位有效数字相同， 比如l=1000, m=2, theta=10, phi=0时

 - 精确解为：0.37489043596257088
 - 渐进形式为：0.38193109381036577


 奇怪的是，这个渐进形式被广泛的应用到半经典散射理论中，那么半经典散射理论的可靠性到底有多少呢？？？？Any hints？？？？
