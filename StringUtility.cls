/**
 * Created by Bob.Hatcher on 5/31/23.   Twitter: @BobHatcher
 *  * Free to copy or distribute.
 * No warranty expressed or implied. Use at your own risk.
 * Provided under GNU General Public License v3.0
 *
 * See README at https://github.com/BobHatcher/StringUtilities
 */

public with sharing class StringUtility {

    @InvocableMethod(label='String Apex Methods'
            description='Exposes string methods available in Apex to Flow. See Apex documentation for method details.'
            category='Uncategorized')
    public static List<StringManipulationResponse> methods(List<StringManipulationRequest> requests) {

        List<StringManipulationResponse> results = new List<StringManipulationResponse>();
        try {

            for (StringManipulationRequest req : requests) {
                System.debug(req);
                switch on req.methodName {
                    when 'abbreviate(maxWidth)' {
                        results.add(new StringManipulationResponse(req.inputString.abbreviate(req.integerParameter)));
                    }when 'abbreviate(maxWidth, offset)' {
                        results.add(new StringManipulationResponse(req.inputString.abbreviate(req.integerParameter, req.integerParameter2)));
                    }when 'capitalize()' {
                        results.add(new StringManipulationResponse(req.inputString.capitalize()));
                    }when 'center(size)' {
                        results.add(new StringManipulationResponse(req.inputString.center(req.integerParameter)));
                    }when 'center(size, paddingString)' {
                        results.add(new StringManipulationResponse(req.inputString.center(req.integerParameter, req.stringParameter)));
                    }when 'charAt(index)' {
                        results.add(new StringManipulationResponse(req.inputString.charAt(req.integerParameter)));
                    }when 'codePointAt(index)' {
                        results.add(new StringManipulationResponse(req.inputString.codePointAt(req.integerParameter)));
                    }when 'codePointBefore(index)' {
                        results.add(new StringManipulationResponse(req.inputString.codePointBefore(req.integerParameter)));
                    }when 'codePointCount(beginIndex, endIndex)' {
                        results.add(new StringManipulationResponse(req.inputString.codePointCount(req.integerParameter, req.integerParameter2)));
                    }when 'compareTo(secondString)' {
                        results.add(new StringManipulationResponse(req.inputString.compareTo(req.stringParameter)));
                    }when 'contains(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.contains(req.stringParameter)));
                    }when 'containsAny(inputString)' {
                        results.add(new StringManipulationResponse(req.inputString.containsAny(req.stringParameter)));
                    }when 'containsIgnoreCase(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.containsIgnoreCase(req.stringParameter)));
                    }when 'containsNone(inputString)' {
                        results.add(new StringManipulationResponse(req.inputString.containsNone(req.stringParameter)));
                    }when 'containsOnly(inputString)' {
                        results.add(new StringManipulationResponse(req.inputString.containsOnly(req.stringParameter)));
                    }when 'containsWhitespace()' {
                        results.add(new StringManipulationResponse(req.inputString.containsWhitespace()));
                    }when 'countMatches(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.countMatches(req.stringParameter)));
                    }when 'deleteWhitespace()' {
                        results.add(new StringManipulationResponse(req.inputString.deleteWhitespace()));
                    }when 'difference(secondString)' {
                        results.add(new StringManipulationResponse(req.inputString.difference(req.stringParameter)));
                    }when 'endsWith(suffix)' {
                        results.add(new StringManipulationResponse(req.inputString.endsWith(req.stringParameter)));
                    }when 'endsWithIgnoreCase(suffix)' {
                        results.add(new StringManipulationResponse(req.inputString.endsWithIgnoreCase(req.stringParameter)));
                    }when 'equals(stringOrId)' {
                        results.add(new StringManipulationResponse(req.inputString.equals(req.stringParameter)));
                    }when 'equalsIgnoreCase(secondString)' {
                        results.add(new StringManipulationResponse(req.inputString.equalsIgnoreCase(req.stringParameter)));
                    }when 'escapeCsv()' {
                        results.add(new StringManipulationResponse(req.inputString.escapeCsv()));
                    }when 'escapeEcmaScript()' {
                        results.add(new StringManipulationResponse(req.inputString.escapeEcmaScript()));
                    }when 'escapeHtml3()' {
                        results.add(new StringManipulationResponse(req.inputString.escapeHtml3()));
                    }when 'escapeHtml4()' {
                        results.add(new StringManipulationResponse(req.inputString.escapeHtml4()));
                    }when 'escapeJava()' {
                        results.add(new StringManipulationResponse(req.inputString.escapeJava()));
                    }when 'escapeSingleQuotes(stringToEscape)' {
                        results.add(new StringManipulationResponse(String.escapeSingleQuotes(req.inputString)));
                    }when 'escapeUnicode()' {
                        results.add(new StringManipulationResponse(req.inputString.escapeUnicode()));
                    }when 'escapeXml()' {
                        results.add(new StringManipulationResponse(req.inputString.escapeXml()));
                    }when 'format(stringToFormat, formattingArguments)' {
                        StringManipulationResponse smr = new StringManipulationResponse();
                        smr.errorOccurred = true;
                        smr.errorMessage = 'format(stringToFormat, formattingArguments) is not supported because it is not possible to pass a list of Objects to an invocable method.';
                        results.add(smr);
                    }when 'fromCharArray(charArray)' {
                        results.add(new StringManipulationResponse(String.fromCharArray(req.integerListParameter)));
                    }when 'getChars()' {
                        results.add(new StringManipulationResponse(req.inputString.getChars()));
                    }when 'getCommonPrefix(strings)' {
                        results.add(new StringManipulationResponse(String.getCommonPrefix(req.stringListParameter)));
                    }when 'getLevenshteinDistance(stringToCompare)' {
                        results.add(new StringManipulationResponse(req.inputString.getLevenshteinDistance(req.stringParameter)));
                    }when 'getLevenshteinDistance(stringToCompare, threshold)' {
                        results.add(new StringManipulationResponse(req.inputString.getLevenshteinDistance(req.stringParameter, req.integerParameter)));
                    }when 'hashCode()' {
                        results.add(new StringManipulationResponse(req.inputString.hashCode()));
                    }when 'indexOf(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.indexOf(req.stringParameter)));
                    }when 'indexOf(substring, index)' {
                        results.add(new StringManipulationResponse(req.inputString.indexOf(req.stringParameter, req.integerParameter)));
                    }when 'indexOfAny(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.indexOfAny(req.stringParameter)));
                    }when 'indexOfAnyBut(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.indexOfAnyBut(req.stringParameter)));
                    }when 'indexOfChar(character)' {
                        results.add(new StringManipulationResponse(req.inputString.indexOfChar(req.integerParameter)));
                    }when 'indexOfChar(character, startIndex)' {
                        results.add(new StringManipulationResponse(req.inputString.indexOfChar(req.integerParameter, req.integerParameter2)));
                    }when 'indexOfDifference(stringToCompare)' {
                        results.add(new StringManipulationResponse(req.inputString.indexOfDifference(req.stringParameter)));
                    }when 'indexOfIgnoreCase(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.indexOfIgnoreCase(req.stringParameter)));
                    }when 'indexOfIgnoreCase(substring, startPosition)' {
                        results.add(new StringManipulationResponse(req.inputString.indexOfIgnoreCase(req.stringParameter, req.integerParameter)));
                    }when 'isAllLowerCase()' {
                        results.add(new StringManipulationResponse(req.inputString.isAllLowerCase()));
                    }when 'isAllUpperCase()' {
                        results.add(new StringManipulationResponse(req.inputString.isAllUpperCase()));
                    }when 'isAlpha()' {
                        results.add(new StringManipulationResponse(req.inputString.isAlpha()));
                    }when 'isAlphaSpace()' {
                        results.add(new StringManipulationResponse(req.inputString.isAlphaSpace()));
                    }when 'isAlphanumeric()' {
                        results.add(new StringManipulationResponse(req.inputString.isAlphanumeric()));
                    }when 'isAlphanumericSpace()' {
                        results.add(new StringManipulationResponse(req.inputString.isAlphanumericSpace()));
                    }when 'isAsciiPrintable()' {
                        results.add(new StringManipulationResponse(req.inputString.isAsciiPrintable()));
                    }when 'isBlank(inputString)' {
                        results.add(new StringManipulationResponse(String.isBlank(req.inputString)));
                    }when 'isEmpty(inputString)' {
                        results.add(new StringManipulationResponse(String.isEmpty(req.inputString)));
                    }when 'isNotBlank(inputString)' {
                        results.add(new StringManipulationResponse(String.isNotBlank(req.inputString)));
                    }when 'isNotEmpty(inputString)' {
                        results.add(new StringManipulationResponse(String.isNotEmpty(req.inputString)));
                    }when 'isNumeric()' {
                        results.add(new StringManipulationResponse(req.inputString.isNumeric()));
                    }when 'isNumericSpace()' {
                        results.add(new StringManipulationResponse(req.inputString.isNumericSpace()));
                    }when 'isWhitespace()' {
                        results.add(new StringManipulationResponse(req.inputString.isWhitespace()));
                    }when 'join(iterableObj, separator)' {
                        results.add(new StringManipulationResponse(String.join(req.stringListParameter, req.stringParameter)));
                    }when 'lastIndexOf(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.lastIndexOf(req.stringParameter)));
                    }when 'lastIndexOf(substring, endPosition)' {
                        results.add(new StringManipulationResponse(req.inputString.lastIndexOf(req.stringParameter, req.integerParameter)));
                    }when 'lastIndexOfChar(character)' {
                        results.add(new StringManipulationResponse(req.inputString.lastIndexOfChar(req.integerParameter)));
                    }when 'lastIndexOfChar(character, endIndex)' {
                        results.add(new StringManipulationResponse(req.inputString.lastIndexOfChar(req.integerParameter, req.integerParameter2)));
                    }when 'lastIndexOfIgnoreCase(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.lastIndexOfIgnoreCase(req.stringParameter)));
                    }when 'lastIndexOfIgnoreCase(substring, endPosition)' {
                        results.add(new StringManipulationResponse(req.inputString.lastIndexOfIgnoreCase(req.stringParameter, req.integerParameter)));
                    }when 'left(length)' {
                        results.add(new StringManipulationResponse(req.inputString.left(req.integerParameter)));
                    }when 'leftPad(length)' {
                        results.add(new StringManipulationResponse(req.inputString.leftPad(req.integerParameter)));
                    }when 'leftPad(length, padStr)' {
                        results.add(new StringManipulationResponse(req.inputString.leftPad(req.integerParameter, req.stringParameter)));
                    }when 'length()' {
                        results.add(new StringManipulationResponse(req.inputString.length()));
                    }when 'mid(startIndex, length)' {
                        results.add(new StringManipulationResponse(req.inputString.mid(req.integerParameter, req.integerParameter2)));
                    }when 'normalizeSpace()' {
                        results.add(new StringManipulationResponse(req.inputString.normalizeSpace()));
                    }when 'offsetByCodePoints(index, codePointOffset)' {
                        results.add(new StringManipulationResponse(req.inputString.offsetByCodePoints(req.integerParameter, req.integerParameter2)));
                    }when 'remove(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.remove(req.stringParameter)));
                    }when 'removeEnd(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.removeEnd(req.stringParameter)));
                    }when 'removeEndIgnoreCase(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.removeEndIgnoreCase(req.stringParameter)));
                    }when 'removeStart(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.removeStart(req.stringParameter)));
                    }when 'removeStartIgnoreCase(substring)' {
                        results.add(new StringManipulationResponse(req.inputString.removeStartIgnoreCase(req.stringParameter)));
                    }when 'repeat(numberOfTimes)' {
                        results.add(new StringManipulationResponse(req.inputString.repeat(req.integerParameter)));
                    }when 'repeat(separator, numberOfTimes)' {
                        results.add(new StringManipulationResponse(req.inputString.repeat(req.stringParameter, req.integerParameter)));
                    }when 'replace(target, replacement)' {
                        results.add(new StringManipulationResponse(req.inputString.replace(req.stringParameter, req.stringParameter2)));
                    }when 'replaceAll(regExp, replacement)' {
                        results.add(new StringManipulationResponse(req.inputString.replaceAll(req.stringParameter, req.stringParameter2)));
                    }when 'replaceFirst(regExp, replacement)' {
                        results.add(new StringManipulationResponse(req.inputString.replaceFirst(req.stringParameter, req.stringParameter2)));
                    }when 'reverse()' {
                        results.add(new StringManipulationResponse(req.inputString.reverse()));
                    }when 'right(length)' {
                        results.add(new StringManipulationResponse(req.inputString.right(req.integerParameter)));
                    }when 'rightPad(length)' {
                        results.add(new StringManipulationResponse(req.inputString.rightPad(req.integerParameter)));
                    }when 'rightPad(length, padStr)' {
                        results.add(new StringManipulationResponse(req.inputString.rightPad(req.integerParameter, req.stringParameter)));
                    }when 'split(regExp)' {
                        results.add(new StringManipulationResponse(req.inputString.split(req.stringParameter)));
                    }when 'split(regExp, limit)' {
                        results.add(new StringManipulationResponse(req.inputString.split(req.stringParameter, req.integerParameter)));
                    }when 'splitByCharacterType()' {
                        results.add(new StringManipulationResponse(req.inputString.splitByCharacterType()));
                    }when 'splitByCharacterTypeCamelCase()' {
                        results.add(new StringManipulationResponse(req.inputString.splitByCharacterTypeCamelCase()));
                    }when 'startsWith(prefix)' {
                        results.add(new StringManipulationResponse(req.inputString.startsWith(req.stringParameter)));
                    }when 'startsWithIgnoreCase(prefix)' {
                        results.add(new StringManipulationResponse(req.inputString.startsWithIgnoreCase(req.stringParameter)));
                    }when 'stripHtmlTags()' {
                        results.add(new StringManipulationResponse(req.inputString.stripHtmlTags()));
                    }when 'substring(startIndex)' {
                        results.add(new StringManipulationResponse(req.inputString.substring(req.integerParameter)));
                    }when 'substring(startIndex, endIndex)' {
                        results.add(new StringManipulationResponse(req.inputString.substring(req.integerParameter, req.integerParameter2)));
                    }when 'substringAfter(separator)' {
                        results.add(new StringManipulationResponse(req.inputString.substringAfter(req.stringParameter)));
                    }when 'substringAfterLast(separator)' {
                        results.add(new StringManipulationResponse(req.inputString.substringAfterLast(req.stringParameter)));
                    }when 'substringBefore(separator)' {
                        results.add(new StringManipulationResponse(req.inputString.substringBefore(req.stringParameter)));
                    }when 'substringBeforeLast(separator)' {
                        results.add(new StringManipulationResponse(req.inputString.substringBeforeLast(req.stringParameter)));
                    }when 'substringBetween(tag)' {
                        results.add(new StringManipulationResponse(req.inputString.substringBetween(req.stringParameter)));
                    }when 'substringBetween(open, close)' {
                        results.add(new StringManipulationResponse(req.inputString.substringBetween(req.stringParameter, req.stringParameter2)));
                    }when 'swapCase()' {
                        results.add(new StringManipulationResponse(req.inputString.swapCase()));
                    }when 'toLowerCase()' {
                        results.add(new StringManipulationResponse(req.inputString.toLowerCase()));
                    }when 'toLowerCase(locale)' {
                        results.add(new StringManipulationResponse(req.inputString.toLowerCase(req.stringParameter)));
                    }when 'toUpperCase()' {
                        results.add(new StringManipulationResponse(req.inputString.toUpperCase()));
                    }when 'toUpperCase(locale)' {
                        results.add(new StringManipulationResponse(req.inputString.toUpperCase(req.stringParameter)));
                    }when 'trim()' {
                        results.add(new StringManipulationResponse(req.inputString.trim()));
                    }when 'uncapitalize()' {
                        results.add(new StringManipulationResponse(req.inputString.uncapitalize()));
                    }when 'unescapeCsv()' {
                        results.add(new StringManipulationResponse(req.inputString.unescapeCsv()));
                    }when 'unescapeEcmaScript()' {
                        results.add(new StringManipulationResponse(req.inputString.unescapeEcmaScript()));
                    }when 'unescapeHtml3()' {
                        results.add(new StringManipulationResponse(req.inputString.unescapeHtml3()));
                    }when 'unescapeHtml4()' {
                        results.add(new StringManipulationResponse(req.inputString.unescapeHtml4()));
                    }when 'unescapeJava()' {
                        results.add(new StringManipulationResponse(req.inputString.unescapeJava()));
                    }when 'unescapeUnicode()' {
                        results.add(new StringManipulationResponse(req.inputString.unescapeUnicode()));
                    }when 'unescapeXml()' {
                        results.add(new StringManipulationResponse(req.inputString.unescapeXml()));
                    }when 'valueOf(dateToConvert)' {
                        results.add(new StringManipulationResponse(String.valueOf(req.dateParameter)));
                    }when 'valueOf(datetimeToConvert)' {
                        results.add(new StringManipulationResponse(String.valueOf(req.dateTimeParameter)));
                    }when 'valueOf(decimalToConvert)' {
                        results.add(new StringManipulationResponse(String.valueOf(req.decimalParameter)));
                    }when 'valueOf(doubleToConvert)' {
                        results.add(new StringManipulationResponse(String.valueOf(req.doubleParameter)));
                    }when 'valueOf(integerToConvert)' {
                        results.add(new StringManipulationResponse(String.valueOf(req.integerParameter)));
                    }when 'valueOf(longToConvert)' {
                        results.add(new StringManipulationResponse(String.valueOf(req.longParameter)));
                    }when 'valueOf(toConvert)' {
                        results.add(new StringManipulationResponse(String.valueOf(req.stringParameter)));
                    }when 'valueOfGmt(datetimeToConvert)' {
                        results.add(new StringManipulationResponse(String.valueOf(req.dateTimeParameter)));
                    }when 'throwErrorForTest'{
                        // This will throw an error on purpose to test error handling
                        String nullString;
                        Integer nullStringLength = nullString.length();

                    }when else {
                        StringManipulationResponse smr = new StringManipulationResponse();
                        smr.errorOccurred = true;
                        smr.errorMessage = 'Did not recognize request for method ' + req.methodName;
                        results.add(smr);
                    }
                } // switch
            } // for each request


        } catch (Exception e) {
            StringManipulationResponse smr = new StringManipulationResponse();
            smr.errorOccurred = true;
            smr.errorMessage = e.getMessage();
            results.add(smr);
        }
        return results;
    } // method

    public class StringManipulationRequest {
        @InvocableVariable(label='Apex Method' required=true) public String methodName;
        @InvocableVariable(label='String to Manipulate' required=true) public String inputString;
        @InvocableVariable(label='String Parameter' required=false) public String stringParameter;
        @InvocableVariable(label='String Parameter 2' required=false) public String stringParameter2;
        @InvocableVariable(label='Integer Parameter' required=false) public Integer integerParameter;
        @InvocableVariable(label='Integer Parameter' required=false) public Integer integerParameter2;
        @InvocableVariable(label='Date Parameter' required=false) public Date dateParameter;
        @InvocableVariable(label='DateTime Parameter' required=false) public DateTime dateTimeParameter;
        @InvocableVariable(label='Decimal Parameter' required=false) public Decimal decimalParameter;
        @InvocableVariable(label='Double Parameter' required=false) public Double doubleParameter;
        @InvocableVariable(label='Long Parameter' required=false) public Long longParameter;

        @InvocableVariable(label='String List Parameter' required=false) public List<String> stringListParameter;
        @InvocableVariable(label='Integer List Parameter' required=false) public List<Integer> integerListParameter;


    }

    public class StringManipulationResponse {
        @InvocableVariable(label='error') public boolean errorOccurred;
        @InvocableVariable(label='error Message') public string errorMessage;
        @InvocableVariable(label='String Result') public string stringResult;
        @InvocableVariable(label='Boolean Result') public Boolean booleanResult;
        @InvocableVariable(label='Integer Result') public Integer integerResult;
        @InvocableVariable(label='String List Result') public List<String> stringListResult;
        @InvocableVariable(label='Integer List Result') public List<Integer> integerListResult;
        @InvocableVariable(label='has Response Value') public Boolean hasResponseValue;

        public StringManipulationResponse(List<Integer> value) {
            this();
            this.integerListResult = value;
            this.hasResponseValue = true;
        }
        public StringManipulationResponse(List<String> value) {
            this();
            this.stringListResult = value;
            this.hasResponseValue = true;
        }
        public StringManipulationResponse(Integer value) {
            this();
            this.integerResult = value;
            this.hasResponseValue = true;
        }
        public StringManipulationResponse(Boolean value) {
            this();
            this.booleanResult = value;
            this.hasResponseValue = true;
        }
        public StringManipulationResponse(String value) {
            this();
            this.stringResult = value;
            this.hasResponseValue = true;

        }
        public StringManipulationResponse() {
            this.errorOccurred = false;
            this.errorMessage = '';
            this.stringResult = '';
            this.hasResponseValue = false;
        }
    }
}
