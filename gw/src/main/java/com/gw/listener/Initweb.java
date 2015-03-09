package com.gw.listener;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.URL;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.util.ResourceUtils;
import org.springframework.util.SystemPropertyUtils;
import org.springframework.web.util.WebUtils;

public class Initweb implements ServletContextListener{
public static String imgPath="";
private String loctionOfinit="initwebConfigLocation";
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("contextDestroyed init success");
	}

	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("start init success");
		ServletContext servletContext =arg0.getServletContext();
		// Only perform custom log4j initialization in case of a config file.
		String location = servletContext.getInitParameter(loctionOfinit);
		if (location != null) {
			// Perform actual log4j initialization; else rely on log4j's default initialization.
			try {
				// Resolve system property placeholders before potentially
				// resolving a real path.
				location = SystemPropertyUtils.resolvePlaceholders(location);

				// Leave a URL (e.g. "classpath:" or "file:") as-is.
				if (!ResourceUtils.isUrl(location)) {
					// Consider a plain file path as relative to the web
					// application root directory.
					location = WebUtils.getRealPath(servletContext, location);
				}
				
				String resolvedLocation = SystemPropertyUtils.resolvePlaceholders(location);
				URL url = ResourceUtils.getURL(resolvedLocation);
				
				InputStream in=null;
				try {
					in = url.openStream();
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				Properties properties=new Properties();
				try {
					properties.load(in);
					String a=properties.getProperty("imgPath").trim();
					System.out.println(a);
					imgPath=a;
				} catch (Exception e) {
					// TODO: handle exception
				}
				//String path = request.getSession().getServletContext().getRealPath("uploadimg");  
				String path	=this.getClass().getResource("").getPath();  
				//查找“WEB-INF”在该字符串的位置  
			      int num = path.indexOf("WEB-INF");  
			    //截取即可  
			      path=path.substring(0, num+"WEB-INF".length()-7)+"uploadimg";
			      
				copy(imgPath,path);
//				// Write log message to server log.
//				//servletContext.log("Initializing initweb from [" + location + "]");
//
//				// Check whether refresh interval was specified.
//				String intervalString = servletContext.getInitParameter(REFRESH_INTERVAL_PARAM);
//				if (intervalString != null) {
//					// Initialize with refresh interval, i.e. with log4j's watchdog thread,
//					// checking the file in the background.
//					try {
//						long refreshInterval = Long.parseLong(intervalString);
//						Log4jConfigurer.initLogging(location, refreshInterval);
//					}
//					catch (NumberFormatException ex) {
//						throw new IllegalArgumentException("Invalid 'log4jRefreshInterval' parameter: " + ex.getMessage());
//					}
//				}
//				else {
//					// Initialize without refresh check, i.e. without log4j's watchdog thread.
//					Log4jConfigurer.initLogging(location);
//				}
			}
			catch (FileNotFoundException ex) {
				throw new IllegalArgumentException("Invalid 'log4jConfigLocation' parameter: " + ex.getMessage());
			}
		}
		
	}
	
	   private void copy(String originDirectory,String targetDirectory){
           File origindirectory = new File(originDirectory);   //源路径File实例
           File targetdirectory = new File(targetDirectory);  //目标路径File实例
           if(!origindirectory.exists()){  
        	   origindirectory.mkdirs();  
           }  
       	if(!targetdirectory.exists()){  
       		targetdirectory.mkdirs();  
		}  
           if(!origindirectory.isDirectory() || !targetdirectory.isDirectory()){    //判断是不是正确的路径
                       System.out.println("不是正确的目录！");
                       return;
           }
           File[] fileList = origindirectory.listFiles();  //目录中的所有文件
           for(File file : fileList){
                     if(!file.isFile())   //判断是不是文件
                     continue;
                     System.out.println(file.getName());
                     try{
                              FileInputStream fin = new FileInputStream(file);
                              BufferedInputStream bin = new BufferedInputStream(fin);
                              PrintStream pout = new PrintStream(targetdirectory.getAbsolutePath()+"/"+file.getName());
                              BufferedOutputStream bout = new BufferedOutputStream(pout);
                              int total =bin.available();  //文件的总大小
                              int percent = total/100;    //文件总量的百分之一
                              int count;
                              while((count = bin.available())!= 0){
                                         int c = bin.read();  //从输入流中读一个字节
                                         bout.write((char)c);  //将字节（字符）写到输出流中     

                                         if(((total-count) % percent) == 0){
                                                  double d = (double)(total-count) / total; //必须强制转换成double
                                                  System.out.println(Math.round(d*100)+"%"); //输出百分比进度
                                          }
                              }
                              bout.close();
                              pout.close();
                              bin.close();
                              fin.close();
                     }catch(IOException e){
                              e.printStackTrace();
                     }
          }
         System.out.println("End");
}
}
