package cn.fostudio.jsoup;

import java.io.IOException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class MyJsoup {
	public void GetWikipediaITN() {
		try {
			Document doc = Jsoup.connect("http://en.wikipedia.org/").get();
			Elements newsHeadlines = doc.select("#mp-itn b a");
			for (Element text : newsHeadlines) {
				String ptext = text.text();
				System.out.println("-" + ptext);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void GetFostudioJPG() {
		try {
			Document doc = Jsoup.connect("http://www.fostudio.cn/").get();
			Elements srcLinks = doc.select("img[src$=.jpg]");
			for (Element link : srcLinks) {
				String imagesPath = link.attr("src");
				System.out.println("Soup: " + imagesPath);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}