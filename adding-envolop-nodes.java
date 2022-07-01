import java.util.*;
import java.io.*;

for( int i = 0; i < dataContext.getDataCount(); i++ ) {
    InputStream is = dataContext.getStream(i);
    Properties props = dataContext.getProperties(i);
    String data = is.getText("UTF-8");
    String result = "<nsb:Innserve_445_Envelope xmlns:nsb=\"http://innserveltd.co.uk/xml/445e\">"+"\n\r"+data+"\n\r"+"</nsb:Innserve_445_Envelope>"+"\n\r";
    is = new ByteArrayInputStream(result.getBytes("UTF-8"));
    dataContext.storeStream(is, props);
}
