# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.acronym 'RESTful'
  inflect.irregular 'departamento', 'departamentos'
  inflect.irregular 'provincia', 'provincias'
  inflect.irregular 'distrito', 'distritos'
  inflect.irregular 'remitente', 'remitentes'
  inflect.irregular 'remitente_direccione', 'remitente_direcciones'
  inflect.irregular 'destinatario', 'destinatarios'
  inflect.irregular 'numero_guia', 'numero_guias'
  inflect.irregular 'placa', 'placas'
  inflect.irregular 'guia_elemento', 'guia_elementos'
  inflect.irregular 'numero_factura', 'numero_facturas'
  inflect.irregular 'factura_elemento', 'factura_elementos'
  inflect.irregular 'guia', 'guias'
  inflect.irregular 'factura', 'facturas'  
end
