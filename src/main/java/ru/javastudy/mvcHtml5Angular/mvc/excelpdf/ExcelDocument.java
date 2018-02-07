package ru.javastudy.mvcHtml5Angular.mvc.excelpdf;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

public class ExcelDocument extends AbstractExcelView{

    @Override
    protected void buildExcelDocument(Map<String, Object> model, HSSFWorkbook workbook, HttpServletRequest request, HttpServletResponse response) throws Exception {
        //New Excel sheet
        HSSFSheet excelSheet = workbook.createSheet("Simple excel example");
        //Excel file name change
        response.setHeader("Content-Disposition", "attachment; filename=excelDocument.xls");

        Font font = workbook.createFont();
        font.setFontName("Arial");
        font.setBold(true);
        font.setColor(HSSFColor.HSSFColorPredefined.BLACK.getIndex());

        //Create Style for header
        CellStyle styleHeader = workbook.createCellStyle();
        styleHeader.setFillForegroundColor(HSSFColor.HSSFColorPredefined.BLUE.getIndex());
        styleHeader.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        styleHeader.setFont(font);

        //Set excel header
        setExcelHeader(excelSheet, styleHeader);

        //Get data from model
        List<Example> examples = (List<Example>) model.get("modelObject");
        int rowCount = 1;
        for(Example example : examples) {
            HSSFRow row = excelSheet.createRow(rowCount++);
            row.createCell(0).setCellValue(example.getName());
            row.createCell(1).setCellValue(example.getWeight());
            row.createCell(2).setCellValue(example.getColor());
        }
    }

    private void setExcelHeader(HSSFSheet excelSheet, CellStyle styleHeader) {
        //Set Excel Header names
        HSSFRow header = excelSheet.createRow(0);
        header.createCell(0).setCellValue("Name");
        header.getCell(0).setCellStyle(styleHeader);
        header.createCell(1).setCellValue("Weight");
        header.getCell(1).setCellStyle(styleHeader);
        header.createCell(2).setCellValue("Color");
        header.getCell(2).setCellStyle(styleHeader);
    }
}
