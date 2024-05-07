/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBConnUtils;
import entity.Machine;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author ASUS ROG
 */
public class MachineDAO {
    Connection conn;
    
    public ArrayList<Machine> queryMachine() {
        ArrayList<Machine> machineList = new ArrayList<>();
        try {
            conn = DBConnUtils.getConnection();
            String sql = "Select * from Machine a";

            PreparedStatement pstm = conn.prepareStatement(sql);

            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int machineId = Integer.parseInt(rs.getString("ID"));
                String startTime = rs.getString("StartTime");
                String endTime = rs.getString("EndTime");
                int spanTime = Integer.parseInt(rs.getString("SpanTime"));
                String status = rs.getString("Status");
                String power = rs.getString("Power");
                int opId = Integer.parseInt(rs.getString("OpID"));
                String orCode = rs.getString("OrCode");
                String dgCode = rs.getString("DgCode");
                int pgTime = Integer.parseInt("PGTime");
                int partNum = Integer.parseInt("PartNum");
                int step = Integer.parseInt("Step");
                int point = Integer.parseInt("Point");
                String bCode = rs.getString("BCode");
                
                Machine newMachine = new Machine(machineId, startTime, endTime, spanTime, status, power, opId, orCode, dgCode, pgTime, partNum, step, point, bCode);
                machineList.add(newMachine);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            DBConnUtils.closeConnection(conn);
        }
        return machineList;
    }
}
