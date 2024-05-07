/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;

/**
 *
 * @author ASUS ROG
 */
public class Machine implements Serializable {
    private int machineId;
    private String startTime;
    private String endTime;
    private int spanTime;
    private String status;
    private String power;
    private int opId;
    private String orCode;
    private String dgCode;
    private int pgTime;
    private int partNum;
    private int step;
    private int point;
    private String bCode;

    public long getSpanTime() {
        return spanTime;
    }

    public void setSpanTime(int spanTime) {
        this.spanTime = spanTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public int getOpId() {
        return opId;
    }

    public void setOpId(int opId) {
        this.opId = opId;
    }

    public String getOrCode() {
        return orCode;
    }

    public void setOrCode(String orCode) {
        this.orCode = orCode;
    }

    public String getDgCode() {
        return dgCode;
    }

    public void setDgCode(String dgCode) {
        this.dgCode = dgCode;
    }

    public int getPgTime() {
        return pgTime;
    }

    public void setPgTime(int pgTime) {
        this.pgTime = pgTime;
    }

    public int getPartNum() {
        return partNum;
    }

    public void setPartNum(int partNum) {
        this.partNum = partNum;
    }

    public int getStep() {
        return step;
    }

    public void setStep(int step) {
        this.step = step;
    }

    public String getbCode() {
        return bCode;
    }

    public void setbCode(String bCode) {
        this.bCode = bCode;
    }

    public Machine(int machineId, String startTime, String endTime, int spanTime, String status, String power, int opId, String orCode, String dgCode, int pgTime, int partNum, int step, int points, String bCode) {
        this.machineId = machineId;
        this.startTime = startTime;
        this.endTime = endTime;
        this.spanTime = spanTime;
        this.status = status;
        this.power = power;
        this.opId = opId;
        this.orCode = orCode;
        this.dgCode = dgCode;
        this.pgTime = pgTime;
        this.partNum = partNum;
        this.step = step;
        this.point = points;
        this.bCode = bCode;
    }

    public int getMachineId() {
        return machineId;
    }

    public void setMachineId(int machineId) {
        this.machineId = machineId;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }
    
    
}
