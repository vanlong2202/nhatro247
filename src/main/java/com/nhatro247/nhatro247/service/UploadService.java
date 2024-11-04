package com.nhatro247.nhatro247.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadService {
    private final ServletContext servletContext;

    public UploadService(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    public List<String> handeSaveUploadFile(MultipartFile[] files) {
        List<String> listFile = new ArrayList<>();
        for (MultipartFile file : files) {
            if (!file.isEmpty()) {
                String rootPath = this.servletContext.getRealPath("/resources/uploads");
                String finalName = "";
                try {
                    byte[] bytes = file.getBytes();
                    File dir = new File(rootPath + File.separator);
                    if (!dir.exists())
                        dir.mkdirs();
                    finalName = System.currentTimeMillis() + "-" + file.getOriginalFilename();
                    File serverFile = new File(dir.getAbsolutePath() + File.separator + finalName);
                    BufferedOutputStream stream = new BufferedOutputStream(
                            new FileOutputStream(serverFile));
                    stream.write(bytes);
                    stream.close();

                } catch (Exception e) {
                    e.printStackTrace();
                }
                listFile.add(finalName);
            }
        }
        return listFile;
    }

}
