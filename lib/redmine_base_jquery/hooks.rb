module RedmineBaseJquery
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context)
      javascript_include_tag("jquery-1.7.2.min.js", :plugin => :redmine_base_jquery) +
        %(<script type="text/javascript">//<![CDATA[\njQuery.noConflict();\n//]]></script>).html_safe
    end
  end
end
