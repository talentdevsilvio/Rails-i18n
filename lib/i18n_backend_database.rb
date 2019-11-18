require File.dirname(__FILE__) + '/models/locale'
require File.dirname(__FILE__) + '/models/translation'
require File.dirname(__FILE__) + '/models/translation_option'
require File.dirname(__FILE__) + '/routing'
require File.dirname(__FILE__) + '/controllers/locales_controller'
require File.dirname(__FILE__) + '/controllers/translations_controller'
require File.dirname(__FILE__) + '/i18n_backend_database/database'
require File.dirname(__FILE__) + '/ext/i18n'
ActionController::Routing::RouteSet::Mapper.send(:include, I18n::BackendDatabase::Routing) 
