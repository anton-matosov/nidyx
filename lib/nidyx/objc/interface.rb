require "nidyx/objc/model_base"

module Nidyx
  class ObjCInterface < ObjCModelBase
    attr_accessor :properties, :json_model, :mantle

    self.template_file = File.join(self.template_path, "interface.mustache")

    def initialize(name, options)
      super
      self.file_name = "#{name}.#{EXT}"
      add_json_model if options[:objc][:json_model]
      add_mantle if options[:objc][:mantle]
    end

    private

    EXT = "h"
    JSON_MODEL_IMPORT = "JSONModel"
    MANTLE_IMPORT = "Mantle/Mantle.h"

    def add_json_model
      self.json_model = true
      self.imports << JSON_MODEL_IMPORT
    end

    def add_mantle
      self.mantle = true
      self.imports << MANTLE_IMPORT
    end
  end
end