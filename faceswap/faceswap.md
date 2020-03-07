**使用免费资源进行faceswap换脸**

前段时间想学习一下机器学习的相关知识，但是面对枯燥乏味的数学公式，真的很难跟实际应用练习起来。想起来前段时间有个比较火的深度学习的项目faceswap,即一种人脸替换深度学习项目。由于项目本身是开源，并且能够在github下载到，只需在github上搜索deepfakes/faceswap即可。

最开始的时候在自己手上的macbook pro上做模型训练，发现速度真的跟蜗牛爬差不多。因此本着白嫖的心态，在网上搜索免费的GPU资源。发现Google旗下的colab可以获得免费强大的Tesla K80单片，如果每个月交9.9美元的话就可以获得更强大的Tesla P100。

![alt text](https://github.com/jinleiphys/notes/blob/master/faceswap/gpu.jpeg?raw=true)

但是问题是colab支持的是jupyter nootbooks格式，如果想在colab上做模型训练必须要把faceswap代码转换成jupyter nootbooks吗？难道不可以使用ssh直接连接colab吗？继续搜索发现以下解决方案：

 - 首先借助Ngrok，它是一个连接公共网络和本地网络的一个代理软件，需要在它的网站上注册一个账号，并且下载运行它的软件，让这个网站可以通过特定的识别码找到你的本地电脑。当然它也是免费的
![alt text](https://github.com/jinleiphys/notes/blob/master/faceswap/ngrok.jpeg?raw=true)

 - 建立一个新的colab notebook， 点开Edit->Notebook settings,选中GPU和python3
![alt text](https://github.com/jinleiphys/notes/blob/master/faceswap/notebook_setting.jpeg?raw=true)

 - 复制运行以下代码显示分配到的GPU信息，如下所示我分配到了16G显存的P100
> gpu_info = !nvidia-smi   
 gpu_info = '\n'.join(gpu_info)   
 if gpu_info.find('failed') >= 0:    
   print('Select the Runtime → "Change runtime type" menu to enable a GPU accelerator, ')   
   print('and then re-execute this cell.')  
 else:  
   print(gpu_info)   

 ![alt text](https://github.com/jinleiphys/notes/blob/master/faceswap/gpu_info.jpeg?raw=true)

 - 挂载Google drive
 

 - 复制运行以下代码。根据提示输入相关的信息，建立ssh代理通道

> !pip install git+https://github.com/demotomohiro/remocolab.git    
> import remocolab    
> remocolab.setupSSHD()

![alt text](https://github.com/jinleiphys/notes/blob/master/faceswap/colab.jpeg?raw=true)

 - 根据输出的提示即可使用ssh连接到所需要的服务器
