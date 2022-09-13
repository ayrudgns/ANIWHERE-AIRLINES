package security;

import java.nio.charset.StandardCharsets;

import com.google.common.hash.Hashing;

public class SecurityUtil {
	
	public String encrypt(String str) {
		String sha256 = Hashing.sha256().hashString(str, StandardCharsets.UTF_8).toString();	
		return sha256;
	}
}
