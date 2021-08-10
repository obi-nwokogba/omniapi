class CurrenttimeController < ApplicationController

  # ==========================================
  # This function returns 12 hour time like 07:03 PM
  def formattime(unformattedtime)
    unformattedtime.strftime('%l:%M %p')
  end

  # ==========================================
  # This function returns 24 hour time like 21:08
  def formattime2(unformattedtime)
    unformattedtime.strftime('%H:%M:%S')
  end

  # ==========================================
   # This function returns 7:06:57 PM - 10 08 2021"
   def formattimeanddate(unformattedtime)
    unformattedtime.strftime('%I:%M:%S %p - %d %m %Y')
  end

   # ==========================================
   # This function returns 7:06:57 PM - 10 08 2021"
   def formatwrittendate(unformattedtime)
    unformattedtime.strftime('%A, %d %B, %Y')
  end

  # ==========================================
  def index
    # ENGLAND
    Time.zone = 'Edinburgh'
    england = formattime(Time.zone.now)

    # IRELAND
    Time.zone = 'Dublin'
    ireland = formattime(Time.zone.now)

    # ISRAEL
    Time.zone = 'Jerusalem'
    israel = formattime(Time.zone.now)

    # SOUTH AFRICA
    Time.zone = 'Pretoria'
    southafrica = formattime(Time.zone.now)

    render json:
    { status: 200,
      currentworldtimes: {
        england: england,
        ireland: ireland,
        israel: israel,
        southafrica: southafrica
      } }
  end

  # ==========================================
  def show
    location = params[:id]

    # convert parameter to lowercase for case comparison
    location = location.downcase

    # conditionals to provide the right time requested
    case location

    when 'algeria'
      Time.zone = 'West Central Africa'

    when 'angola'
      Time.zone = 'West Central Africa'

    when 'benin'
      Time.zone = 'West Central Africa'

    when 'cameroon'
      Time.zone = 'West Central Africa'

    when 'centralafricanrepublic'
      Time.zone = 'West Central Africa'

    when 'chad'
      Time.zone = 'West Central Africa'

    when 'congo'
      Time.zone = 'West Central Africa'

    when 'demrepcongo'
      Time.zone = 'West Central Africa'

    when 'england'
      Time.zone = 'Edinburgh'

    when 'equitorialguinea'
      Time.zone = 'West Central Africa'

      when 'faroeisland'
      Time.zone = 'Dublin'
    
    when 'france'
      Time.zone = 'Europe/Paris'

    when 'gabon'
      Time.zone = 'West Central Africa'

    when 'greece'
      Time.zone = 'Athens'

    when 'iceland'
      Time.zone = 'Dublin'

    when 'ireland'
      Time.zone = 'Dublin'

    when 'israel'
      Time.zone = 'Jerusalem'

    when 'japan'
      Time.zone = 'Tokyo'

    when 'northernireland'
      Time.zone = 'Dublin'

    when 'niger'
      Time.zone = 'West Central Africa'

    when 'nigeria'
      Time.zone = 'West Central Africa'

    when 'portugal'
      Time.zone = 'Dublin'

    when 'scotland'
      Time.zone = 'Dublin'

    when 'switzerland'
      Time.zone = 'Europe/Zurich'

    when 'wales'
      Time.zone = 'Dublin'
      
    else
      twelvehourtime = ' '
      twentyfourhourtime = ' '
      timeanddate = ' '
    end

#Format time
    twelvehourtime = formattime(Time.zone.now)
      twentyfourhourtime = formattime2(Time.zone.now)
      timeanddate = formattimeanddate(Time.zone.now)
      writtendate = formatwrittendate(Time.zone.now)

    # render json output
    render json: { 
      status: 200, 
      twelvehourtime: twelvehourtime,
     twentyfourhourtime:twentyfourhourtime,
    timeanddate: timeanddate,
  writtendate:writtendate}
  end
end

# ==========================================
# COUNTRIES WITH JUST ONE TIME ZONE:
# Afghanistan (UTC+4:30)
# Albania (UTC+1/UTC+2)
# Algeria (UTC+1)
# Andorra (UTC+1/UTC+2)
# Angola (UTC+1)
# Antigua and Barbuda (UTC-4)
# Argentina (UTC-3)
# Armenia (UTC+4)
# Austria (UTC+1/UTC+2)
# Azerbaijan (UTC+4)
# Bahamas (UTC-5/UTC-4)
# Bahrain (UTC+3)
# Bangladesh (UTC+6)
# Barbados (UTC-4)
# Belarus (UTC+3)
# Belgium (UTC+1/UTC+2)
# Belize (UTC-6)
# Benin (UTC+1)
# Bhutan (UTC+6)
# Bolivia (UTC-4)
# Bosnia and Herzegovina (UTC+1/UTC+2)
# Botswana (UTC+2)
# Brunei (UTC+8)
# Bulgaria (UTC+2/UTC+3)
# Burkina Faso (UTC)
# Burundi (UTC+2)
# Cabo Verde (UTC-1)
# Cambodia (UTC+7)
# Cameroon (UTC+1)
# Central African Republic (UTC+1)
# Chad (UTC+1)
# Colombia (UTC-5)
# Comoros (UTC+3)
# Republic of the Congo (UTC+1)
# Costa Rica (UTC-6)
# Côte d'Ivoire (UTC)
# Croatia (UTC+1/UTC+2)
# Cuba (UTC-5/UTC-4)
# Czech Republic (UTC+1/UTC+2)
# Djibouti (UTC+3)
# Dominica (UTC-4)
# Dominican Republic (UTC-4)
# Egypt (UTC+2)
# El Salvador (UTC-6)
# Equatorial Guinea (UTC+1)
# Eritrea (UTC+3)
# Estonia (UTC+2/UTC+3)
# Ethiopia (UTC+3)
# Fiji (UTC+12/UTC+13)
# Finland (UTC+2/UTC+3)
# Gabon (UTC+1)
# Gambia (UTC)
# Georgia (UTC+4)
# Germany (UTC+1/UTC+2)
# Ghana (UTC)
# Greece (UTC+2/UTC+3)
# Grenada (UTC-4)
# Guatemala (UTC-6)
# Guinea (UTC)
# Guinea-Bissau (UTC)
# Guyana (UTC-4)
# Haiti (UTC-5/UTC-4)
# Honduras (UTC-6)
# Hungary (UTC+1/UTC+2)
# Iceland (UTC)
# India (UTC+5:30)
# Iran (UTC+3:30/UTC+4:30)
# Iraq (UTC+3)
# Ireland (UTC/UTC+1)
# Israel (UTC+2/UTC+3)
# Italy (UTC+1/UTC+2)
# Jamaica (UTC-5)
# Japan (UTC+9)
# Jordan (UTC+2/UTC+3)
# Kenya (UTC+3)
# Kosovo (UTC+1/UTC+2)
# Kuwait (UTC+3)
# Kyrgyzstan (UTC+6)
# Laos (UTC+7)
# Latvia (UTC+2/UTC+3)
# Lebanon (UTC+2/UTC+3)
# Lesotho (UTC+2)
# Liberia (UTC)
# Libya (UTC+2)
# Liechtenstein (UTC+1/UTC+2)
# Lithuania (UTC+2/UTC+3)
# Luxembourg (UTC+1/UTC+2)
# Macedonia (UTC+1/UTC+2)
# Madagascar (UTC+3)
# Malawi (UTC+2)
# Malaysia (UTC+8)
# Maldives (UTC+5)
# Mali (UTC)
# Malta (UTC+1/UTC+2)
# Marshall Islands (UTC+12)
# Mauritania (UTC)
# Mauritius (UTC+4)
# Moldova (UTC+2/UTC+3)
# Monaco (UTC+1/UTC+2)
# Montenegro (UTC+1/UTC+2)
# Morocco (UTC+1)
# Mozambique (UTC+2)
# Myanmar (UTC+6:30)
# Namibia (UTC+2)
# Nauru (UTC+12)
# Nepal (UTC+5:45)
# Nicaragua (UTC-6)
# Niger (UTC+1)
# Nigeria (UTC+1)
# North Korea (UTC+9)
# Oman (UTC+4)
# Pakistan (UTC+5)
# Palau (UTC+9)
# Palestine (UTC+2/UTC+3)
# Panama (UTC-5)
# Paraguay (UTC-4/UTC-3)
# Peru (UTC-5)
# Philippines (UTC+8)
# Poland (UTC+1/UTC+2)
# Qatar (UTC+3)
# Romania (UTC+2/UTC+3)
# Rwanda (UTC+2)
# St. Kitts and Nevis (UTC-4)
# St. Lucia (UTC-4)
# St. Vincent and the Grenadines (UTC-4)
# Samoa (UTC+13/UTC+14)
# San Marino (UTC+1/UTC+2)
# São Tomé and Príncipe (UTC)
# Saudi Arabia (UTC+3)
# Sénégal (UTC)
# Serbia (UTC+1/UTC+2)
# Seychelles (UTC+4)
# Sierra Leone (UTC)
# Singapore (UTC+8)
# Slovakia (UTC+1/UTC+2)
# Slovenia (UTC+1/UTC+2)
# Solomon Islands (UTC+11)
# Somalia (UTC+3)
# South Africa (UTC+2)
# South Korea (UTC+9)
# South Sudan (UTC+3)
# Sri Lanka (UTC+5:30)
# Sudan (UTC+2)
# Suriname (UTC-3)
# Swaziland (UTC+2)
# Sweden (UTC+1/UTC+2)
# Switzerland (UTC+1/UTC+2)
# Syria (UTC+2/UTC+3)
# Taiwan (UTC+8)
# Tajikistan (UTC+5)
# Tanzania (UTC+3)
# Thailand (UTC+7)
# Timor-Leste (UTC+9)
# Togo (UTC)
# Tonga (UTC+13/UTC+14)
# Transnistria (UTC+2/UTC+3)
# Trinidad and Tobago (UTC-4)
# Tunisia (UTC+1)
# Turkey (UTC+3)
# Turkmenistan (UTC+5)
# Tuvalu (UTC+12)
# Uganda (UTC+3)
# United Arab Emirates (UTC+4)
# Uruguay (UTC-3)
# Uzbekistan (UTC+5)
# Vanuatu (UTC+11)
# Vatican City (UTC+1/UTC+2)
# Venezuela (UTC-4)
# Vietnam (UTC+7)
# Western Sahara (UTC+1)
# Yemen (UTC+3)
# Zambia (UTC+2)
# Zimbabwe (UTC+2)
