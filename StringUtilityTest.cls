/**
 * Created by Bob.Hatcher on 5/31/23. Twitter: @BobHatcher
 *
 * Free to copy or distribute.
 * No warranty expressed or implied. Use at your own risk.
 * Provided under GNU General Public License v3.0
 *
 * See README at https://github.com/BobHatcher/StringUtilities
 */

@IsTest
public with sharing class StringUtilityTest {

    public static final String testString = 'The Quick Brown Fox Jumps Over the Lazy Dog The Quick Brown Fox Jumps Over the Lazy Dog The Quick Brown Fox Jumps Over the Lazy Dog \'Substring To Escape\'';
    public static StringUtility.StringManipulationRequest smr = new StringUtility.StringManipulationRequest();
    public static final String regExp = '/Fox/';

    static {
        smr.stringParameter = 'Fox';
        smr.stringParameter2 = 'Lazy';
        smr.inputString = testString;
        smr.integerParameter = 7;
        smr.integerParameter2 = 20;
        smr.integerListParameter = new List<Integer>{1,2,3,4,5};
        smr.stringListParameter = new List<String>{'Hello','Huckleberry','Homestead'};

    }

    @IsTest
    public static void abbreviate(){

        smr.methodName = 'abbreviate(maxWidth)';

        List<StringUtility.StringManipulationResponse> responses = StringUtility.methods(new List<StringUtility.StringManipulationRequest>{smr});
        System.assertEquals(responses.size(),1);
        StringUtility.StringManipulationResponse response = responses[0];

        System.assertEquals(testString.abbreviate(smr.integerParameter),response.stringResult);
    }

    @IsTest
    public static void abbreviate2(){

        smr.methodName = 'abbreviate(maxWidth, offset)';
        System.assertEquals(testString.abbreviate(smr.integerParameter,smr.integerParameter2),getResponse().stringResult);
    }

    @IsTest
    public static void capitalize(){

        smr.methodName = 'capitalize()';
        System.assertEquals(testString.capitalize(),getResponse().stringResult);
    }
    @IsTest
    public static void center(){

        smr.methodName = 'center(size)';
        System.assertEquals(testString.center(smr.integerParameter),getResponse().stringResult);
    }

    @IsTest
    public static void center2(){

        smr.methodName = 'center(size, paddingString)';
        smr.stringParameter = '     ';
        System.assertEquals(testString.center(smr.integerParameter,smr.stringParameter),getResponse().stringResult);
    }
    @IsTest
    public static void charAt(){

        smr.methodName = 'charAt(index)';
        System.assertEquals(testString.charAt(smr.integerParameter),getResponse().integerResult);
    }
    @IsTest
    public static void codePointAt(){

        smr.methodName = 'codePointAt(index)';
        System.assertEquals(testString.codePointAt(smr.integerParameter),getResponse().integerResult);
    }
    @IsTest
    public static void codePointBefore(){

        smr.methodName = 'codePointBefore(index)';
        System.assertEquals(testString.codePointBefore(smr.integerParameter),getResponse().integerResult);
    }
    @IsTest
    public static void codePointCount(){

        smr.methodName = 'codePointCount(beginIndex, endIndex)';
        System.assertEquals(testString.codePointCount(smr.integerParameter,smr.integerParameter2),getResponse().integerResult);
    }
    @IsTest
    public static void compareTo(){

        smr.methodName = 'compareTo(secondString)';
        System.assertEquals(testString.compareTo(smr.stringParameter),getResponse().integerResult);
    }
    @IsTest
    public static void contains(){

        smr.methodName = 'contains(substring)';
        System.assertEquals(testString.contains(smr.stringParameter),getResponse().booleanResult);
    }
    @IsTest
    public static void containsAny(){

        smr.methodName = 'containsAny(inputString)';
        System.assertEquals(testString.containsAny(smr.stringParameter),getResponse().booleanResult);
    }
    @IsTest
    public static void containsIgnoreCase(){

        smr.methodName = 'containsIgnoreCase(substring)';
        System.assertEquals(testString.containsIgnoreCase(smr.stringParameter),getResponse().booleanResult);
    }
    @IsTest
    public static void containsNone(){

        smr.methodName = 'containsNone(inputString)';
        System.assertEquals(testString.containsNone(smr.stringParameter),getResponse().booleanResult);
    }
    @IsTest
    public static void containsOnly(){

        smr.methodName = 'containsOnly(inputString)';
        System.assertEquals(testString.containsOnly(smr.stringParameter),getResponse().booleanResult);
    }
    @IsTest
    public static void containsWhitespace(){

        smr.methodName = 'containsWhitespace()';
        System.assertEquals(testString.containsWhitespace(),getResponse().booleanResult);
    }
    @IsTest
    public static void countMatches(){

        smr.methodName = 'countMatches(substring)';
        System.assertEquals(testString.countMatches(smr.stringParameter),getResponse().integerResult);
    }

    @IsTest
    public static void deleteWhitespace(){

        smr.methodName = 'deleteWhitespace()';
        System.assertEquals(testString.deleteWhitespace(),getResponse().stringResult);
    }
    @IsTest
    public static void difference(){

        smr.methodName = 'difference(secondString)';
        System.assertEquals(testString.difference(smr.stringParameter),getResponse().stringResult);
    }
    @IsTest
    public static void endsWith(){

        smr.methodName = 'endsWith(suffix)';
        System.assertEquals(testString.endsWith(smr.stringParameter),getResponse().booleanResult);
    }
    @IsTest
    public static void endsWithIgnoreCase(){

        smr.methodName = 'endsWithIgnoreCase(suffix)';
        System.assertEquals(testString.endsWithIgnoreCase(smr.stringParameter),getResponse().booleanResult);
    }
    @IsTest
    public static void equals(){

        smr.methodName = 'equals(stringOrId)';
        System.assertEquals(testString.equals(smr.stringParameter),getResponse().booleanResult);
    }
    @IsTest
    public static void equalsIgnoreCase(){

        smr.methodName = 'equalsIgnoreCase(secondString)';
        System.assertEquals(testString.equalsIgnoreCase(smr.stringParameter),getResponse().booleanResult);
    }
    @IsTest
    public static void escapeCsv(){

        smr.methodName = 'escapeCsv()';
        System.assertEquals(testString.escapeCsv(),getResponse().stringResult);
    }
    @IsTest
    public static void escapeEcmaScript(){

        smr.methodName = 'escapeEcmaScript()';
        System.assertEquals(testString.escapeEcmaScript(),getResponse().stringResult);
    }
    @IsTest
    public static void escapeHtml3(){

        smr.methodName = 'escapeHtml3()';
        System.assertEquals(testString.escapeHtml3(),getResponse().stringResult);
    }
    @IsTest
    public static void escapeHtml4(){

        smr.methodName = 'escapeHtml4()';
        System.assertEquals(testString.escapeHtml4(),getResponse().stringResult);
    }@IsTest
    public static void escapeJava(){

        smr.methodName = 'escapeJava()';
        System.assertEquals(testString.escapeJava(),getResponse().stringResult);
    }@IsTest
    public static void escapeSingleQuotes(){

        smr.methodName = 'escapeSingleQuotes(stringToEscape)';
        System.assertEquals(String.escapeSingleQuotes(testString),getResponse().stringResult);
    }
    @IsTest
    public static void escapeUnicode(){

        smr.methodName = 'escapeUnicode()';
        System.assertEquals(testString.escapeUnicode(),getResponse().stringResult);
    }
    @IsTest
    public static void escapeXml(){

        smr.methodName = 'escapeXml()';
        System.assertEquals(testString.escapeXml(),getResponse().stringResult);
    }
    @IsTest
    public static void format(){

        smr.methodName = 'format(stringToFormat, formattingArguments)';
        System.assertEquals(true,getResponse().errorOccurred);
    }
    @IsTest
    public static void fromCharArray(){

        smr.methodName = 'fromCharArray(charArray)';
        System.assertEquals(String.fromCharArray(smr.integerListParameter),getResponse().stringResult);
    }
    @IsTest
    public static void getChars(){

        smr.methodName = 'getChars()';
        System.assertEquals(testString.getChars(),getResponse().integerListResult);
    }
    @IsTest
    public static void getCommonPrefix(){
        smr.methodName = 'getCommonPrefix(strings)';
        System.assertEquals(String.getCommonPrefix(smr.stringListParameter),getResponse().stringResult);
    }
    @IsTest
    public static void getLevenshteinDistance(){
        smr.methodName = 'getLevenshteinDistance(stringToCompare)';
        System.assertEquals(testString.getLevenshteinDistance(smr.stringParameter),getResponse().integerResult);
    }
    @IsTest
    public static void getLevenshteinDistance2(){
        smr.methodName = 'getLevenshteinDistance(stringToCompare, threshold)';
        System.assertEquals(testString.getLevenshteinDistance(smr.stringParameter,smr.integerParameter),getResponse().integerResult);
    }
    @IsTest
    public static void hashCode(){
        smr.methodName = 'hashCode()';
        System.assertEquals(testString.hashCode(),getResponse().integerResult);
    }
    @IsTest
    public static void indexOf(){
        smr.methodName = 'indexOf(substring)';
        System.assertEquals(testString.indexOf(smr.stringParameter),getResponse().integerResult);
    }
    @IsTest
    public static void indexOf2(){
        smr.methodName = 'indexOf(substring, index)';
        System.assertEquals(testString.indexOf(smr.stringParameter,smr.integerParameter),getResponse().integerResult);
    }
    @IsTest
    public static void indexOfAny(){
        smr.methodName = 'indexOfAny(substring)';
        System.assertEquals(testString.indexOfAny(smr.stringParameter),getResponse().integerResult);
    }
    @IsTest
    public static void indexOfAnyBut(){
        smr.methodName = 'indexOfAnyBut(substring)';
        System.assertEquals(testString.indexOfAnyBut(smr.stringParameter),getResponse().integerResult);
    }
    @IsTest
    public static void indexOfChar(){
        smr.methodName = 'indexOfChar(character)';
        System.assertEquals(testString.indexOfChar(smr.integerParameter),getResponse().integerResult);
    }
    @IsTest
    public static void indexOfChar2() {
        smr.methodName = 'indexOfChar(character, startIndex)';
        System.assertEquals(testString.indexOfChar(smr.integerParameter,smr.integerParameter2),getResponse().integerResult);
    }
    @IsTest
    public static void indexOfDifference() {
        smr.methodName = 'indexOfDifference(stringToCompare)';
        System.assertEquals(testString.indexOfDifference(smr.stringParameter),getResponse().integerResult);
    }
    @IsTest
    public static void indexOfIgnoreCase() {
        smr.methodName = 'indexOfIgnoreCase(substring)';
        System.assertEquals(testString.indexOfIgnoreCase(smr.stringParameter),getResponse().integerResult);
    }
    @IsTest
    public static void indexOfIgnoreCase2() {
        smr.methodName = 'indexOfIgnoreCase(substring, startPosition)';
        System.assertEquals(testString.indexOfIgnoreCase(smr.stringParameter, smr.integerParameter),getResponse().integerResult);
    }
    @IsTest
    public static void isAllLowerCase() {
        smr.methodName = 'isAllLowerCase()';
        System.assertEquals(testString.isAllLowerCase(),getResponse().booleanResult);
    }
    @IsTest
    public static void isAllUpperCase() {
        smr.methodName = 'isAllUpperCase()';
        System.assertEquals(testString.isAllUpperCase(),getResponse().booleanResult);
    }
    @IsTest
    public static void isAlpha() {
        smr.methodName = 'isAlpha()';
        System.assertEquals(testString.isAlpha(),getResponse().booleanResult);
    }
    @IsTest
    public static void isAlphaSpace() {
        smr.methodName = 'isAlphaSpace()';
        System.assertEquals(testString.isAlphaSpace(),getResponse().booleanResult);
    }
    @IsTest
    public static void isAlphanumeric() {
        smr.methodName = 'isAlphanumeric()';
        System.assertEquals(testString.isAlphanumeric(),getResponse().booleanResult);
    }
    @IsTest
    public static void isAlphanumericSpace() {
        smr.methodName = 'isAlphanumericSpace()';
        System.assertEquals(testString.isAlphanumericSpace(),getResponse().booleanResult);
    }
    @IsTest
    public static void isAsciiPrintable() {
        smr.methodName = 'isAsciiPrintable()';
        System.assertEquals(testString.isAsciiPrintable(),getResponse().booleanResult);
    }
    @IsTest
    public static void isBlank() {
        smr.methodName = 'isBlank(inputString)';
        System.assertEquals(String.isBlank(testString),getResponse().booleanResult);
    }
    @IsTest
    public static void isEmpty() {
        smr.methodName = 'isEmpty(inputString)';
        System.assertEquals(String.isEmpty(testString),getResponse().booleanResult);
    }
    @IsTest
    public static void isNotBlank() {
        smr.methodName = 'isNotBlank(inputString)';
        System.assertEquals(String.isNotBlank(testString),getResponse().booleanResult);
    }
    @IsTest
    public static void isNotEmpty() {
        smr.methodName = 'isNotEmpty(inputString)';
        System.assertEquals(String.isNotEmpty(testString),getResponse().booleanResult);
    }
    @IsTest
    public static void isNumeric() {
        smr.methodName = 'isNumeric()';
        System.assertEquals(testString.isNumeric(),getResponse().booleanResult);
    }
    @IsTest
    public static void isNumericSpace() {
        smr.methodName = 'isNumericSpace()';
        System.assertEquals(testString.isNumericSpace(),getResponse().booleanResult);
    }
    @IsTest
    public static void isWhitespace() {
        smr.methodName = 'isWhitespace()';
        System.assertEquals(testString.isWhitespace(),getResponse().booleanResult);
    }
    @IsTest
    public static void join() {
        smr.methodName = 'join(iterableObj, separator)';
        smr.stringParameter = ',';
        System.assertEquals(String.join(smr.stringListParameter,','),getResponse().stringResult);
    }
    @IsTest
    public static void lastIndexOf() {
        smr.methodName = 'lastIndexOf(substring)';
        System.assertEquals(testString.lastIndexOf(smr.stringParameter),getResponse().integerResult);
    }
    @IsTest
    public static void lastIndexOf2() {
        smr.methodName = 'lastIndexOf(substring, endPosition)';
        System.assertEquals(testString.lastIndexOf(smr.stringParameter,smr.integerParameter),getResponse().integerResult);
    }
    @IsTest
    public static void lastIndexOfChar() {
        smr.methodName = 'lastIndexOfChar(character)';
        System.assertEquals(testString.lastIndexOfChar(smr.integerParameter),getResponse().integerResult);
    }
    @IsTest
    public static void lastIndexOfIgnoreCase() {
        smr.methodName = 'lastIndexOfIgnoreCase(substring)';
        System.assertEquals(testString.lastIndexOfIgnoreCase(smr.stringParameter),getResponse().integerResult);
    }
    @IsTest
    public static void lastIndexOfIgnoreCase2() {
        smr.methodName = 'lastIndexOfIgnoreCase(substring, endPosition)';
        System.assertEquals(testString.lastIndexOfIgnoreCase(smr.stringParameter,smr.integerParameter),getResponse().integerResult);
    }

    @IsTest
    public static void left() {
        smr.methodName = 'left(length)';
        System.assertEquals(testString.left(smr.integerParameter), getResponse().stringResult);
    }
    @IsTest
    public static void leftPad() {
        smr.methodName = 'leftPad(length)';
        System.assertEquals(testString.leftPad(smr.integerParameter), getResponse().stringResult);
    }
    @IsTest
    public static void leftPad2() {
        smr.methodName = 'leftPad(length, padStr)';System.assertEquals(testString.leftPad(smr.integerParameter, smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void length() {
        smr.methodName = 'length()';
        System.assertEquals(testString.length(), getResponse().integerResult);
    }
    @IsTest
    public static void mid() {
        smr.methodName = 'mid(startIndex, length)';
        System.assertEquals(testString.mid(smr.integerParameter, smr.integerParameter2), getResponse().stringResult);
    }
    @IsTest
    public static void normalizeSpace() {
        smr.methodName = 'normalizeSpace()';
        System.assertEquals(testString.normalizeSpace(), getResponse().stringResult);
    }
    @IsTest
    public static void offsetByCodePoints() {
        smr.methodName = 'offsetByCodePoints(index, codePointOffset)';
        System.assertEquals(testString.offsetByCodePoints(smr.integerParameter, smr.integerParameter2), getResponse().integerResult);
    }
    @IsTest
    public static void remove() {
        smr.methodName = 'remove(substring)';
        System.assertEquals(testString.remove(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void removeEnd() {
        smr.methodName = 'removeEnd(substring)';
        System.assertEquals(testString.removeEnd(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void removeEndIgnoreCase() {
        smr.methodName = 'removeEndIgnoreCase(substring)';
        System.assertEquals(testString.removeEndIgnoreCase(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void removeStart() {
        smr.methodName = 'removeStart(substring)';
        System.assertEquals(testString.removeStart(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void removeStartIgnoreCase() {
        smr.methodName = 'removeStartIgnoreCase(substring)';
        System.assertEquals(testString.removeStartIgnoreCase(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void repeat() {
        smr.methodName = 'repeat(numberOfTimes)';
        System.assertEquals(testString.repeat(smr.integerParameter), getResponse().stringResult);
    }
    @IsTest
    public static void repeat2() {
        smr.methodName = 'repeat(separator, numberOfTimes)';
        System.assertEquals(testString.repeat(smr.stringParameter,smr.integerParameter), getResponse().stringResult);
    }
    @IsTest
    public static void replace() {
        smr.methodName = 'replace(target, replacement)';
        System.assertEquals(testString.replace(smr.stringParameter,smr.stringParameter2), getResponse().stringResult);
    }
    @IsTest
    public static void replaceAll() {
        smr.methodName = 'replaceAll(regExp, replacement)';
        System.assertEquals(testString.replaceAll(smr.stringParameter,smr.stringParameter2), getResponse().stringResult);
    }
    @IsTest
    public static void replaceFirst() {
        smr.methodName = 'replaceFirst(regExp, replacement)';
        System.assertEquals(testString.replaceFirst(smr.stringParameter,smr.stringParameter2), getResponse().stringResult);
    }
    @IsTest
    public static void reverse() {
        smr.methodName = 'reverse()';
        System.assertEquals(testString.reverse(), getResponse().stringResult);
    }
    @IsTest
    public static void right() {
        smr.methodName = 'right(length)';
        System.assertEquals(testString.right(smr.integerParameter), getResponse().stringResult);
    }
    @IsTest
    public static void rightPad() {
        smr.methodName = 'rightPad(length)';
        System.assertEquals(testString.rightPad(smr.integerParameter), getResponse().stringResult);
    }
    @IsTest
    public static void rightPad2() {
        smr.methodName = 'rightPad(length, padStr)';
        System.assertEquals(testString.rightPad(smr.integerParameter, smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void split() {
        smr.methodName = 'split(regExp)';
        System.assertEquals(testString.split(smr.stringParameter), getResponse().stringListResult);
    }
    @IsTest
    public static void split2() {
        smr.methodName = 'split(regExp, limit)';
        System.assertEquals(testString.split(smr.stringParameter, smr.integerParameter), getResponse().stringListResult);
    }
    @IsTest
    public static void splitByCharacterType() {
        smr.methodName = 'splitByCharacterType()';
        System.assertEquals(testString.splitByCharacterType(), getResponse().stringListResult);
    }
    @IsTest
    public static void splitByCharacterTypeCamelCase() {
        smr.methodName = 'splitByCharacterTypeCamelCase()';
        System.assertEquals(testString.splitByCharacterTypeCamelCase(), getResponse().stringListResult);
    }
    @IsTest
    public static void startsWith() {
        smr.methodName = 'startsWith(prefix)';
        System.assertEquals(testString.startsWith(smr.stringParameter), getResponse().booleanResult);
    }
    @IsTest
    public static void startsWithIgnoreCase() {
        smr.methodName = 'startsWithIgnoreCase(prefix)';
        System.assertEquals(testString.startsWithIgnoreCase(smr.stringParameter), getResponse().booleanResult);
    }
    @IsTest
    public static void stripHtmlTags() {
        smr.methodName = 'stripHtmlTags()';
        System.assertEquals(testString.stripHtmlTags(), getResponse().stringResult);
    }
    @IsTest
    public static void substring() {
        smr.methodName = 'substring(startIndex)';
        System.assertEquals(testString.substring(smr.integerParameter), getResponse().stringResult);
    }
    @IsTest
    public static void substring2() {
        smr.methodName = 'substring(startIndex, endIndex)';
        System.assertEquals(testString.substring(smr.integerParameter, smr.integerParameter2), getResponse().stringResult);
    }
    @IsTest
    public static void substringAfter() {
        smr.methodName = 'substringAfter(separator)';
        System.assertEquals(testString.substringAfter(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void substringAfterLast() {
        smr.methodName = 'substringAfterLast(separator)';
        System.assertEquals(testString.substringAfterLast(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void substringBefore() {
        smr.methodName = 'substringBefore(separator)';
        System.assertEquals(testString.substringBefore(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void substringBeforeLast() {
        smr.methodName = 'substringBeforeLast(separator)';
        System.assertEquals(testString.substringBeforeLast(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void substringBetween() {
        smr.methodName = 'substringBetween(tag)';
        System.assertEquals(testString.substringBetween(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void substringBetween2() {
        smr.methodName = 'substringBetween(open, close)';
        System.assertEquals(testString.substringBetween(smr.stringParameter, smr.stringParameter2 ), getResponse().stringResult);
    }
    @IsTest
    public static void swapCase() {
        smr.methodName = 'swapCase()';
        System.assertEquals(testString.swapCase(), getResponse().stringResult);
    }
    @IsTest
    public static void toLowerCase() {
        smr.methodName = 'toLowerCase()';
        System.assertEquals(testString.toLowerCase(), getResponse().stringResult);
    }
    @IsTest
    public static void toLowerCase2() {
        smr.methodName = 'toLowerCase(locale)';
        System.assertEquals(testString.toLowerCase(), getResponse().stringResult);
    }
    @IsTest
    public static void toUpperCase() {
        smr.methodName = 'toUpperCase()';
        System.assertEquals(testString.toUpperCase(), getResponse().stringResult);
    }
    @IsTest
    public static void toUpperCase2() {
        smr.methodName = 'toUpperCase(locale)';
        System.assertEquals(testString.toUpperCase(), getResponse().stringResult);
    }
    @IsTest
    public static void trim() {
        smr.methodName = 'trim()';
        System.assertEquals(testString.trim(), getResponse().stringResult);
    }
    @IsTest
    public static void uncapitalize() {
        smr.methodName = 'uncapitalize()';
        System.assertEquals(testString.uncapitalize(), getResponse().stringResult);
    }
    @IsTest
    public static void unescapeCsv() {
        smr.methodName = 'unescapeCsv()';
        System.assertEquals(testString.unescapeCsv(), getResponse().stringResult);
    }
    @IsTest
    public static void unescapeEcmaScript() {
        smr.methodName = 'unescapeEcmaScript()';
        System.assertEquals(testString.unescapeEcmaScript(), getResponse().stringResult);
    }
    @IsTest
    public static void unescapeHtml3() {
        smr.methodName = 'unescapeHtml3()';
        System.assertEquals(testString.unescapeHtml3(), getResponse().stringResult);
    }
    @IsTest
    public static void unescapeHtml4() {
        smr.methodName = 'unescapeHtml4()';
        System.assertEquals(testString.unescapeHtml4(), getResponse().stringResult);
    }
    @IsTest
    public static void unescapeJava() {
        smr.methodName = 'unescapeJava()';
        System.assertEquals(testString.unescapeJava(), getResponse().stringResult);
    }
    @IsTest
    public static void unescapeUnicode() {
        smr.methodName = 'unescapeUnicode()';
        System.assertEquals(testString.unescapeUnicode(), getResponse().stringResult);
    }
    @IsTest
    public static void unescapeXml() {
        smr.methodName = 'unescapeXml()';
        System.assertEquals(testString.unescapeXml(), getResponse().stringResult);
    }
    @IsTest
    public static void valueOf() {
        smr.methodName = 'valueOf(dateToConvert)';
        System.assertEquals(String.valueOf(smr.dateParameter), getResponse().stringResult);
    }
    @IsTest
    public static void valueOf2() {
        smr.methodName = 'valueOf(datetimeToConvert)';
        System.assertEquals(String.valueOf(smr.dateTimeParameter), getResponse().stringResult);
    }
    @IsTest
    public static void valueOf3() {
        smr.methodName = 'valueOf(decimalToConvert)';
        System.assertEquals(String.valueOf(smr.decimalParameter), getResponse().stringResult);
    }
    @IsTest
    public static void valueOf4() {
        smr.methodName = 'valueOf(doubleToConvert)';
        System.assertEquals(String.valueOf(smr.doubleParameter), getResponse().stringResult);
    }
    @IsTest
    public static void valueOf5() {
        smr.methodName = 'valueOf(integerToConvert)';
        System.assertEquals(String.valueOf(smr.integerParameter), getResponse().stringResult);
    }
    @IsTest
    public static void valueOf6() {
        smr.methodName = 'valueOf(longToConvert)';
        System.assertEquals(String.valueOf(smr.longParameter), getResponse().stringResult);
    }
    @IsTest
    public static void valueOf7() {
        smr.methodName = 'valueOf(toConvert)';
        System.assertEquals(String.valueOf(smr.stringParameter), getResponse().stringResult);
    }
    @IsTest
    public static void valueOfGmt() {
        smr.methodName = 'valueOfGmt(datetimeToConvert)';
        System.assertEquals(String.valueOfGmt(smr.datetimeParameter), getResponse().stringResult);
    }

    @isTest
    public static void errorHandling(){
        smr.methodName = 'throwErrorForTest';
        Test.startTest();
        System.assertEquals(true, getResponse().errorOccurred);
        Test.StopTest();
    }
    public static StringUtility.StringManipulationResponse getResponse(){
        List<StringUtility.StringManipulationResponse> responses = StringUtility.methods(new List<StringUtility.StringManipulationRequest>{smr});
        System.assertEquals(responses.size(),1);
        return responses[0];
    }
}