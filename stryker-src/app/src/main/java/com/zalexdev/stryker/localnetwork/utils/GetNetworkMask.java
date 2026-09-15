package com.zalexdev.stryker.localnetwork.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;

import com.zalexdev.stryker.utils.Core;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;

public class GetNetworkMask extends AsyncTask<Void, String, String> {


    public Core core;

    public GetNetworkMask(Core c) {
        core = c;
    }

    @Override
    protected void onPreExecute() {
        super.onPreExecute();

    }

    @SuppressLint("WrongThread")
    @Override
    protected String doInBackground(Void... command) {
        String line;
        String gw = "0.0.0.0";

        if (core.isRootless()) {
            return getWifiNetworkCidr();
        }

        try {

            Process process = Runtime.getRuntime().exec("su -mm");
            OutputStream stdin = process.getOutputStream();
            InputStream stderr = process.getErrorStream();
            InputStream stdout = process.getInputStream();
            stdin.write(("ip route show | grep "+core.getString("wlan_scan") + '\n').getBytes());
            stdin.write(("\n").getBytes());
            stdin.flush();
            stdin.close();
            ArrayList<String> out = new ArrayList<>();
            ArrayList<String> outerror = new ArrayList<>();
            BufferedReader br = new BufferedReader(new InputStreamReader(stdout));
            while ((line = br.readLine()) != null) {
                out.add(line);
                String[] res = line.split(" ");
                gw = res[0];

            }
            br.close();
            br = new BufferedReader(new InputStreamReader(stderr));
            while ((line = br.readLine()) != null) {
                onProgressUpdate(line);
                outerror.add(line);
            }
            
            
            br.close();
            process.waitFor();
            process.destroy();
        } catch (IOException e) {
        } catch (InterruptedException ex) {
        }

        return gw;
    }

    private String getWifiNetworkCidr() {
        try {
            Context ctx = core.getContext();
            WifiManager wm = (WifiManager) ctx.getApplicationContext()
                    .getSystemService(Context.WIFI_SERVICE);
            if (wm == null) return "0.0.0.0";
            DhcpInfo dhcp = wm.getDhcpInfo();
            if (dhcp == null || dhcp.ipAddress == 0) return "0.0.0.0";

            int ip = dhcp.ipAddress;
            int mask = dhcp.netmask;
            int net;
            int prefix;
            if (mask == 0) {
                net = ip & 0x00FFFFFF;
                prefix = 24;
            } else {
                net = ip & mask;
                prefix = Integer.bitCount(mask);
            }
            return intToDottedLE(net) + "/" + prefix;
        } catch (Exception e) {
            return "0.0.0.0";
        }
    }

    private String intToDottedLE(int v) {
        return (v & 0xff) + "." + ((v >> 8) & 0xff) + "."
                + ((v >> 16) & 0xff) + "." + ((v >> 24) & 0xff);
    }

    @Override
    protected void onPostExecute(String result) {
        super.onPostExecute(result);
    }

    @Override
    protected void onProgressUpdate(String... values) {
        super.onProgressUpdate(values);

    }


}
