This post is writen in Chinese since around globe, people have diverse demands for media servers and they should evolve to meet everyone's needs.
# Servarrs
- 字幕支持
  - 导入/移动/重命名时经常无法与视频文件匹配，即使文件名完全一致；
  - 文件名不一致时基本无法完成匹配；
  - 缺乏内置的字幕管理。
    
- Searching
  - 解析格式单一且无法自定义，动漫类Release经常因为无法解析选择不grab。
  - 解析依赖英文剧集名称，但在grab时是使用多种语言搜索的。
  - DecisionMaker仍有一些选项不能被Custom Format自定义，比如seeder数量，分辨率，indexer。
    
- Monitoring
  - Import前后由于release name和file name不同，经常导致Custom Format score下降导致相似的发布被多次grab

- Radarr的Jellyfin/Emby集成似乎不能工作。
 
# Jellyfin
-  多backdrop image怎么用？
-  一些[extras](https://jellyfin.org/docs/general/server/media/shows/#extras-folders)文件夹内的文件仍会被metadata provider抓取到错误的metadata。
