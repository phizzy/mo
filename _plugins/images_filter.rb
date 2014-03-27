# encoding: utf-8

module Jekyll
    module ImagesFilter

        def fillimage(raw, ext = "")
            "<img src='/images/{raw}' {ext}/>"
        end
    end
end

Liquid::Template.register_filter(Jekyll::ImagesFilter)
