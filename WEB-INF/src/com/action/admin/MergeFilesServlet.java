package com.action.admin;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.*;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import com.DAO.AdminDAO;
import com.DAO.UserDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.List;

@WebServlet("/mergeFiles")
public class MergeFilesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        try {
            // Create a factory for disk-based file items
            FileItemFactory factory = new DiskFileItemFactory();

            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

            // Parse the request to get file items.
            List<FileItem> items = upload.parseRequest(request);

            // Paths for the uploaded text and image files
            String textFilePath = null;
            String imageFilePath = null;

            // Process each uploaded item
            for (FileItem item : items) {
                if (!item.isFormField()) {
                    String fieldName = item.getFieldName();
                    String fileName = item.getName();
                    InputStream fileContent = item.getInputStream();

                    // Handle the file based on the field name
                    if ("textFile".equals(fieldName)) {
                        // Process text file
                        textFilePath = "D:/py_test/" + fileName;
                        Files.copy(fileContent, Paths.get(textFilePath), StandardCopyOption.REPLACE_EXISTING);
                    } else if ("imageFile".equals(fieldName)) {
                        // Process image file
                        imageFilePath = "D:/py_test/" + fileName;
                        Files.copy(fileContent, Paths.get(imageFilePath), StandardCopyOption.REPLACE_EXISTING);
                    }
                }
            }

            
           /* String outputFilePath = "D:/Download/merged_file.docx";
            System.out.println("File Name ::> "+outputFilePath);*/
            String textFileName = Paths.get(textFilePath).getFileName().toString();
            textFileName = textFileName.substring(0, textFileName.lastIndexOf('.'));

         // Construct the output file path using the text file name
         String outputFilePath = "D:/Download/" + textFileName + ".docx";
         System.out.println("File Name ::> " + outputFilePath);

            // Perform file merging
            if (textFilePath != null && imageFilePath != null) {
                mergeFiles(textFilePath, imageFilePath, outputFilePath);
                response.getWriter().println("Files merged successfully.");
            } else {
                response.getWriter().println("Error: Text file or image file is null.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

    // ... rest of the code remains the same



    private void mergeFiles(String textFilePath, String imageFilePath, String outputFilePath) {
        try (FileOutputStream outputStream = new FileOutputStream(outputFilePath);
                XWPFDocument document = new XWPFDocument()) {

            // Add text from the text file to the Word document
            addTextToDocument(textFilePath, document);

            // Add image to the Word document
            addImageToDocument(imageFilePath, document);

            // Save the Word document to the output file
            document.write(outputStream);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addTextToDocument(String textFilePath, XWPFDocument document) throws IOException {
        try (BufferedReader textReader = Files.newBufferedReader(Paths.get(textFilePath), StandardCharsets.UTF_8)) {
            String line;
            while ((line = textReader.readLine()) != null) {
                XWPFParagraph paragraph = document.createParagraph();
                XWPFRun run = paragraph.createRun();
                run.setText(line);
            }
        }
    }

    private void addImageToDocument(String imageFilePath, XWPFDocument document) throws IOException {
        try (InputStream imageStream = new FileInputStream(imageFilePath)) {
            XWPFPicture picture = document.createParagraph().createRun().addPicture(imageStream,
                    XWPFDocument.PICTURE_TYPE_JPEG, "image.jpg", Units.toEMU(200), Units.toEMU(100));
        } catch (InvalidFormatException e) {
            e.printStackTrace();
        }
    }
}
