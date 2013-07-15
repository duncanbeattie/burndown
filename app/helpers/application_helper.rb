module ApplicationHelper

    def caliper_init
        if ENV.has_key?('BURNDOWN_CALIPER_ID')
            javascript_tag "var Caliper = {config: {apiKey:'%s'}};" % [ENV['BURNDOWN_CALIPER_ID']]
        end
    end

end
