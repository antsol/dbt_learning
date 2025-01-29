{% macro continent(country) -%}
    case
        when {{country}} in ('USA','MEXICO','CANADA') then 'NORTH AMERICA'
        when {{country}} in ('GERMANY','AUSTRIA','BELGIUM',
                             'DENMARK','FINLAND','FRANCE',
                             'IRELAND','ITALY','NORWAY',
                             'POLAND','PORTUGAL','SPAIN','SWEDEN',
                             'SWITZERLAND','UK') then 'EUROPE'
        when {{country}} in ('ARGENTINA','BRAZIL','VENEZUELA') then 'SOUTH AMERICA'
        else 'UNKNOWN'
end
{%- endmacro %}