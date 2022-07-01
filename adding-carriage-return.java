import java.util.*;
import java.io.*;

for( int i = 0; i < dataContext.getDataCount(); i++ ) {
    InputStream is = dataContext.getStream(i);
    Properties props = dataContext.getProperties(i);
    String data = is.getText("UTF-8");
    String result = i == dataContext.getDataCount() - 1 ? data : data+"\n\r";
    is = new ByteArrayInputStream(result.getBytes("UTF-8"));
    dataContext.storeStream(is, props);
}
