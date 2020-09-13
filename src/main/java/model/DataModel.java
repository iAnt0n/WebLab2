package model;

import java.math.BigDecimal;
import java.util.Date;

public class DataModel {
    private final String x;
    private final String y;
    private final String r;
    private final boolean result;
    private final Date reqTime;
    private final long compTime;

    public DataModel(String x, String y, String r) {
        this.x = x;
        this.y = y;
        this.r = r;
        long start = System.nanoTime();
        this.result = calculate(x,y,r);
        compTime = (System.nanoTime()-start)/1000;
        reqTime = new Date();
    }

    private boolean calculate(String sx, String sy, String sr){
        BigDecimal x = new BigDecimal(sx);
        BigDecimal y = new BigDecimal(sy);
        BigDecimal r = new BigDecimal(sr);
        if (x.compareTo(BigDecimal.ZERO) <= 0 && x.compareTo(r.negate()) >= 0
                && y.compareTo(BigDecimal.ZERO) >= 0 && y.compareTo(r.divide(BigDecimal.valueOf(2))) <= 0) {
            return true;
        }
        if (x.compareTo(BigDecimal.ZERO) <= 0 && y.compareTo(BigDecimal.ZERO) <= 0
                && (x.pow(2).add(y.pow(2))).compareTo(r.pow(2)) <= 0) {
            return true;
        }
        if (x.compareTo(BigDecimal.ZERO) >= 0 && y.compareTo(BigDecimal.ZERO) <= 0
                && y.compareTo(x.subtract(r.divide(BigDecimal.valueOf(2)))) >= 0) {
            return true;
        }
        return false;
    }

    public String getX() {
        return x;
    }

    public String getY() {
        return y;
    }

    public String getR() {
        return r;
    }

    public boolean isResult() {
        return result;
    }

    public Date getReqTime() {
        return reqTime;
    }

    public long getCompTime() {
        return compTime;
    }
}
