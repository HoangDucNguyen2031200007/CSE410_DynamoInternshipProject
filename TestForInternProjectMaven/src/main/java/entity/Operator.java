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
public class Operator implements Serializable {
    private int opId;
    private String opName;
    private String opOffice;
    private String opSession;
    private String opStep;

    public int getOpId() {
        return opId;
    }

    public void setOpId(int opId) {
        this.opId = opId;
    }

    public String getOpName() {
        return opName;
    }

    public void setOpName(String opName) {
        this.opName = opName;
    }

    public String getOpOffice() {
        return opOffice;
    }

    public void setOpOffice(String opOffice) {
        this.opOffice = opOffice;
    }

    public String getOpSession() {
        return opSession;
    }

    public void setOpSession(String opSession) {
        this.opSession = opSession;
    }

    public String getOpStep() {
        return opStep;
    }

    public void setOpStep(String opStep) {
        this.opStep = opStep;
    }

    public Operator(int opId, String opName, String opOffice, String opSession, String opStep) {
        this.opId = opId;
        this.opName = opName;
        this.opOffice = opOffice;
        this.opSession = opSession;
        this.opStep = opStep;
    }
}
