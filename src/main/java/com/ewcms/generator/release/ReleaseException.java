/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ewcms.generator.release;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 *
 * @author wangwei
 */
public class ReleaseException extends Exception {

    private static final Log log = LogFactory.getLog(ReleaseException.class);
    

    public ReleaseException(){}

     public ReleaseException(String message) {
        super(message);
    }

    public ReleaseException(String message, Throwable thrwbl) {
        super(message, thrwbl);
    }

    public ReleaseException(Throwable thrwbl){
        super(thrwbl);
    }

    public void render(Writer writer){
        try{
            writer.write(this.getMessage());
        }catch(IOException e){
            log.error(e.getMessage());
        }
    }
}
