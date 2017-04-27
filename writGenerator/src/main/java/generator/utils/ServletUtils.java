package main.java.generator.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

public class ServletUtils {
	
	public static Map<String, String> getParametersFromQueryString(String line) {
		Map<String, String> ret = new HashMap<String, String>();

		if (line != null) {
			String[] kvs = line.split("&");
			for (String kv : kvs) {
				String[] kva = kv.split("=");
				if (kva.length == 2) {
					try {
						ret.put(kva[0], URLDecoder.decode(kva[1], "UTF-8"));
					} catch (UnsupportedEncodingException e) {
						throw new RuntimeException(e);
					}
				}
			}
		}

		return ret;
	}
	
}
