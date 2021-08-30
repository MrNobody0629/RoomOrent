
package helper;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class FileOperation {
    
    public static boolean moveFile(InputStream is,String destination) throws IOException
    {
        boolean status=false;
        
        try{
            byte b[]=new byte[is.available()];
            is.read(b);
            FileOutputStream fos=new FileOutputStream(destination);
            fos.write(b);
            fos.flush();
            status=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return status;
        
    }
    
}
