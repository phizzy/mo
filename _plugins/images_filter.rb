# encoding: utf-8

module Jekyll
    module ImagesFilter

        def fillimage(raw, ext = "")
            return "<img src='/images/{raw}' />"
        end
    end
end

Liquid::Template.register_filter(Jekyll::ImagesFilter)
