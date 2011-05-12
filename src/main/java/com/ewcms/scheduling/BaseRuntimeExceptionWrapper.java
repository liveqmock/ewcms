/**
 * 创建日期 2008-5-9
 * Copyright (c)2008 Jiangxi Institute of Computing Technology(JICT), All rights reserved.
 * JICT PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.jict.org
 */
package com.ewcms.scheduling;

import java.io.PrintWriter;
import java.io.StringWriter;

/**
 * 运行时异常包装类
 * 
 * @author 吴智俊
 */
public class BaseRuntimeExceptionWrapper extends BaseRuntimeException {

    private static final long serialVersionUID = 1235575331397583743L;
    private final String stackTrace;
    private final Exception originalException;

    public BaseRuntimeExceptionWrapper(Exception e) {
        super(e.getMessage(), e);
        originalException = e;
        stackTrace = readStackTrace(e);
    }

    private String readStackTrace(Exception e) {
        StringWriter sw = new StringWriter();
        e.printStackTrace(new PrintWriter(sw));
        return sw.toString();
    }

    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public void printStackTrace(java.io.PrintStream s) {
        synchronized (s) {
            s.print(getClass().getName() + ": ");
            s.print(stackTrace);
        }
    }

    public void printStackTrace(java.io.PrintWriter s) {
        synchronized (s) {
            s.print(getClass().getName() + ": ");
            s.print(stackTrace);
        }
    }

    public void rethrow() throws Exception {
        throw originalException;
    }

    public Exception getOriginalException() {
        return originalException;
    }
}
