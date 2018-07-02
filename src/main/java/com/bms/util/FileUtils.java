package com.bms.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

import org.springframework.util.StringUtils;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.ObjectMetadata;
import com.aliyun.oss.model.PutObjectResult;

public class FileUtils {

    /**
     *  将流转换为字符
     * @param input 流
     * @return
     */
    public static String  inputStreamToString(InputStream input){
        try {
            if(null != input){
                ByteArrayOutputStream outStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[1024];
                int len = 0;
                while ((len = input.read(buffer)) != -1) {
                    outStream.write(buffer, 0, len);
                }
                byte[] byteArray = outStream.toByteArray();
                return new String(byteArray,"UTF-8");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                input.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return null;
    }


    /**
     *  上传操作
     * @param is
     * @param fileName
     * @param filePath
     */
    public static void upFile(InputStream is,String fileName,String filePath){
        FileOutputStream fos = null;
        BufferedOutputStream bos = null;
        BufferedInputStream bis = null;
        File file = new File(filePath);
        if(!file.exists()){
            file.mkdirs();
        }
        File f = new File(filePath+"/"+fileName);
        try {
            bis = new BufferedInputStream(is);
            fos = new FileOutputStream(f);
            bos = new BufferedOutputStream(fos);
            byte[] bt = new byte[4096];
            int len;
            while((len = bis.read(bt))>0){
                bos.write(bt, 0, len);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                if(null != bos){
                    bos.close();
                    bos = null;
                }
                if(null != fos){
                    fos.close();
                    fos= null;
                }
                if(null != is){
                    is.close();
                    is=null;
                }
                if (null != bis) {
                    bis.close();
                    bis = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /**
     *  上传到OSS服务器
     * @param OSSFileURL
     * @param endpoint
     * @param accessKeyId
     * @param accessKeySecret
     * @param bucketName
     * @param sourceFilePath
     * @return
     */
    public static String uploadFileToAilOss(String OSSFileURL,String endpoint,String accessKeyId,String accessKeySecret,String bucketName,String sourceFilePath){
        if(StringUtils.isEmpty(sourceFilePath)){
            return null;
        }
        String[] fileParams = sourceFilePath.split("/");
        String fileName = fileParams[fileParams.length-1];
//		String OSSFileURL = OSSFileURL+newName ;
        // key指的是 保存在oss上后的路径+文件名
        // filePath 指的是上传的文件路径
        //关于这个endPoint，可以参考：http://bbs.aliyun.com/read/149100.html?spm=5176.7189909.0.0.YiwiFw

        String key=fileName;//保存在oss上的文件名
        InputStream content = null;
        try{
            OSSClient client = new OSSClient(endpoint,accessKeyId, accessKeySecret);
            // 获取指定文件的输入流
            File file = new File(sourceFilePath);
            if(!file.exists()){
                return null;
            }
            content = new FileInputStream(file);
            // 创建上传Object的Metadata
            ObjectMetadata meta = new ObjectMetadata();
            // 必须设置ContentLength
            meta.setContentLength(file.length());
            // 上传Object.
            PutObjectResult result = client.putObject(bucketName, key, content, meta);
            if(null != result&&!StringUtils.isEmpty(result.getETag())){
                return  OSSFileURL+fileName;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(null !=content){
                try {
                    content.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    /**
     * 构建压缩文件存放路径,如果不存在将会创建
     * 传入的可能是文件名或者目录,也可能不传,此方法用以转换最终压缩文件的存放路径
     * @param srcFile 源文件
     * @param destParam 压缩目标路径
     * @return 正确的压缩文件存放路径
     */
    private static String buildDestinationZipFilePath(File srcFile,String destParam) {
        if (StringUtils.isEmpty(destParam)) {
            if (srcFile.isDirectory()) {
                destParam = srcFile.getParent() + File.separator + srcFile.getName() + ".zip";
            } else {
                String fileName = srcFile.getName().substring(0, srcFile.getName().lastIndexOf("."));
                destParam = srcFile.getParent() + File.separator + fileName + ".zip";
            }
        } else {
            createDestDirectoryIfNecessary(destParam);  // 在指定路径不存在的情况下将其创建出来
            if (destParam.endsWith(File.separator)) {
                String fileName = "";
                if (srcFile.isDirectory()) {
                    fileName = srcFile.getName();
                } else {
                    fileName = srcFile.getName().substring(0, srcFile.getName().lastIndexOf("."));
                }
                destParam += fileName + ".zip";
            }
        }
        return destParam;
    }

    /**
     * 在必要的情况下创建压缩文件存放目录,比如指定的存放路径并没有被创建
     * @param destParam 指定的存放路径,有可能该路径并没有被创建
     */
    private static void createDestDirectoryIfNecessary(String destParam) {
        File destDir = null;
        if (destParam.endsWith(File.separator)) {
            destDir = new File(destParam);
        } else {
            destDir = new File(destParam.substring(0, destParam.lastIndexOf(File.separator)));
        }
        if (!destDir.exists()) {
            destDir.mkdirs();
        }
    }




    public static void main(String[] args) {
        String path = new String("E:/root/panda/fileUploads/2017-05-09/min-eaa17c10bec844478717127ae0cd25c5-15120Q42531-1.jpg");
        File file = new File(path);
        System.out.println(file.exists());
//		uploadFileToAilOss(path);
//	      try {
//	          File[] files = unzip("d:\\test\\汉字.zip", "aa");
//	          for (int i = 0; i < files.length; i++) {
//	              System.out.println(files[i]);
//	          }
//	      } catch (ZipException e) {
//	          e.printStackTrace();
//	      }
    }
}
