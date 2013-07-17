module ApplicationHelper

    def caliper_init
        if ENV.has_key?('BURNDOWN_CALIPER_ID')
            javascript_tag "var Caliper = {config: {apiKey:'%s'}};" % [ENV['BURNDOWN_CALIPER_ID']]
        end
    end

    def qbaka_init
        javascript_tag '(function(a,c){a.__qbaka_eh=a.onerror;a.__qbaka_reports=[];a.onerror=function(){a.__qbaka_reports.push(arguments);if(a.__qbaka_eh)try{a.__qbaka_eh.apply(a,arguments)}catch(b){}};a.onerror.qbaka=1;a.qbaka={report:function(){},customParams:{},set:function(a,b){qbaka.customParams[a]=b},exec:function(a){try{a()}catch(b){qbaka.reportException(b)}},reportException:function(){}};var b=c.createElement("script"),e=c.getElementsByTagName("script")[0],d=function(){e.parentNode.insertBefore(b,e)};b.type="text/javascript";b.async=!0;b.src="//cdn.qbaka.net/reporting.js";"[object Opera]"==a.opera?c.addEventListener("DOMContentLoaded",d):d();qbaka.key="5f4259167330f673aba999b5c7c69918"})(window,document);qbaka.options={autoStacktrace:1,trackEvents:1};'
    end

end
