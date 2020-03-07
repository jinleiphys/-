**使用免费资源进行faceswap换脸**

前段时间想学习一下机器学习的相关知识，但是面对枯燥乏味的数学公式，真的很难跟实际应用联系起来。想起来前段时间有个比较火的深度学习的项目faceswap,即一种人脸替换深度学习项目。由于项目本身是开源，并且能够在github下载到，只需在github上搜索deepfakes/faceswap即可。

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
 ![alt text](https://github.com/jinleiphys/notes/blob/master/faceswap/google_drive.jpeg?raw=true)

 - 复制运行以下代码。根据提示输入相关的信息，建立ssh代理通道

> !pip install git+https://github.com/demotomohiro/remocolab.git    
> import remocolab    
> remocolab.setupSSHD()

![alt text](https://github.com/jinleiphys/notes/blob/master/faceswap/colab.jpeg?raw=true)

 - 根据输出的提示即可使用ssh连接到服务器

 - 因为colab分配的服务器，会不定时的刷新重启，因此没有办法在colab本地云盘储存东西，需要通过Google drive挂载，这样其实更加方便使用。 ssh连接到服务器后需要获得超级管理员身份才能进去Google drive的目录，超级管理员密码在上一步有显示，只需输入*su*, 然后进入Google drive目录*/content/drive/My\ Drive/*


接下来就是使用faceswap进行换脸的实际操作部分了：

 - git clone faceswap的源代码

  >git clone https://github.com/deepfakes/faceswap.git

 - 挂载显卡驱动
  >export LD_PRELOAD=/usr/lib64-nvidia/libnvidia-ml.so

 - 安装faceswap
  >python3 setup.py
  > - 选择N,N,Y,Y

 - 准备好需要换脸的两个人的照片+视频。 运行下面代码可以从视频中提取人脸
 > python3 faceswap.py extract -i source/yifei/videoplayback.mp4 -o source/yifei/face -D s3fd -A fan -M extended -nm hist -min 20 -l 0.4 -een 1 -sz 256 -si 0 -L INFO
   >- -i 后面接的是要提取的视频，
   >- -o后面是提取的脸存储的目录
   >- 这步骤会生产一个videoplayback_alignments.fsa，这个文件储存的是对应视频中人脸的位置，在最后给视频换脸的时候程序需要这个文件来找到视频中需要换的人脸。

 - 在提取人脸的时候，程序可能会把不是人脸的东西识别成人脸，因此需要手动将这些删除，faceswap提供了以下的工具，可以将相似的图片排列起来，然后把不是想要换的人脸删除即可
 >python3 tools.py sort -i source/yifei/face -s face -t -1.0 -fp rename -g hist -b 5 -be GPU -lf sort_log.json -L INFO
   >- -i后面是要排列图片所在的文件夹

 - 在删除不必要的图片后，要运行以下代码更新.fsa文件
 >python3 tools.py alignments -j remove-faces -a source/yifei/videoplayback_alignments.fsa -fc source/yifei/face -o console -een 1 -sz 256 -L INFO
  > - -a 后面接的是fsa文件，
  > - -fc后面接的是人脸文件夹

 - 在准备好需要换脸的两个文件夹后，就可以进行模型训练了， 运行以下代码

 >python3 faceswap.py train -A source/yifei/face -ala source/yifei/videoplayback_alignments.fsa -B faces/ofelia -m model/yifei -t Villain -bs 32 -it 1000000 -s 100 -ss 25000  -tia source/yifei/face -tib faces/ofelia -to output/yifei -ps 50 -L INFO
  > - 值得注意的是，这个命令是要把B的脸换到A上的训练
  > - -A 后面接的是A脸的文件夹
  > - -B 后面接的是B脸的文件夹
  > - -m 后面接的是训练的模型储存的位置
  > - -t 后面接的是训练的方法，官网上给出了好几种模型训练方法，从基础的Lightweight到最佳的Villain， 根据我在Tesla P100显卡的实际测试来看，这几个模型的训练时间相差不大，因此可以选择最佳的Villain
  > - -tia 后面接的是想要查看换脸效果的A脸所在的文件夹
  > - -tib 后面接的是想要查看换脸效果的B脸所在的文件夹
  > - -to 后面接的是实时输出换脸效果的照片的文件夹，基本上每隔5分钟，会产生一个对比照片。
  > - -bs 即Batch Size， 每次训练读取脸的数目
  > - -it 要进行训练的最大次数
  > - -s 每XX次训练储存一次模型
  > - -ss 每XX次训练备份一次模型

 - 当实时输出换脸效果的照片基本满意的时候，就可以对整个视频进行换脸了
 >python3 faceswap.py convert -i source/yifei/videoplayback.mp4 -o output -al source/yifei/videoplayback_alignments.fsa -m model/yifei -c color-transfer -M extended -sc none -w ffmpeg -osc 100 -l 0.4 -j 0 -k -L INFO
>  - -i 后面接的是换脸的视频
>  - -o 后面接的是换脸结果存放的位置
>  - -al 后面接的是.fsa文件，即存储的视频中需要换的脸在视频中位置
>  - -m 后面接的是换脸模型的位置



  最后给出一个实际换脸的例子，之前有人说我家宝宝和刘亦菲长的有点像，于是就把我家宝宝的脸换到了刘亦菲的脸上，效果如下
