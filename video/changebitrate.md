刚才看抖音视频的时候发现，原来上传到抖音的视频不清晰的原因是比特率太低，解决方案是增加视频的比特率。现在以macos为例，查找视频比特率的命令行为

>afinfo filename |grep "bit rate"


更改视频比特率的代码为

>ffmpeg -i input.mp4 -b:v 1M -b:a 192k output.avi

b:v指出要转换的比特率
