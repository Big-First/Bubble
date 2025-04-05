using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bubble.Core;

namespace Bubble.Views;

public partial class Profile : ContentPage
{
    public List<CountryInfo> CountryList { get; set; }
    private CountryInfo _selectedCountry;
    
    public CountryInfo SelectedCountry
    {
        get => _selectedCountry;
        set
        {
            if (_selectedCountry != value)
            {
                _selectedCountry = value;
                System.Diagnostics.Debug.WriteLine($"País selecionado: {_selectedCountry?.DialCode}");
            }
        }
    }
    public Profile()
    {
        InitializeComponent();
        BindingContext = this;
        LoadCountries();
        

    }
    private void LoadCountries()
    {
        /*
        CountryList = new List<CountryInfo>
        {
            new CountryInfo { Name = "Brasil", DialCode = "+55", IsoCode = "BR" },
            new CountryInfo { Name = "Estados Unidos", DialCode = "+1", IsoCode = "US" },
            new CountryInfo { Name = "Portugal", DialCode = "+351", IsoCode = "PT" },
            new CountryInfo { Name = "Reino Unido", DialCode = "+44", IsoCode = "GB" },
            new CountryInfo { Name = "Argentina", DialCode = "+54", IsoCode = "AR" },
            new CountryInfo { Name = "Espanha", DialCode = "+34", IsoCode = "ES" },
        };
        */
        CountryList = new List<CountryInfo>
        {
            new CountryInfo { Name = "Afeganistão", DialCode = "+93", IsoCode = "AF" },
            new CountryInfo { Name = "Albânia", DialCode = "+355", IsoCode = "AL" },
            new CountryInfo { Name = "Argélia", DialCode = "+213", IsoCode = "DZ" },
            new CountryInfo { Name = "Samoa Americana", DialCode = "+1-684", IsoCode = "AS" },
            new CountryInfo { Name = "Andorra", DialCode = "+376", IsoCode = "AD" },
            new CountryInfo { Name = "Angola", DialCode = "+244", IsoCode = "AO" },
            new CountryInfo { Name = "Anguila", DialCode = "+1-264", IsoCode = "AI" },
            new CountryInfo { Name = "Antígua e Barbuda", DialCode = "+1-268", IsoCode = "AG" },
            new CountryInfo { Name = "Argentina", DialCode = "+54", IsoCode = "AR" },
            new CountryInfo { Name = "Armênia", DialCode = "+374", IsoCode = "AM" },
            new CountryInfo { Name = "Aruba", DialCode = "+297", IsoCode = "AW" },
            new CountryInfo { Name = "Austrália", DialCode = "+61", IsoCode = "AU" },
            new CountryInfo { Name = "Áustria", DialCode = "+43", IsoCode = "AT" },
            new CountryInfo { Name = "Azerbaijão", DialCode = "+994", IsoCode = "AZ" },
            new CountryInfo { Name = "Bahamas", DialCode = "+1-242", IsoCode = "BS" },
            new CountryInfo { Name = "Bahrein", DialCode = "+973", IsoCode = "BH" },
            new CountryInfo { Name = "Bangladesh", DialCode = "+880", IsoCode = "BD" },
            new CountryInfo { Name = "Barbados", DialCode = "+1-246", IsoCode = "BB" },
            new CountryInfo { Name = "Bielorrússia", DialCode = "+375", IsoCode = "BY" },
            new CountryInfo { Name = "Bélgica", DialCode = "+32", IsoCode = "BE" },
            new CountryInfo { Name = "Belize", DialCode = "+501", IsoCode = "BZ" },
            new CountryInfo { Name = "Benim", DialCode = "+229", IsoCode = "BJ" },
            new CountryInfo { Name = "Bermudas", DialCode = "+1-441", IsoCode = "BM" },
            new CountryInfo { Name = "Butão", DialCode = "+975", IsoCode = "BT" },
            new CountryInfo { Name = "Bolívia", DialCode = "+591", IsoCode = "BO" },
            new CountryInfo { Name = "Bósnia e Herzegovina", DialCode = "+387", IsoCode = "BA" },
            new CountryInfo { Name = "Botswana", DialCode = "+267", IsoCode = "BW" },
            new CountryInfo { Name = "Brasil", DialCode = "+55", IsoCode = "BR" },
            new CountryInfo { Name = "Território Britânico do Oceano Índico", DialCode = "+246", IsoCode = "IO" },
            new CountryInfo { Name = "Brunei", DialCode = "+673", IsoCode = "BN" },
            new CountryInfo { Name = "Bulgária", DialCode = "+359", IsoCode = "BG" },
            new CountryInfo { Name = "Burkina Faso", DialCode = "+226", IsoCode = "BF" },
            new CountryInfo { Name = "Burundi", DialCode = "+257", IsoCode = "BI" },
            new CountryInfo { Name = "Camboja", DialCode = "+855", IsoCode = "KH" },
            new CountryInfo { Name = "Camarões", DialCode = "+237", IsoCode = "CM" },
            new CountryInfo { Name = "Canadá", DialCode = "+1", IsoCode = "CA" },
            new CountryInfo { Name = "Cabo Verde", DialCode = "+238", IsoCode = "CV" },
            new CountryInfo { Name = "Ilhas Cayman", DialCode = "+1-345", IsoCode = "KY" },
            new CountryInfo { Name = "República Centro-Africana", DialCode = "+236", IsoCode = "CF" },
            new CountryInfo { Name = "Chade", DialCode = "+235", IsoCode = "TD" },
            new CountryInfo { Name = "Chile", DialCode = "+56", IsoCode = "CL" },
            new CountryInfo { Name = "China", DialCode = "+86", IsoCode = "CN" },
            new CountryInfo { Name = "Ilha do Natal", DialCode = "+61", IsoCode = "CX" },
            new CountryInfo { Name = "Ilhas Cocos (Keeling)", DialCode = "+61", IsoCode = "CC" },
            new CountryInfo { Name = "Colômbia", DialCode = "+57", IsoCode = "CO" },
            new CountryInfo { Name = "Comores", DialCode = "+269", IsoCode = "KM" },
            new CountryInfo { Name = "Congo (Brazzaville)", DialCode = "+242", IsoCode = "CG" },
            new CountryInfo { Name = "Congo (Kinshasa)", DialCode = "+243", IsoCode = "CD" },
            new CountryInfo { Name = "Costa Rica", DialCode = "+506", IsoCode = "CR" },
            new CountryInfo { Name = "Costa do Marfim", DialCode = "+225", IsoCode = "CI" },
            new CountryInfo { Name = "Croácia", DialCode = "+385", IsoCode = "HR" },
            new CountryInfo { Name = "Cuba", DialCode = "+53", IsoCode = "CU" },
            new CountryInfo { Name = "Chipre", DialCode = "+357", IsoCode = "CY" },
            new CountryInfo { Name = "República Tcheca", DialCode = "+420", IsoCode = "CZ" },
            new CountryInfo { Name = "Dinamarca", DialCode = "+45", IsoCode = "DK" },
            new CountryInfo { Name = "Djibuti", DialCode = "+253", IsoCode = "DJ" },
            new CountryInfo { Name = "Dominica", DialCode = "+1-767", IsoCode = "DM" },
            new CountryInfo { Name = "República Dominicana", DialCode = "+1-809", IsoCode = "DO" },
            new CountryInfo { Name = "Equador", DialCode = "+593", IsoCode = "EC" },
            new CountryInfo { Name = "Egito", DialCode = "+20", IsoCode = "EG" },
            new CountryInfo { Name = "El Salvador", DialCode = "+503", IsoCode = "SV" },
            new CountryInfo { Name = "Guiné Equatorial", DialCode = "+240", IsoCode = "GQ" },
            new CountryInfo { Name = "Eritreia", DialCode = "+291", IsoCode = "ER" },
            new CountryInfo { Name = "Estônia", DialCode = "+372", IsoCode = "EE" },
            new CountryInfo { Name = "Etiópia", DialCode = "+251", IsoCode = "ET" },
            new CountryInfo { Name = "Ilhas Malvinas", DialCode = "+500", IsoCode = "FK" },
            new CountryInfo { Name = "Ilhas Faroé", DialCode = "+298", IsoCode = "FO" },
            new CountryInfo { Name = "Fiji", DialCode = "+679", IsoCode = "FJ" },
            new CountryInfo { Name = "Finlândia", DialCode = "+358", IsoCode = "FI" },
            new CountryInfo { Name = "França", DialCode = "+33", IsoCode = "FR" },
            new CountryInfo { Name = "Guiana Francesa", DialCode = "+594", IsoCode = "GF" },
            new CountryInfo { Name = "Polinésia Francesa", DialCode = "+689", IsoCode = "PF" },
            new CountryInfo { Name = "Gabão", DialCode = "+241", IsoCode = "GA" },
            new CountryInfo { Name = "Gâmbia", DialCode = "+220", IsoCode = "GM" },
            new CountryInfo { Name = "Geórgia", DialCode = "+995", IsoCode = "GE" },
            new CountryInfo { Name = "Alemanha", DialCode = "+49", IsoCode = "DE" },
            new CountryInfo { Name = "Gana", DialCode = "+233", IsoCode = "GH" },
            new CountryInfo { Name = "Gibraltar", DialCode = "+350", IsoCode = "GI" },
            new CountryInfo { Name = "Grécia", DialCode = "+30", IsoCode = "GR" },
            new CountryInfo { Name = "Groenlândia", DialCode = "+299", IsoCode = "GL" },
            new CountryInfo { Name = "Granada", DialCode = "+1-473", IsoCode = "GD" },
            new CountryInfo { Name = "Guadalupe", DialCode = "+590", IsoCode = "GP" },
            new CountryInfo { Name = "Guam", DialCode = "+1-671", IsoCode = "GU" },
            new CountryInfo { Name = "Guatemala", DialCode = "+502", IsoCode = "GT" },
            new CountryInfo { Name = "Guernsey", DialCode = "+44-1481", IsoCode = "GG" },
            new CountryInfo { Name = "Guiné", DialCode = "+224", IsoCode = "GN" },
            new CountryInfo { Name = "Guiné-Bissau", DialCode = "+245", IsoCode = "GW" },
            new CountryInfo { Name = "Guiana", DialCode = "+592", IsoCode = "GY" },
            new CountryInfo { Name = "Haiti", DialCode = "+509", IsoCode = "HT" },
            new CountryInfo { Name = "Honduras", DialCode = "+504", IsoCode = "HN" },
            new CountryInfo { Name = "Hong Kong", DialCode = "+852", IsoCode = "HK" },
            new CountryInfo { Name = "Hungria", DialCode = "+36", IsoCode = "HU" },
            new CountryInfo { Name = "Islândia", DialCode = "+354", IsoCode = "IS" },
            new CountryInfo { Name = "Índia", DialCode = "+91", IsoCode = "IN" },
            new CountryInfo { Name = "Indonésia", DialCode = "+62", IsoCode = "ID" },
            new CountryInfo { Name = "Irã", DialCode = "+98", IsoCode = "IR" },
            new CountryInfo { Name = "Iraque", DialCode = "+964", IsoCode = "IQ" },
            new CountryInfo { Name = "Irlanda", DialCode = "+353", IsoCode = "IE" },
            new CountryInfo { Name = "Ilha de Man", DialCode = "+44-1624", IsoCode = "IM" },
            new CountryInfo { Name = "Israel", DialCode = "+972", IsoCode = "IL" },
            new CountryInfo { Name = "Itália", DialCode = "+39", IsoCode = "IT" },
            new CountryInfo { Name = "Jamaica", DialCode = "+1-876", IsoCode = "JM" },
            new CountryInfo { Name = "Japão", DialCode = "+81", IsoCode = "JP" },
            new CountryInfo { Name = "Jersey", DialCode = "+44-1534", IsoCode = "JE" },
            new CountryInfo { Name = "Jordânia", DialCode = "+962", IsoCode = "JO" },
            new CountryInfo { Name = "Cazaquistão", DialCode = "+7", IsoCode = "KZ" },
            new CountryInfo { Name = "Quênia", DialCode = "+254", IsoCode = "KE" },
            new CountryInfo { Name = "Kiribati", DialCode = "+686", IsoCode = "KI" },
            new CountryInfo { Name = "Coreia do Norte", DialCode = "+850", IsoCode = "KP" },
            new CountryInfo { Name = "Coreia do Sul", DialCode = "+82", IsoCode = "KR" },
            new CountryInfo { Name = "Kosovo", DialCode = "+383", IsoCode = "XK" },
            new CountryInfo { Name = "Kuwait", DialCode = "+965", IsoCode = "KW" },
            new CountryInfo { Name = "Quirguistão", DialCode = "+996", IsoCode = "KG" },
            new CountryInfo { Name = "Laos", DialCode = "+856", IsoCode = "LA" },
            new CountryInfo { Name = "Letônia", DialCode = "+371", IsoCode = "LV" },
            new CountryInfo { Name = "Líbano", DialCode = "+961", IsoCode = "LB" },
            new CountryInfo { Name = "Lesoto", DialCode = "+266", IsoCode = "LS" },
            new CountryInfo { Name = "Libéria", DialCode = "+231", IsoCode = "LR" },
            new CountryInfo { Name = "Líbia", DialCode = "+218", IsoCode = "LY" },
            new CountryInfo { Name = "Liechtenstein", DialCode = "+423", IsoCode = "LI" },
            new CountryInfo { Name = "Lituânia", DialCode = "+370", IsoCode = "LT" },
            new CountryInfo { Name = "Luxemburgo", DialCode = "+352", IsoCode = "LU" },
            new CountryInfo { Name = "Macau", DialCode = "+853", IsoCode = "MO" },
            new CountryInfo { Name = "Macedônia do Norte", DialCode = "+389", IsoCode = "MK" },
            new CountryInfo { Name = "Madagascar", DialCode = "+261", IsoCode = "MG" },
            new CountryInfo { Name = "Malawi", DialCode = "+265", IsoCode = "MW" },
            new CountryInfo { Name = "Malásia", DialCode = "+60", IsoCode = "MY" },
            new CountryInfo { Name = "Maldivas", DialCode = "+960", IsoCode = "MV" },
            new CountryInfo { Name = "Mali", DialCode = "+223", IsoCode = "ML" },
            new CountryInfo { Name = "Malta", DialCode = "+356", IsoCode = "MT" },
            new CountryInfo { Name = "Ilhas Marshall", DialCode = "+692", IsoCode = "MH" },
            new CountryInfo { Name = "Martinica", DialCode = "+596", IsoCode = "MQ" },
            new CountryInfo { Name = "Mauritânia", DialCode = "+222", IsoCode = "MR" },
            new CountryInfo { Name = "Maurícia", DialCode = "+230", IsoCode = "MU" },
            new CountryInfo { Name = "Mayotte", DialCode = "+262", IsoCode = "YT" },
            new CountryInfo { Name = "México", DialCode = "+52", IsoCode = "MX" },
            new CountryInfo { Name = "Micronésia", DialCode = "+691", IsoCode = "FM" },
            new CountryInfo { Name = "Moldávia", DialCode = "+373", IsoCode = "MD" },
            new CountryInfo { Name = "Mônaco", DialCode = "+377", IsoCode = "MC" },
            new CountryInfo { Name = "Mongólia", DialCode = "+976", IsoCode = "MN" },
            new CountryInfo { Name = "Montenegro", DialCode = "+382", IsoCode = "ME" },
            new CountryInfo { Name = "Montserrat", DialCode = "+1-664", IsoCode = "MS" },
            new CountryInfo { Name = "Marrocos", DialCode = "+212", IsoCode = "MA" },
            new CountryInfo { Name = "Moçambique", DialCode = "+258", IsoCode = "MZ" },
            new CountryInfo { Name = "Myanmar (Birmânia)", DialCode = "+95", IsoCode = "MM" },
            new CountryInfo { Name = "Namíbia", DialCode = "+264", IsoCode = "NA" },
            new CountryInfo { Name = "Nauru", DialCode = "+674", IsoCode = "NR" },
            new CountryInfo { Name = "Nepal", DialCode = "+977", IsoCode = "NP" },
            new CountryInfo { Name = "Países Baixos", DialCode = "+31", IsoCode = "NL" },
            new CountryInfo { Name = "Nova Caledônia", DialCode = "+687", IsoCode = "NC" },
            new CountryInfo { Name = "Nova Zelândia", DialCode = "+64", IsoCode = "NZ" },
            new CountryInfo { Name = "Nicarágua", DialCode = "+505", IsoCode = "NI" },
            new CountryInfo { Name = "Níger", DialCode = "+227", IsoCode = "NE" },
            new CountryInfo { Name = "Nigéria", DialCode = "+234", IsoCode = "NG" },
            new CountryInfo { Name = "Niue", DialCode = "+683", IsoCode = "NU" },
            new CountryInfo { Name = "Ilha Norfolk", DialCode = "+672", IsoCode = "NF" },
            new CountryInfo { Name = "Ilhas Marianas Setentrionais", DialCode = "+1-670", IsoCode = "MP" },
            new CountryInfo { Name = "Noruega", DialCode = "+47", IsoCode = "NO" },
            new CountryInfo { Name = "Omã", DialCode = "+968", IsoCode = "OM" },
            new CountryInfo { Name = "Paquistão", DialCode = "+92", IsoCode = "PK" },
            new CountryInfo { Name = "Palau", DialCode = "+680", IsoCode = "PW" },
            new CountryInfo { Name = "Palestina", DialCode = "+970", IsoCode = "PS" },
            new CountryInfo { Name = "Panamá", DialCode = "+507", IsoCode = "PA" },
            new CountryInfo { Name = "Papua-Nova Guiné", DialCode = "+675", IsoCode = "PG" },
            new CountryInfo { Name = "Paraguai", DialCode = "+595", IsoCode = "PY" },
            new CountryInfo { Name = "Peru", DialCode = "+51", IsoCode = "PE" },
            new CountryInfo { Name = "Filipinas", DialCode = "+63", IsoCode = "PH" },
            new CountryInfo { Name = "Ilhas Pitcairn", DialCode = "+64", IsoCode = "PN" },
            new CountryInfo { Name = "Polônia", DialCode = "+48", IsoCode = "PL" },
            new CountryInfo { Name = "Portugal", DialCode = "+351", IsoCode = "PT" },
            new CountryInfo { Name = "Porto Rico", DialCode = "+1-787", IsoCode = "PR" },
            new CountryInfo { Name = "Catar", DialCode = "+974", IsoCode = "QA" },
            new CountryInfo { Name = "Romênia", DialCode = "+40", IsoCode = "RO" },
            new CountryInfo { Name = "Rússia", DialCode = "+7", IsoCode = "RU" },
            new CountryInfo { Name = "Ruanda", DialCode = "+250", IsoCode = "RW" },
            new CountryInfo { Name = "Reunião", DialCode = "+262", IsoCode = "RE" },
            new CountryInfo { Name = "Santa Lúcia", DialCode = "+1-758", IsoCode = "LC" },
            new CountryInfo { Name = "São Vicente e Granadinas", DialCode = "+1-784", IsoCode = "VC" },
            new CountryInfo { Name = "Samoa", DialCode = "+685", IsoCode = "WS" },
            new CountryInfo { Name = "San Marino", DialCode = "+378", IsoCode = "SM" },
            new CountryInfo { Name = "Santo Tomé e Príncipe", DialCode = "+239", IsoCode = "ST" },
            new CountryInfo { Name = "Arábia Saudita", DialCode = "+966", IsoCode = "SA" },
            new CountryInfo { Name = "Senegal", DialCode = "+221", IsoCode = "SN" },
            new CountryInfo { Name = "Sérvia", DialCode = "+381", IsoCode = "RS" },
            new CountryInfo { Name = "Seychelles", DialCode = "+248", IsoCode = "SC" },
            new CountryInfo { Name = "Serra Leoa", DialCode = "+232", IsoCode = "SL" },
            new CountryInfo { Name = "Singapura", DialCode = "+65", IsoCode = "SG" },
            new CountryInfo { Name = "Sint Maarten", DialCode = "+1-721", IsoCode = "SX" },
            new CountryInfo { Name = "Eslováquia", DialCode = "+421", IsoCode = "SK" },
            new CountryInfo { Name = "Eslovênia", DialCode = "+386", IsoCode = "SI" },
            new CountryInfo { Name = "Ilhas Salomão", DialCode = "+677", IsoCode = "SB" },
            new CountryInfo { Name = "Somália", DialCode = "+252", IsoCode = "SO" },
            new CountryInfo { Name = "África do Sul", DialCode = "+27", IsoCode = "ZA" },
            new CountryInfo { Name = "Sudão do Sul", DialCode = "+211", IsoCode = "SS" },
            new CountryInfo { Name = "Espanha", DialCode = "+34", IsoCode = "ES" },
            new CountryInfo { Name = "Sri Lanka", DialCode = "+94", IsoCode = "LK" },
            new CountryInfo { Name = "Sudão", DialCode = "+249", IsoCode = "SD" },
            new CountryInfo { Name = "Suriname", DialCode = "+597", IsoCode = "SR" },
            new CountryInfo { Name = "Ilhas Svalbard e Jan Mayen", DialCode = "+47", IsoCode = "SJ" },
            new CountryInfo { Name = "Suazilândia", DialCode = "+268", IsoCode = "SZ" },
            new CountryInfo { Name = "Suécia", DialCode = "+46", IsoCode = "SE" },
            new CountryInfo { Name = "Suíça", DialCode = "+41", IsoCode = "CH" },
            new CountryInfo { Name = "Síria", DialCode = "+963", IsoCode = "SY" },
            new CountryInfo { Name = "Taiwan", DialCode = "+886", IsoCode = "TW" },
            new CountryInfo { Name = "Tajiquistão", DialCode = "+992", IsoCode = "TJ" },
            new CountryInfo { Name = "Tanzânia", DialCode = "+255", IsoCode = "TZ" },
            new CountryInfo { Name = "Tailândia", DialCode = "+66", IsoCode = "TH" },
            new CountryInfo { Name = "Timor-Leste", DialCode = "+670", IsoCode = "TL" },
            new CountryInfo { Name = "Togo", DialCode = "+228", IsoCode = "TG" },
            new CountryInfo { Name = "Tonga", DialCode = "+676", IsoCode = "TO" },
            new CountryInfo { Name = "Trinidad e Tobago", DialCode = "+1-868", IsoCode = "TT" },
            new CountryInfo { Name = "Tunísia", DialCode = "+216", IsoCode = "TN" },
            new CountryInfo { Name = "Turquia", DialCode = "+90", IsoCode = "TR" },
            new CountryInfo { Name = "Turcomenistão", DialCode = "+993", IsoCode = "TM" },
            new CountryInfo { Name = "Ilhas Turcas e Caicos", DialCode = "+1-649", IsoCode = "TC" },
            new CountryInfo { Name = "Tuvalu", DialCode = "+688", IsoCode = "TV" },
            new CountryInfo { Name = "Uganda", DialCode = "+256", IsoCode = "UG" },
            new CountryInfo { Name = "Ucrânia", DialCode = "+380", IsoCode = "UA" },
            new CountryInfo { Name = "Emirados Árabes Unidos", DialCode = "+971", IsoCode = "AE" },
            new CountryInfo { Name = "Reino Unido", DialCode = "+44", IsoCode = "GB" },
            new CountryInfo { Name = "Estados Unidos", DialCode = "+1", IsoCode = "US" },
            new CountryInfo { Name = "Uruguai", DialCode = "+598", IsoCode = "UY" },
            new CountryInfo { Name = "Uzbequistão", DialCode = "+998", IsoCode = "UZ" },
            new CountryInfo { Name = "Vanuatu", DialCode = "+678", IsoCode = "VU" },
            new CountryInfo { Name = "Vaticano", DialCode = "+379", IsoCode = "VA" },
            new CountryInfo { Name = "Venezuela", DialCode = "+58", IsoCode = "VE" },
            new CountryInfo { Name = "Vietnã", DialCode = "+84", IsoCode = "VN" },
            new CountryInfo { Name = "Ilhas Virgens Britânicas", DialCode = "+1-284", IsoCode = "VG" },
            new CountryInfo { Name = "Ilhas Virgens Americanas", DialCode = "+1-340", IsoCode = "VI" },
        };
        SelectedCountry = CountryList!.FirstOrDefault(c => c.IsoCode == "BR");
    }


    private void CompleteRegister(object? sender, EventArgs e)
    {
        /*
        string email = EntryEmail.Text;
        string password = EntryPassword.Text;
        string rePassword = EntryRePassword.Text;
        
        if (password == rePassword)
        {
            var user = new UserRegister(Guid.NewGuid().ToString(), email, ComputeSha256Hash(password));
            AccountRegister(user);
        }
        */
    }
}