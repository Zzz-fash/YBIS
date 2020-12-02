package cn.kgc.ybis.test;


import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.junit.Test;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author Mr.Manxiaoji
 * @Date 2020-11-25 23:59
 * Excel表格的读取与创建
 *
 **/
public class ExcelUtil {
    public static List<List<String>> cells = new ArrayList<>();

    /**
     * 工作簿对象
     */
    HSSFWorkbook hssfWorkbook = new HSSFWorkbook();

    /**
     * 工作表对象
     */
    HSSFSheet hssfSheet = hssfWorkbook.createSheet();
//    public void test(){
//        ArrayList<String> list = new ArrayList<>();
//        list.set(0,"姓名");
//        list.set(1,"姓名");
//        list.set(2,"姓名");
//        list.set(3,"姓名");
//        list.set(4,"姓名");
//        list.set(5,"姓名");
//
//        cells.set(0,list);
//
//        ArrayList<String> list1 = new ArrayList<>();
//        User user = new User();
//        list1.set(1,user.getCardId());
//
//        list1.set(1,user.getName());
//
//        createWork("/path");
//    }

    /**
     * 设置第i行的内容
     * 例如 i=0 list={"姓名“，”年龄“，”日期“，”性别“}
     *
     * 第一行的长度  后面都不能超过 否者报空
     *
     * 在表格中显示为：
     * 第一行 姓名 年龄  日期    性别
     * 例如 i=1 list={“man”,“12”,“2020-11”,“男”}
     * 第二行 man  12  2020-11  男
     *
     *
     * @param
     * @param list 行的值
     * @return 返回值为1时设置成功 为null时测试失败
     */
    public Integer setWork(List<String> list){
        try {
            cells.add(list);
            if(cells.get(0).size()>=list.size()){
                return 1;
            }else {
                boolean remove = cells.remove(list);
                return null;
            }

        }catch (Exception e){
            return null;
        }
    }
    /**
     * 开始创建
     * @param path
     * @return
     */
    public String createWork(String path){
        try {
            String xlsPath =path +"test.xls";
            File file = new File(path);
            System.out.println(xlsPath);
            System.out.println(file.getName());
            file.mkdirs();
            File file1 = new File(file, "test.xls");
            boolean newFile = file1.createNewFile();

            System.out.println(newFile);
            hssfWorkbook.setSheetName(0,"sheet01");
            for (int i = 0; i < cells.size(); i++) {
                HSSFRow row = hssfSheet.createRow((short)i);
                //一行的数据
                for (int j = 0; j < cells.get(0).size(); j++) {
                    //设置单元格内容
                    HSSFCell cell = row.createCell((short)j);
                    cell.setCellValue(cells.get(i).get(j));
                }
            }
            FileOutputStream fout = new FileOutputStream(file1);
            hssfWorkbook.write(fout);
            fout.flush();
            fout.close();
            System.out.println("文件生成");
            return xlsPath;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }finally {
            for (int i = 0; i < cells.size(); i++) {
                cells.remove(i);
            }
        }
    }
    /**
     * 只读取第一个工作表，  hssfWorkbook.getSheetAt(0); 这行代码规定了获取的工作表
     * 读取excel表格
     * @param file 表格的对象  只能为xsl格式
     * @return
     */
    public List<List<String>> readWork(File file){
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            HSSFWorkbook hssfWorkbook = new HSSFWorkbook(fileInputStream);
            HSSFSheet sheetAt = hssfWorkbook.getSheetAt(0);




            int lastRowNum = sheetAt.getLastRowNum();
            System.out.println(lastRowNum+"行数");

            List<List<String>> list = new ArrayList<>();

            for (int i = 0; i <= lastRowNum; i++) {
                HSSFRow row = sheetAt.getRow(i);

                List<String> li = new ArrayList<>();

                short lastCellNum = row.getLastCellNum();
                System.out.println(lastCellNum+"行数");
                for (int j = 0; j < lastCellNum; j++) {
                    row.getCell(j).setCellType(Cell.CELL_TYPE_STRING);
                    System.out.println(row.getCell(j).getStringCellValue());
                    li.add(row.getCell(j).getStringCellValue());
                }
                list.add(li);
            }
            System.out.println("读取成功");
            return list;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }finally {
            for (int i = 0; i < cells.size(); i++) {
                cells.remove(i);
            }
        }
    }
    /**
     * 读取示例： "E:\\1.xls"为excel表格的位置 全类名
     */
    @Test
    public void test01(){
        File file = new File("E:\\1.xls");
        List<List<String>> lists = readWork(file);
        System.out.println(lists.size());
        for (List<String> list : lists) {
            for (int i = 0; i < list.size(); i++) {
                System.out.print(list.get(i)+"\t");
            }
            System.out.println("**************结束");
        }
        cells=lists;
        createWork("E:/uplod");

    }
}

