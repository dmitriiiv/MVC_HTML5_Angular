package ru.javastudy.mvcHtml5Angular.mvc.file;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;

@Controller
public class FileUploadController {

    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public @ResponseBody String handleFileUpload(@RequestParam("file") MultipartFile file) {
        if (!file.isEmpty()) {
            try {
                System.out.println("File size = " + file.getSize());
                byte[] fileBytes = file.getBytes();
                String rootPath = System.getProperty("catalina.home");
                System.out.println("Server rootPath: " + rootPath);
                System.out.println("File original name: " + file.getOriginalFilename());
                System.out.println("File content type: " + file.getContentType());

                String path = rootPath + File.separator + "downloads";
                File dir = new File(path);
                if (!dir.exists()) {
                    if (dir.mkdir()) {
                        System.out.println("Create new directory: " + path);
                    }
                }

                File newFile = new File(path + File.separator + file.getOriginalFilename());

                BufferedOutputStream steam = new BufferedOutputStream(new FileOutputStream(newFile));
                steam.write(fileBytes);
                steam.close();

                System.out.println("File is saved under: " + path + File.separator + file.getOriginalFilename());
                return "File is saved under: " + path + File.separator + file.getOriginalFilename() + "<br>" +
                        getAllDirectories(new File(rootPath));
            } catch (IOException e) {
                e.printStackTrace();
                return "File upload is failed: " + e.getMessage();
            }
        } else {
            return "File upload is failed: File is empty";
        }
    }

    private static String getAllDirectories(File folder) {
        StringBuilder builder = new StringBuilder(folder.getAbsolutePath());
        File[] folderEntries = folder.listFiles();
        if (folderEntries != null) {
            for (File entry : folderEntries) {
                if (entry.isDirectory()) {
                    builder.append(entry.getAbsolutePath())
                            .append(", free space: ")
                            .append(entry.getFreeSpace())
                            .append("<br>");
                    builder.append(getAllDirectories(entry));
                }
            }
        }
        return builder.toString();
    }
}
