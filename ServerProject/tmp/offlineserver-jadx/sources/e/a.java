package e;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TimeZone f1701a = TimeZone.getTimeZone("UTC");

    public static boolean a(String str, int i2, char c2) {
        return i2 < str.length() && str.charAt(i2) == c2;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00e5 A[Catch: IllegalArgumentException -> 0x01d2, NumberFormatException -> 0x01d4, NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x01d6, TRY_LEAVE, TryCatch #2 {NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x01d6, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0036, B:13:0x003c, B:17:0x0054, B:19:0x0064, B:20:0x0066, B:22:0x0072, B:23:0x0074, B:25:0x007a, B:29:0x0084, B:34:0x0094, B:36:0x009c, B:37:0x00a0, B:39:0x00a6, B:44:0x00b3, B:46:0x00bd, B:57:0x00df, B:59:0x00e5, B:86:0x019a, B:68:0x00fa, B:69:0x0115, B:70:0x0116, B:74:0x0132, B:76:0x013f, B:79:0x0148, B:81:0x0167, B:84:0x0177, B:85:0x0199, B:73:0x0121, B:88:0x01ca, B:89:0x01d1, B:50:0x00cd, B:51:0x00d0, B:45:0x00b8), top: B:105:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:72:0x0120  */
    /* JADX WARN: Code duplicated, block: B:73:0x0121 A[Catch: IllegalArgumentException -> 0x01d2, NumberFormatException -> 0x01d4, NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x01d6, TryCatch #2 {NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x01d6, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0036, B:13:0x003c, B:17:0x0054, B:19:0x0064, B:20:0x0066, B:22:0x0072, B:23:0x0074, B:25:0x007a, B:29:0x0084, B:34:0x0094, B:36:0x009c, B:37:0x00a0, B:39:0x00a6, B:44:0x00b3, B:46:0x00bd, B:57:0x00df, B:59:0x00e5, B:86:0x019a, B:68:0x00fa, B:69:0x0115, B:70:0x0116, B:74:0x0132, B:76:0x013f, B:79:0x0148, B:81:0x0167, B:84:0x0177, B:85:0x0199, B:73:0x0121, B:88:0x01ca, B:89:0x01d1, B:50:0x00cd, B:51:0x00d0, B:45:0x00b8), top: B:105:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01ca A[Catch: IllegalArgumentException -> 0x01d2, NumberFormatException -> 0x01d4, NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x01d6, TryCatch #2 {NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x01d6, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0036, B:13:0x003c, B:17:0x0054, B:19:0x0064, B:20:0x0066, B:22:0x0072, B:23:0x0074, B:25:0x007a, B:29:0x0084, B:34:0x0094, B:36:0x009c, B:37:0x00a0, B:39:0x00a6, B:44:0x00b3, B:46:0x00bd, B:57:0x00df, B:59:0x00e5, B:86:0x019a, B:68:0x00fa, B:69:0x0115, B:70:0x0116, B:74:0x0132, B:76:0x013f, B:79:0x0148, B:81:0x0167, B:84:0x0177, B:85:0x0199, B:73:0x0121, B:88:0x01ca, B:89:0x01d1, B:50:0x00cd, B:51:0x00d0, B:45:0x00b8), top: B:105:0x0004 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:73:0x0121, please report this as an issue */
    public static Date b(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        int i2;
        int iC;
        int i3;
        int iC2;
        int iC3;
        int iC4;
        char cCharAt;
        TimeZone timeZone;
        String strSubstring;
        int length;
        String str3;
        String id;
        char cCharAt2;
        try {
            int index = parsePosition.getIndex();
            int i4 = index + 4;
            int iC5 = c(index, i4, str);
            if (a(str, i4, '-')) {
                i4++;
            }
            int i5 = i4 + 2;
            int iC6 = c(i4, i5, str);
            if (a(str, i5, '-')) {
                i5++;
            }
            int i6 = i5 + 2;
            int iC7 = c(i5, i6, str);
            boolean zA = a(str, i6, 'T');
            if (!zA && str.length() <= i6) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(iC5, iC6 - 1, iC7);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i6);
                return gregorianCalendar.getTime();
            }
            if (zA) {
                int i7 = i6 + 1;
                int i8 = i7 + 2;
                iC4 = c(i7, i8, str);
                if (a(str, i8, ':')) {
                    i8++;
                }
                int i9 = i8 + 2;
                iC = c(i8, i9, str);
                if (a(str, i9, ':')) {
                    i9++;
                }
                if (str.length() <= i9 || (cCharAt2 = str.charAt(i9)) == 'Z' || cCharAt2 == '+' || cCharAt2 == '-') {
                    i2 = iC4;
                    i6 = i9;
                } else {
                    i3 = i9 + 2;
                    iC3 = c(i9, i3, str);
                    if (iC3 > 59 && iC3 < 63) {
                        iC3 = 59;
                    }
                    if (a(str, i3, '.')) {
                        int i10 = i3 + 1;
                        int length2 = i10 + 1;
                        while (true) {
                            if (length2 >= str.length()) {
                                length2 = str.length();
                                break;
                            }
                            char cCharAt3 = str.charAt(length2);
                            if (cCharAt3 < '0' || cCharAt3 > '9') {
                                break;
                                break;
                            }
                            length2++;
                        }
                        int iMin = Math.min(length2, i10 + 3);
                        iC2 = c(i10, iMin, str);
                        int i11 = iMin - i10;
                        if (i11 == 1) {
                            iC2 *= 100;
                        } else if (i11 == 2) {
                            iC2 *= 10;
                        }
                        i3 = length2;
                    } else {
                        iC2 = 0;
                    }
                }
                if (str.length() > i3) {
                    throw new IllegalArgumentException("No time zone indicator");
                }
                cCharAt = str.charAt(i3);
                timeZone = f1701a;
                if (cCharAt == 'Z') {
                    length = i3 + 1;
                } else {
                    if (cCharAt == '+' && cCharAt != '-') {
                        throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt + "'");
                    }
                    strSubstring = str.substring(i3);
                    if (strSubstring.length() >= 5) {
                        strSubstring = strSubstring + "00";
                    }
                    length = i3 + strSubstring.length();
                    if (!"+0000".equals(strSubstring) && !"+00:00".equals(strSubstring)) {
                        str3 = "GMT" + strSubstring;
                        timeZone = TimeZone.getTimeZone(str3);
                        id = timeZone.getID();
                        if (!id.equals(str3) && !id.replace(":", "").equals(str3)) {
                            throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone.getID());
                        }
                    }
                }
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
                gregorianCalendar2.setLenient(false);
                gregorianCalendar2.set(1, iC5);
                gregorianCalendar2.set(2, iC6 - 1);
                gregorianCalendar2.set(5, iC7);
                gregorianCalendar2.set(11, iC4);
                gregorianCalendar2.set(12, iC);
                gregorianCalendar2.set(13, iC3);
                gregorianCalendar2.set(14, iC2);
                parsePosition.setIndex(length);
                return gregorianCalendar2.getTime();
            }
            i2 = 0;
            iC = 0;
            i3 = i6;
            iC2 = 0;
            iC3 = 0;
            iC4 = i2;
            if (str.length() > i3) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            cCharAt = str.charAt(i3);
            timeZone = f1701a;
            if (cCharAt == 'Z') {
                length = i3 + 1;
            } else {
                if (cCharAt == '+') {
                }
                strSubstring = str.substring(i3);
                if (strSubstring.length() >= 5) {
                    strSubstring = strSubstring + "00";
                }
                length = i3 + strSubstring.length();
                if (!"+0000".equals(strSubstring)) {
                    str3 = "GMT" + strSubstring;
                    timeZone = TimeZone.getTimeZone(str3);
                    id = timeZone.getID();
                    if (!id.equals(str3)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone.getID());
                    }
                }
            }
            GregorianCalendar gregorianCalendar3 = new GregorianCalendar(timeZone);
            gregorianCalendar3.setLenient(false);
            gregorianCalendar3.set(1, iC5);
            gregorianCalendar3.set(2, iC6 - 1);
            gregorianCalendar3.set(5, iC7);
            gregorianCalendar3.set(11, iC4);
            gregorianCalendar3.set(12, iC);
            gregorianCalendar3.set(13, iC3);
            gregorianCalendar3.set(14, iC2);
            parsePosition.setIndex(length);
            return gregorianCalendar3.getTime();
        } catch (NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException e2) {
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            String message = e2.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + e2.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e2);
            throw parseException;
        }
    }

    public static int c(int i2, int i3, String str) {
        int i4;
        int i5;
        if (i2 < 0 || i3 > str.length() || i2 > i3) {
            throw new NumberFormatException(str);
        }
        if (i2 < i3) {
            i5 = i2 + 1;
            int iDigit = Character.digit(str.charAt(i2), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i2, i3));
            }
            i4 = -iDigit;
        } else {
            i4 = 0;
            i5 = i2;
        }
        while (i5 < i3) {
            int i6 = i5 + 1;
            int iDigit2 = Character.digit(str.charAt(i5), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i2, i3));
            }
            i4 = (i4 * 10) - iDigit2;
            i5 = i6;
        }
        return -i4;
    }
}
