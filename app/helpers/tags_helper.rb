module TagsHelper
    def validationMessage(modelObject)
        pluralize(modelObject.errors.count, "error") + t('.prohibited', :default => [:'activerecord.errors.messages.prohibited', ' Invalid %{model}'], :model => model_class.model_name.human.titleize)
    end
end
