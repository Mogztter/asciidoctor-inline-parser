# Autogenerated from a Treetop grammar. Edits may be lost.


module AsciidoctorLinkGrammar
  include Treetop::Runtime

  def root
    @root ||= :explicit_link
  end

  module ExplicitLink0
    def uri_scheme
      elements[1]
    end

    def uri_path_explicit
      elements[2]
    end

  end

  def _nt_explicit_link
    start_index = index
    if node_cache[:explicit_link].has_key?(index)
      cached = node_cache[:explicit_link][index]
      if cached
        node_cache[:explicit_link][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('link:', false, index))
      r1 = instantiate_node(SyntaxNode,input, index...(index + match_len))
      @index += match_len
    else
      terminal_parse_failure('\'link:\'')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_uri_scheme
      s0 << r2
      if r2
        r3 = _nt_uri_path_explicit
        s0 << r3
        if r3
          r5 = _nt_link_attrs
          if r5
            r4 = r5
          else
            r4 = instantiate_node(SyntaxNode,input, index...index)
          end
          s0 << r4
        end
      end
    end
    if s0.last
      r0 = instantiate_node(Link,input, i0...index, s0)
      r0.extend(ExplicitLink0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:explicit_link][start_index] = r0

    r0
  end

  module ExplicitLinkProtected0
    def uri_scheme
      elements[1]
    end

    def uri_path_protected
      elements[2]
    end

  end

  def _nt_explicit_link_protected
    start_index = index
    if node_cache[:explicit_link_protected].has_key?(index)
      cached = node_cache[:explicit_link_protected][index]
      if cached
        node_cache[:explicit_link_protected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('link:++', false, index))
      r1 = instantiate_node(SyntaxNode,input, index...(index + match_len))
      @index += match_len
    else
      terminal_parse_failure('\'link:++\'')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_uri_scheme
      s0 << r2
      if r2
        r3 = _nt_uri_path_protected
        s0 << r3
        if r3
          if (match_len = has_terminal?('++', false, index))
            r4 = instantiate_node(SyntaxNode,input, index...(index + match_len))
            @index += match_len
          else
            terminal_parse_failure('\'++\'')
            r4 = nil
          end
          s0 << r4
          if r4
            r6 = _nt_link_attrs
            if r6
              r5 = r6
            else
              r5 = instantiate_node(SyntaxNode,input, index...index)
            end
            s0 << r5
          end
        end
      end
    end
    if s0.last
      r0 = instantiate_node(Link,input, i0...index, s0)
      r0.extend(ExplicitLinkProtected0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:explicit_link_protected][start_index] = r0

    r0
  end

  def _nt_uri_path_explicit
    start_index = index
    if node_cache[:uri_path_explicit].has_key?(index)
      cached = node_cache[:uri_path_explicit][index]
      if cached
        node_cache[:uri_path_explicit][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?(@regexps[gr = '\A[^\\[]'] ||= Regexp.new(gr), :regexp, index)
        r1 = true
        @index += 1
      else
        terminal_parse_failure('[^\\[]')
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(LinkPath,input, i0...index, s0)
    end

    node_cache[:uri_path_explicit][start_index] = r0

    r0
  end

  def _nt_uri_path_protected
    start_index = index
    if node_cache[:uri_path_protected].has_key?(index)
      cached = node_cache[:uri_path_protected][index]
      if cached
        node_cache[:uri_path_protected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?(@regexps[gr = '\A[^+]'] ||= Regexp.new(gr), :regexp, index)
        r1 = true
        @index += 1
      else
        terminal_parse_failure('[^+]')
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(LinkPath,input, i0...index, s0)
    end

    node_cache[:uri_path_protected][start_index] = r0

    r0
  end

  module ImplicitLink0
    def uri_scheme
      elements[0]
    end

    def uri_path
      elements[1]
    end

  end

  def _nt_implicit_link
    start_index = index
    if node_cache[:implicit_link].has_key?(index)
      cached = node_cache[:implicit_link][index]
      if cached
        node_cache[:implicit_link][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_uri_scheme
    s0 << r1
    if r1
      r2 = _nt_uri_path
      s0 << r2
      if r2
        r4 = _nt_link_attrs
        if r4
          r3 = r4
        else
          r3 = instantiate_node(SyntaxNode,input, index...index)
        end
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(Link,input, i0...index, s0)
      r0.extend(ImplicitLink0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:implicit_link][start_index] = r0

    r0
  end

  module UriScheme0
  end

  def _nt_uri_scheme
    start_index = index
    if node_cache[:uri_scheme].has_key?(index)
      cached = node_cache[:uri_scheme][index]
      if cached
        node_cache[:uri_scheme][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    i1 = index
    if (match_len = has_terminal?('https', false, index))
      r2 = instantiate_node(SyntaxNode,input, index...(index + match_len))
      @index += match_len
    else
      terminal_parse_failure('\'https\'')
      r2 = nil
    end
    if r2
      r2 = SyntaxNode.new(input, (index-1)...index) if r2 == true
      r1 = r2
    else
      if (match_len = has_terminal?('http', false, index))
        r3 = instantiate_node(SyntaxNode,input, index...(index + match_len))
        @index += match_len
      else
        terminal_parse_failure('\'http\'')
        r3 = nil
      end
      if r3
        r3 = SyntaxNode.new(input, (index-1)...index) if r3 == true
        r1 = r3
      else
        if (match_len = has_terminal?('file', false, index))
          r4 = instantiate_node(SyntaxNode,input, index...(index + match_len))
          @index += match_len
        else
          terminal_parse_failure('\'file\'')
          r4 = nil
        end
        if r4
          r4 = SyntaxNode.new(input, (index-1)...index) if r4 == true
          r1 = r4
        else
          if (match_len = has_terminal?('ftp', false, index))
            r5 = instantiate_node(SyntaxNode,input, index...(index + match_len))
            @index += match_len
          else
            terminal_parse_failure('\'ftp\'')
            r5 = nil
          end
          if r5
            r5 = SyntaxNode.new(input, (index-1)...index) if r5 == true
            r1 = r5
          else
            if (match_len = has_terminal?('irc', false, index))
              r6 = instantiate_node(SyntaxNode,input, index...(index + match_len))
              @index += match_len
            else
              terminal_parse_failure('\'irc\'')
              r6 = nil
            end
            if r6
              r6 = SyntaxNode.new(input, (index-1)...index) if r6 == true
              r1 = r6
            else
              @index = i1
              r1 = nil
            end
          end
        end
      end
    end
    s0 << r1
    if r1
      if (match_len = has_terminal?('://', false, index))
        r7 = instantiate_node(SyntaxNode,input, index...(index + match_len))
        @index += match_len
      else
        terminal_parse_failure('\'://\'')
        r7 = nil
      end
      s0 << r7
    end
    if s0.last
      r0 = instantiate_node(LinkScheme,input, i0...index, s0)
      r0.extend(UriScheme0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:uri_scheme][start_index] = r0

    r0
  end

  module UriPath0
  end

  module UriPath1
  end

  def _nt_uri_path
    start_index = index
    if node_cache[:uri_path].has_key?(index)
      cached = node_cache[:uri_path][index]
      if cached
        node_cache[:uri_path][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      i2, s2 = index, []
      if (match_len = has_terminal?('.', false, index))
        r3 = true
        @index += match_len
      else
        terminal_parse_failure('\'.\'')
        r3 = nil
      end
      s2 << r3
      if r3
        i4, s4 = index, []
        i5 = index
        if (match_len = has_terminal?(' ', false, index))
          r6 = true
          @index += match_len
        else
          terminal_parse_failure('\' \'')
          r6 = nil
        end
        if r6
          @index = i5
          r5 = nil
          terminal_parse_failure('\' \'', true)
        else
          @terminal_failures.pop
          @index = i5
          r5 = instantiate_node(SyntaxNode,input, index...index)
        end
        s4 << r5
        if r5
          if index < input_length
            r7 = true
            @index += 1
          else
            terminal_parse_failure("any character")
            r7 = nil
          end
          s4 << r7
        end
        if s4.last
          r4 = instantiate_node(SyntaxNode,input, i4...index, s4)
          r4.extend(UriPath0)
        else
          @index = i4
          r4 = nil
        end
        s2 << r4
      end
      if s2.last
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
        r2.extend(UriPath1)
      else
        @index = i2
        r2 = nil
      end
      if r2
        r2 = SyntaxNode.new(input, (index-1)...index) if r2 == true
        r1 = r2
      else
        if has_terminal?(@regexps[gr = '\A[^ \\.\\[]'] ||= Regexp.new(gr), :regexp, index)
          r8 = true
          @index += 1
        else
          terminal_parse_failure('[^ \\.\\[]')
          r8 = nil
        end
        if r8
          r8 = SyntaxNode.new(input, (index-1)...index) if r8 == true
          r1 = r8
        else
          @index = i1
          r1 = nil
        end
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(LinkPath,input, i0...index, s0)
    end

    node_cache[:uri_path][start_index] = r0

    r0
  end

  module LinkAttrs0
    def link_attrs_content
      elements[1]
    end

  end

  def _nt_link_attrs
    start_index = index
    if node_cache[:link_attrs].has_key?(index)
      cached = node_cache[:link_attrs][index]
      if cached
        node_cache[:link_attrs][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('[', false, index))
      r1 = true
      @index += match_len
    else
      terminal_parse_failure('\'[\'')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_link_attrs_content
      s0 << r2
      if r2
        if (match_len = has_terminal?(']', false, index))
          r3 = true
          @index += match_len
        else
          terminal_parse_failure('\']\'')
          r3 = nil
        end
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(LinkAttributes,input, i0...index, s0)
      r0.extend(LinkAttrs0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:link_attrs][start_index] = r0

    r0
  end

  def _nt_link_attrs_content
    start_index = index
    if node_cache[:link_attrs_content].has_key?(index)
      cached = node_cache[:link_attrs_content][index]
      if cached
        node_cache[:link_attrs_content][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      r2 = _nt_link_attr_role_protected
      if r2
        r2 = SyntaxNode.new(input, (index-1)...index) if r2 == true
        r1 = r2
      else
        r3 = _nt_link_attr_role_unprotected
        if r3
          r3 = SyntaxNode.new(input, (index-1)...index) if r3 == true
          r1 = r3
        else
          r4 = _nt_link_attr_window_protected
          if r4
            r4 = SyntaxNode.new(input, (index-1)...index) if r4 == true
            r1 = r4
          else
            r5 = _nt_link_attr_text_protected
            if r5
              r5 = SyntaxNode.new(input, (index-1)...index) if r5 == true
              r1 = r5
            else
              if (match_len = has_terminal?(',', false, index))
                r6 = true
                @index += match_len
              else
                terminal_parse_failure('\',\'')
                r6 = nil
              end
              if r6
                r6 = SyntaxNode.new(input, (index-1)...index) if r6 == true
                r1 = r6
              else
                if (match_len = has_terminal?(' ', false, index))
                  r7 = true
                  @index += match_len
                else
                  terminal_parse_failure('\' \'')
                  r7 = nil
                end
                if r7
                  r7 = SyntaxNode.new(input, (index-1)...index) if r7 == true
                  r1 = r7
                else
                  r8 = _nt_link_attr_text_unprotected
                  if r8
                    r8 = SyntaxNode.new(input, (index-1)...index) if r8 == true
                    r1 = r8
                  else
                    r9 = _nt_link_attr_window_unprotected
                    if r9
                      r9 = SyntaxNode.new(input, (index-1)...index) if r9 == true
                      r1 = r9
                    else
                      @index = i1
                      r1 = nil
                    end
                  end
                end
              end
            end
          end
        end
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(LinkAttributesContent,input, i0...index, s0)
    end

    node_cache[:link_attrs_content][start_index] = r0

    r0
  end

  def _nt_link_attr_text_unprotected
    start_index = index
    if node_cache[:link_attr_text_unprotected].has_key?(index)
      cached = node_cache[:link_attr_text_unprotected][index]
      if cached
        node_cache[:link_attr_text_unprotected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?(@regexps[gr = '\A[^,\\]]'] ||= Regexp.new(gr), :regexp, index)
        r1 = true
        @index += 1
      else
        terminal_parse_failure('[^,\\]]')
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(LinkText,input, i0...index, s0)
    end

    node_cache[:link_attr_text_unprotected][start_index] = r0

    r0
  end

  module LinkAttrTextProtected0
    def link_text_protected
      elements[1]
    end

  end

  def _nt_link_attr_text_protected
    start_index = index
    if node_cache[:link_attr_text_protected].has_key?(index)
      cached = node_cache[:link_attr_text_protected][index]
      if cached
        node_cache[:link_attr_text_protected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('"', false, index))
      r1 = true
      @index += match_len
    else
      terminal_parse_failure('\'"\'')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_link_text_protected
      s0 << r2
      if r2
        if (match_len = has_terminal?('"', false, index))
          r3 = true
          @index += match_len
        else
          terminal_parse_failure('\'"\'')
          r3 = nil
        end
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(LinkTextProtected,input, i0...index, s0)
      r0.extend(LinkAttrTextProtected0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:link_attr_text_protected][start_index] = r0

    r0
  end

  def _nt_link_text_protected
    start_index = index
    if node_cache[:link_text_protected].has_key?(index)
      cached = node_cache[:link_text_protected][index]
      if cached
        node_cache[:link_text_protected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?(@regexps[gr = '\A[^"]'] ||= Regexp.new(gr), :regexp, index)
        r1 = true
        @index += 1
      else
        terminal_parse_failure('[^"]')
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(LinkText,input, i0...index, s0)
    end

    node_cache[:link_text_protected][start_index] = r0

    r0
  end

  module LinkAttrRoleUnprotected0
  end

  def _nt_link_attr_role_unprotected
    start_index = index
    if node_cache[:link_attr_role_unprotected].has_key?(index)
      cached = node_cache[:link_attr_role_unprotected][index]
      if cached
        node_cache[:link_attr_role_unprotected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('role=', false, index))
      r1 = instantiate_node(SyntaxNode,input, index...(index + match_len))
      @index += match_len
    else
      terminal_parse_failure('\'role=\'')
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if has_terminal?(@regexps[gr = '\A[^,\\]]'] ||= Regexp.new(gr), :regexp, index)
          r3 = true
          @index += 1
        else
          terminal_parse_failure('[^,\\]]')
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      if s2.empty?
        @index = i2
        r2 = nil
      else
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(LinkRole,input, i0...index, s0)
      r0.extend(LinkAttrRoleUnprotected0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:link_attr_role_unprotected][start_index] = r0

    r0
  end

  module LinkAttrRoleProtected0
  end

  def _nt_link_attr_role_protected
    start_index = index
    if node_cache[:link_attr_role_protected].has_key?(index)
      cached = node_cache[:link_attr_role_protected][index]
      if cached
        node_cache[:link_attr_role_protected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('role="', false, index))
      r1 = instantiate_node(SyntaxNode,input, index...(index + match_len))
      @index += match_len
    else
      terminal_parse_failure('\'role="\'')
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if has_terminal?(@regexps[gr = '\A[^"]'] ||= Regexp.new(gr), :regexp, index)
          r3 = true
          @index += 1
        else
          terminal_parse_failure('[^"]')
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      if s2.empty?
        @index = i2
        r2 = nil
      else
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
      if r2
        if (match_len = has_terminal?('"', false, index))
          r4 = true
          @index += match_len
        else
          terminal_parse_failure('\'"\'')
          r4 = nil
        end
        s0 << r4
      end
    end
    if s0.last
      r0 = instantiate_node(LinkRole,input, i0...index, s0)
      r0.extend(LinkAttrRoleProtected0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:link_attr_role_protected][start_index] = r0

    r0
  end

  module LinkAttrWindowUnprotected0
  end

  def _nt_link_attr_window_unprotected
    start_index = index
    if node_cache[:link_attr_window_unprotected].has_key?(index)
      cached = node_cache[:link_attr_window_unprotected][index]
      if cached
        node_cache[:link_attr_window_unprotected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('window=', false, index))
      r1 = instantiate_node(SyntaxNode,input, index...(index + match_len))
      @index += match_len
    else
      terminal_parse_failure('\'window=\'')
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if has_terminal?(@regexps[gr = '\A[^,\\]]'] ||= Regexp.new(gr), :regexp, index)
          r3 = true
          @index += 1
        else
          terminal_parse_failure('[^,\\]]')
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      if s2.empty?
        @index = i2
        r2 = nil
      else
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(LinkWindow,input, i0...index, s0)
      r0.extend(LinkAttrWindowUnprotected0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:link_attr_window_unprotected][start_index] = r0

    r0
  end

  module LinkAttrWindowProtected0
  end

  def _nt_link_attr_window_protected
    start_index = index
    if node_cache[:link_attr_window_protected].has_key?(index)
      cached = node_cache[:link_attr_window_protected][index]
      if cached
        node_cache[:link_attr_window_protected][index] = cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if (match_len = has_terminal?('window="', false, index))
      r1 = instantiate_node(SyntaxNode,input, index...(index + match_len))
      @index += match_len
    else
      terminal_parse_failure('\'window="\'')
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if has_terminal?(@regexps[gr = '\A[^"]'] ||= Regexp.new(gr), :regexp, index)
          r3 = true
          @index += 1
        else
          terminal_parse_failure('[^"]')
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      if s2.empty?
        @index = i2
        r2 = nil
      else
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      end
      s0 << r2
      if r2
        if (match_len = has_terminal?('"', false, index))
          r4 = true
          @index += match_len
        else
          terminal_parse_failure('\'"\'')
          r4 = nil
        end
        s0 << r4
      end
    end
    if s0.last
      r0 = instantiate_node(LinkWindow,input, i0...index, s0)
      r0.extend(LinkAttrWindowProtected0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:link_attr_window_protected][start_index] = r0

    r0
  end

end

class AsciidoctorLinkGrammarParser < Treetop::Runtime::CompiledParser
  include AsciidoctorLinkGrammar
end

