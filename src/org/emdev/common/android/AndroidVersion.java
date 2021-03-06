package org.emdev.common.android;

public class AndroidVersion {

    public static final int VERSION = getVersion();

    public static final boolean is1x = VERSION <= 4;

    public static final boolean is2x = 5 <= VERSION && VERSION <= 10;

    private static int getVersion() {
        try {
            return Integer.parseInt(android.os.Build.VERSION.SDK);
        } catch (Throwable th) {
            return 3;
        }
    }

}
