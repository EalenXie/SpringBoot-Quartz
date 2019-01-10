SpringBoot整合Quartz作为调度中心使用完整实例
=======================================

##### 本例是一个将quartz集成为调度器中心的典型示例,主要用于定时执行一些Job(通常是一些自定义程序或者可执行的jar包)，基于Spring Boot 2.0.1,Quartz 2.2.3。

#### 1. 基本的实现效果: 定时执行一些可执行的Job
    
运行效果如图 : 
    
![avatar](https://images2018.cnblogs.com/blog/994599/201806/994599-20180604172924530-190555264.png)
    
看到这里，说明Quartz集群已经搭建成功了。如果部署该项目应用到多个服务器上面，Job会在多个服务器上面执行，但同一个Job只会在某个服务器上面执行，即如果服务器A在某个时间执行了某个Job,则其他服务器如B,C,D在此时间均不会执行此Job。即不会造成该Job被多次执行。
         
![avatar](https://images2018.cnblogs.com/blog/994599/201806/994599-20180604173534786-1611962860.png)
  
这里可以看到数据库中的Job已经在Quartz注册并初始化成功了，Scheduler也在工作了，Job也已经按照cron在定时执行。
    
![avatar](https://images2018.cnblogs.com/blog/994599/201806/994599-20180604173727992-1988871504.png)
    
本例中，如果job包含一个jar的路径，并且该jar包是一个可执行的JOB，则可以看到该JOB的运行情况 : 
    
![avatar](https://img2018.cnblogs.com/blog/994599/201812/994599-20181214111924171-613541575.png)
    
看到JOB已经执行完成了 : 
    
![avatar](https://img2018.cnblogs.com/blog/994599/201812/994599-20181214112047742-1459267679.png)
    
此时如果在数据库中手动修改某个Job的执行cron，并不会马上生效，则可以调用上面写到的业务方法，/refresh/all，则可刷新所有的Job，或/refresh/{id},刷新某个Job。
    
#### 2. 在你启动该应用之前: 
    
   1. 请自行修改数据库配置: /application.yml  

   2. 请准备Quartz的元数据表 : quartz_innodb.sql
        
   3. 请为这个例子的Job配置准备一个表 : job_entity.sql
    
   4. 如果想要查看真实的jar包运行，请准备一个真实的jar包路径,并且该jar包是可执行的(有主程序运行清单)，并设置该JOB的状态为OPEN。

#### 3. 原创不易，感谢支持 :  

本例博客说明链接 : https://www.cnblogs.com/ealenxie/p/9134602.html              
    



