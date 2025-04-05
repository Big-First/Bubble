namespace Bubble.Core;
public class CountryInfo
{
    public string Name { get; set; }         // Ex: "Brasil"
    public string DialCode { get; set; }     // Ex: "+55"
    public string IsoCode { get; set; }      // Ex: "BR"
    
    public string DisplayName
    {
        get { return $"{GetFlagEmoji(IsoCode)} {DialCode} ({Name})"; }
    }
    private static string GetFlagEmoji(string countryCode)
    {
        if (string.IsNullOrEmpty(countryCode) || countryCode.Length != 2)
            return "🏳️";

        int firstLetter = char.ToUpper(countryCode[0]) - 'A' + 0x1F1E6;
        int secondLetter = char.ToUpper(countryCode[1]) - 'A' + 0x1F1E6;
        return char.ConvertFromUtf32(firstLetter) + char.ConvertFromUtf32(secondLetter);
    }
}