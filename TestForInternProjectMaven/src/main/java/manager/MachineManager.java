/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package manager;

import dao.MachineDAO;
import entity.Machine;
import java.util.ArrayList;

/**
 *
 * @author ASUS ROG
 */
public class MachineManager {
    private ArrayList<Machine> machineList;
    private MachineDAO myMachineDAO;

    public MachineManager() {
        this.machineList = new ArrayList<>();
        myMachineDAO = new MachineDAO();
    }

    public MachineManager(ArrayList<Machine> machineList) {
        this.machineList = machineList;
        myMachineDAO = new MachineDAO();
    }
    
    public ArrayList getMachineList() {
        this.machineList = this.myMachineDAO.queryMachine();
        return machineList;
    }
}
