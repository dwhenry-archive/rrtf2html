module Converter
  class FormatOptions
    def initialize(*args)
      @chpBold = @chpItalic = @chpUnderline = false;
      @chpVAlign = va_normal;
      @chpFontSize = @chpHighlight = 0;
      @papLeft = @papRight = @papFirst = @papBefore = @papAfter=0;
      @papAlign = align_left;
      @papInTbl = false;
      return self
    end

    def update(opt)
      fields = [:chpBold, :chpItalic, :chpUnderline, :chpVAlign,
        :chpFontSize, ,:chpBColor, :chpHighlight, :chpFont,
        :papLeft, :papRight, :papFirst, :papBefore,
        :papAfter, :papAlign, :papInTbl]
      fields.each{|field| send "@#{field} = opt[:#{field}]"
      return self
    end

    def ==(opt)
      @chpBold==opt.chpBold and
        @chpItalic==opt.chpItalic and
        @chpUnderline==opt.chpUnderline and
        @chpVAlign==opt.chpVAlign and
        @chpFontSize==opt.chpFontSize and
        @chpFColor==opt.chpFColor and
        @chpBColor==opt.chpBColor and
        @chpHighlight==opt.chpHighlight and
        @chpFont==opt.chpFont and
        @papLeft==opt.papLeft and
        @papRight==opt.papRight and
        @papFirst==opt.papFirst and
        @papBefore==opt.papBefore and
        @papAfter==opt.papAfter and
        @papAlign==opt.papAlign and
        @papInTbl==opt.papInTbl
    end
  end
end