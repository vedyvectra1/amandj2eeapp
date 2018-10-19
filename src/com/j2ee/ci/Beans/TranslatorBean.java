package com.j2ee.ci.Beans;

import com.gtranslate.Language;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class TranslatorBean {
	//Attributs des langages de traduction
    private static String langFrom;
    private static String langTo;

    public TranslatorBean() {
            TranslatorBean.langFrom = null;
            TranslatorBean.langTo = null;
    }

    public TranslatorBean(String langFrom, String langTo) {
        TranslatorBean.langFrom = langFrom;
        TranslatorBean.langTo = langTo;
    }

    /*public static void main(String[] args) throws IOException {
        String text = "Bonjour à tous, je pense surtout à mes frères";
        //Translated text: Hallo Welt!
        TranslatorBean TranslatorBean = new TranslatorBean();
        System.out.println("Translated text: " + TranslatorBean.translate(text));
        TranslatorBean = new TranslatorBean(Language.FRENCH, Language.ENGLISH);
        System.out.println("Translated text: " + TranslatorBean.translate(text));
        TranslatorBean = new TranslatorBean();
        System.out.println("Translated text: " + TranslatorBean.translate(text));
    }*/

    public static String translate(String text) throws IOException {

        if (TranslatorBean.langFrom!=null && TranslatorBean.langTo!=null){
            // INSERT YOU URL HERE
            String urlStr = "https://script.google.com/macros/s/AKfycbyGDYCrK0Qjpv_PPP2WXYB6jya46hLnL3E6iTitME94U0Sw-rM/exec" +
                    "?q=" + URLEncoder.encode(text, "UTF-8") +
                    "&target=" + TranslatorBean.langTo +
                    "&source=" + TranslatorBean.langFrom;
            URL url = new URL(urlStr);
            StringBuilder response = new StringBuilder();
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestProperty("User-Agent", "Mozilla/5.0");
            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String inputLine;
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();
            return response.toString();
        }else
            return text;

    }

}
