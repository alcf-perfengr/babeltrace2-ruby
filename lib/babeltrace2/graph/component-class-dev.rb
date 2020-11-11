module Babeltrace2

  BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_OK = BT_FUNC_STATUS_OK
  BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_END = BT_FUNC_STATUS_END
  BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_AGAIN = BT_FUNC_STATUS_AGAIN
  BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_MEMORY_ERROR = BT_FUNC_STATUS_MEMORY_ERROR
  BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_ERROR = BT_FUNC_STATUS_ERROR
  BTComponentClassSinkConsumeMethodStatus = enum :bt_component_class_sink_consume_method_status,
    [ :BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_OK,
       BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_OK,
      :BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_END,
       BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_END,
      :BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_AGAIN,
       BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_AGAIN,
      :BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_MEMORY_ERROR,
       BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_MEMORY_ERROR,
      :BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_ERROR,
       BT_COMPONENT_CLASS_SINK_CONSUME_METHOD_STATUS_ERROR ]

  class BTComponentClass
    SinkConsumeMethodStatus = BTComponentClassSinkConsumeMethodStatus
    class Sink
      ConsumeMethodStatus = BTComponentClassSinkConsumeMethodStatus
    end
  end

  callback :bt_component_class_sink_consume_method,
           [:bt_self_component_sink_handle],
           :bt_component_class_sink_consume_method_status

  callback :bt_component_class_source_finalize_method,
           [:bt_self_component_source_handle],
           :void

  callback :bt_component_class_filter_finalize_method,
           [:bt_self_component_sink_handle],
           :void

  callback :bt_component_class_sink_finalize_method,
           [:bt_self_component_sink_handle],
           :void

  BT_COMPONENT_CLASS_GET_SUPPORTED_MIP_VERSIONS_METHOD_STATUS_OK = BT_FUNC_STATUS_OK
  BT_COMPONENT_CLASS_GET_SUPPORTED_MIP_VERSIONS_METHOD_STATUS_MEMORY_ERROR = BT_FUNC_STATUS_MEMORY_ERROR
  BT_COMPONENT_CLASS_GET_SUPPORTED_MIP_VERSIONS_METHOD_STATUS_ERROR = BT_FUNC_STATUS_ERROR
  BTComponentClassGetSupportedMipVersionsMethodStatus =
    enum :bt_component_class_get_supported_mip_versions_method_status,
    [ :BT_COMPONENT_CLASS_GET_SUPPORTED_MIP_VERSIONS_METHOD_STATUS_OK,
       BT_COMPONENT_CLASS_GET_SUPPORTED_MIP_VERSIONS_METHOD_STATUS_OK,
      :BT_COMPONENT_CLASS_GET_SUPPORTED_MIP_VERSIONS_METHOD_STATUS_MEMORY_ERROR,
       BT_COMPONENT_CLASS_GET_SUPPORTED_MIP_VERSIONS_METHOD_STATUS_MEMORY_ERROR,
      :BT_COMPONENT_CLASS_GET_SUPPORTED_MIP_VERSIONS_METHOD_STATUS_ERROR,
       BT_COMPONENT_CLASS_GET_SUPPORTED_MIP_VERSIONS_METHOD_STATUS_ERROR ]

  class BTComponentClass
    GetSupportedMipVersionsMethodStatus =
      BTComponentClassGetSupportedMipVersionsMethodStatus
  end

  callback :bt_component_class_source_get_supported_mip_versions_method,
           [:bt_self_component_class_source_handle, :bt_value_handle, :pointer, :bt_logging_level, :bt_integer_range_set_unsigned_handle],
           :bt_component_class_get_supported_mip_versions_method_status

  callback :bt_component_class_filter_get_supported_mip_versions_method,
           [:bt_self_component_class_filter_handle, :bt_value_handle, :pointer, :bt_logging_level, :bt_integer_range_set_unsigned_handle],
           :bt_component_class_get_supported_mip_versions_method_status

  callback :bt_component_class_sink_get_supported_mip_versions_method,
           [:bt_self_component_class_sink_handle, :bt_value_handle, :pointer, :bt_logging_level, :bt_integer_range_set_unsigned_handle],
           :bt_component_class_get_supported_mip_versions_method_status

  BT_COMPONENT_CLASS_SINK_GRAPH_IS_CONFIGURED_METHOD_STATUS_OK = BT_FUNC_STATUS_OK
  BT_COMPONENT_CLASS_SINK_GRAPH_IS_CONFIGURED_METHOD_STATUS_MEMORY_ERROR = BT_FUNC_STATUS_MEMORY_ERROR
  BT_COMPONENT_CLASS_SINK_GRAPH_IS_CONFIGURED_METHOD_STATUS_ERROR = BT_FUNC_STATUS_ERROR
  BTComponentClassSinkGraphIsConfiguredMethodStatus =
    enum :bt_component_class_sink_graph_is_configured_method_status,
    [ :BT_COMPONENT_CLASS_SINK_GRAPH_IS_CONFIGURED_METHOD_STATUS_OK,
       BT_COMPONENT_CLASS_SINK_GRAPH_IS_CONFIGURED_METHOD_STATUS_OK,
      :BT_COMPONENT_CLASS_SINK_GRAPH_IS_CONFIGURED_METHOD_STATUS_MEMORY_ERROR,
       BT_COMPONENT_CLASS_SINK_GRAPH_IS_CONFIGURED_METHOD_STATUS_MEMORY_ERROR,
      :BT_COMPONENT_CLASS_SINK_GRAPH_IS_CONFIGURED_METHOD_STATUS_ERROR,
       BT_COMPONENT_CLASS_SINK_GRAPH_IS_CONFIGURED_METHOD_STATUS_ERROR ]

  class BTComponentClass
    SinkGraphIsConfiguredMethodStatus = BTComponentClassSinkGraphIsConfiguredMethodStatus
    class Sink
      GraphIsConfiguredMethodStatus = BTComponentClassSinkGraphIsConfiguredMethodStatus
    end
  end

  callback :bt_component_class_sink_graph_is_configured_method,
           [:bt_self_component_sink_handle],
           :bt_component_class_sink_graph_is_configured_method_status

  BT_COMPONENT_CLASS_INITIALIZE_METHOD_STATUS_OK = BT_FUNC_STATUS_OK
  BT_COMPONENT_CLASS_INITIALIZE_METHOD_STATUS_MEMORY_ERROR = BT_FUNC_STATUS_MEMORY_ERROR
  BT_COMPONENT_CLASS_INITIALIZE_METHOD_STATUS_ERROR = BT_FUNC_STATUS_ERROR
  BTComponentClassInitializeMethodStatus =
    enum :bt_component_class_initialize_method_status,
    [ :BT_COMPONENT_CLASS_INITIALIZE_METHOD_STATUS_OK,
       BT_COMPONENT_CLASS_INITIALIZE_METHOD_STATUS_OK,
      :BT_COMPONENT_CLASS_INITIALIZE_METHOD_STATUS_MEMORY_ERROR,
       BT_COMPONENT_CLASS_INITIALIZE_METHOD_STATUS_MEMORY_ERROR,
      :BT_COMPONENT_CLASS_INITIALIZE_METHOD_STATUS_ERROR,
       BT_COMPONENT_CLASS_INITIALIZE_METHOD_STATUS_ERROR ]

  callback :bt_component_class_source_initialize_method,
           [ :bt_self_component_source_handle,
             :bt_self_component_source_configuration_handle,
             :bt_value_handle, :pointer],
           :bt_component_class_initialize_method_status

  callback :bt_component_class_filter_initialize_method,
           [ :bt_self_component_filter_handle,
             :bt_self_component_filter_configuration_handle,
             :bt_value_handle, :pointer],
           :bt_component_class_initialize_method_status

  callback :bt_component_class_sink_initialize_method,
           [ :bt_self_component_sink_handle,
             :bt_self_component_sink_configuration_handle,
             :bt_value_handle, :pointer],
           :bt_component_class_initialize_method_status
  BT_COMPONENT_CLASS_PORT_CONNECTED_METHOD_STATUS_OK = BT_FUNC_STATUS_OK
  BT_COMPONENT_CLASS_PORT_CONNECTED_METHOD_STATUS_MEMORY_ERROR = BT_FUNC_STATUS_MEMORY_ERROR
  BT_COMPONENT_CLASS_PORT_CONNECTED_METHOD_STATUS_ERROR = BT_FUNC_STATUS_ERROR
  BTComponentClassPortConnectedMethodStatus =
    enum :bt_component_class_port_connected_method_status,
    [ :BT_COMPONENT_CLASS_PORT_CONNECTED_METHOD_STATUS_OK,
       BT_COMPONENT_CLASS_PORT_CONNECTED_METHOD_STATUS_OK,
      :BT_COMPONENT_CLASS_PORT_CONNECTED_METHOD_STATUS_MEMORY_ERROR,
       BT_COMPONENT_CLASS_PORT_CONNECTED_METHOD_STATUS_MEMORY_ERROR,
      :BT_COMPONENT_CLASS_PORT_CONNECTED_METHOD_STATUS_ERROR,
       BT_COMPONENT_CLASS_PORT_CONNECTED_METHOD_STATUS_ERROR ]

  class BTComponentClass
    PortConnectedMethodStatus = BTComponentClassPortConnectedMethodStatus
  end

  callback :bt_component_class_source_output_port_connected_method,
           [ :bt_self_component_source_handle,
             :bt_self_component_port_output_handle,
             :bt_port_input_handle ],
           :bt_component_class_port_connected_method_status

  callback :bt_component_class_filter_input_port_connected_method,
           [ :bt_self_component_filter_handle,
             :bt_self_component_port_input_handle,
             :bt_port_output_handle ],
           :bt_component_class_port_connected_method_status

  callback :bt_component_class_filter_output_port_connected_method,
           [ :bt_self_component_filter_handle,
             :bt_self_component_port_output_handle,
             :bt_port_input_handle ],
           :bt_component_class_port_connected_method_status

  callback :bt_component_class_sink_input_port_connected_method,
           [ :bt_self_component_sink_handle,
             :bt_self_component_port_input_handle,
             :bt_port_output_handle ],
           :bt_component_class_port_connected_method_status

  BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_OK = BT_FUNC_STATUS_OK
  BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_UNKNOWN_OBJECT = BT_FUNC_STATUS_UNKNOWN_OBJECT
  BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_AGAIN = BT_FUNC_STATUS_AGAIN
  BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_MEMORY_ERROR = BT_FUNC_STATUS_MEMORY_ERROR
  BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_ERROR = BT_FUNC_STATUS_ERROR
  BTComponentClassQueryMethodStatus =
    enum :bt_component_class_query_method_status,
    [ :BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_OK,
       BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_OK,
      :BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_UNKNOWN_OBJECT,
       BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_UNKNOWN_OBJECT,
      :BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_AGAIN,
       BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_AGAIN,
      :BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_MEMORY_ERROR,
       BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_MEMORY_ERROR,
      :BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_ERROR,
       BT_COMPONENT_CLASS_QUERY_METHOD_STATUS_ERROR ]

  class BTComponentClass
    QueryMethodStatus = BTComponentClassQueryMethodStatus
  end

  callback :bt_component_class_source_query_method,
           [ :bt_self_component_class_source_handle,
             :bt_private_query_executor_handle,
             :string, :bt_value_handle, :pointer, :pointer ],
           :bt_component_class_query_method_status

  callback :bt_component_class_filter_query_method,
           [ :bt_self_component_class_filter_handle,
             :bt_private_query_executor_handle,
             :string, :bt_value_handle, :pointer, :pointer ],
           :bt_component_class_query_method_status

  callback :bt_component_class_sink_query_method,
           [ :bt_self_component_class_sink_handle,
             :bt_private_query_executor_handle,
             :string, :bt_value_handle, :pointer, :pointer ],
           :bt_component_class_query_method_status

  attach_function :bt_component_class_source_create,
                  [ :string, :bt_message_iterator_class_handle ],
                  :bt_component_class_source_handle

  class BTComponentClass::Source
    def initialize(handle = nil, retain: true, auto_release: true,
                   name: nil, message_iterator_class: nil)
      if handle
        super(handle, retain: retain, auto_release: auto_release)
      else
        raise ArgumentError, "invalid value for name" unless name
        raise ArgumentError, "invalid value for message_iterator_class" unless message_iterator_class
        handle = Babeltrace2.bt_component_class_source_create(
          name, message_iterator_class)
        raise :BT_FUNC_STATUS_MEMORY_ERROR if handle.null?
        super(handle, retain: false)
      end
    end
  end

  attach_function :bt_component_class_filter_create,
                  [ :string, :bt_message_iterator_class_handle ],
                  :bt_component_class_filter_handle

  class BTComponentClass::Filter
    def initialize(handle = nil, retain: true, auto_release: true,
                   name: nil, message_iterator_class: nil)
      if handle
        super(handle, retain: retain, auto_release: auto_release)
      else
        raise ArgumentError, "invalid value for name" unless name
        raise ArgumentError, "invalid value for message_iterator_class" unless message_iterator_class
        handle = Babeltrace2.bt_component_class_filter_create(
          name, message_iterator_class)
        raise :BT_FUNC_STATUS_MEMORY_ERROR if handle.null?
        super(handle, retain: false)
      end
    end
  end

  attach_function :bt_component_class_sink_create,
                  [ :string, :bt_component_class_sink_consume_method ],
                  :bt_component_class_sink_handle

  class BTComponentClass::Sink
    def initialize(handle = nil, retain: true, auto_release: true,
                   name: nil, consume_method: nil)
      if handle
        super(handle, retain: retain, auto_release: auto_release)
      else
        raise ArgumentError, "invalid value for name" unless name
        raise ArgumentError, "invalid value for consume_method" unless consume_method
        consume_method = Babeltrace2._wrap_component_class_sink_consume_method(consume_method)
        handle = Babeltrace2.bt_component_class_sink_create(
          name, consume_method)
        raise :BT_FUNC_STATUS_MEMORY_ERROR if handle.null?
        Babeltrace2._callbacks[handle.to_i][:consume_method] = consume_method
        super(handle, retain: false)
      end
    end
  end

  BT_COMPONENT_CLASS_SET_DESCRIPTION_STATUS_OK = BT_FUNC_STATUS_OK
  BT_COMPONENT_CLASS_SET_DESCRIPTION_STATUS_MEMORY_ERROR = BT_FUNC_STATUS_MEMORY_ERROR
  BTComponentClassSetDescriptionStatus =
    enum :bt_component_class_set_description_status,
    [ :BT_COMPONENT_CLASS_SET_DESCRIPTION_STATUS_OK,
       BT_COMPONENT_CLASS_SET_DESCRIPTION_STATUS_OK,
      :BT_COMPONENT_CLASS_SET_DESCRIPTION_STATUS_MEMORY_ERROR,
       BT_COMPONENT_CLASS_SET_DESCRIPTION_STATUS_MEMORY_ERROR ]

  attach_function :bt_component_class_set_description,
                  [ :bt_component_class_handle, :string ],
                  :bt_component_class_set_description_status

  class BTComponentClass
    SetDescriptionStatus = BTComponentClassSetDescriptionStatus
    def set_description(description)
      raise ArgumentError, "description is nil" unless description
      res = Babeltrace2.bt_component_class_set_description(@handle, description)
      raise res if res != :BT_COMPONENT_CLASS_SET_DESCRIPTION_STATUS_OK
      self
    end

    def description=(description)
      set_description(description)
      description
    end
  end

  BT_COMPONENT_CLASS_SET_HELP_STATUS_OK = BT_FUNC_STATUS_OK
  BT_COMPONENT_CLASS_SET_HELP_STATUS_MEMORY_ERROR = BT_FUNC_STATUS_MEMORY_ERROR
  BTComponentClassSetHelpStatus =
    enum :bt_component_class_set_help_status,
    [ :BT_COMPONENT_CLASS_SET_HELP_STATUS_OK,
       BT_COMPONENT_CLASS_SET_HELP_STATUS_OK,
      :BT_COMPONENT_CLASS_SET_HELP_STATUS_MEMORY_ERROR,
       BT_COMPONENT_CLASS_SET_HELP_STATUS_MEMORY_ERROR ]

  attach_function :bt_component_class_set_help,
                  [ :bt_component_class_handle, :string ],
                  :bt_component_class_set_help_status

  class BTComponentClass
    SetHelpStatus = BTComponentClassSetHelpStatus
    def set_help(help_text)
      raise ArgumentError, "help_text is nil" unless help_text
      res = Babeltrace2.bt_component_class_set_help(@handle, help_text)
      raise res if res != :BT_COMPONENT_CLASS_SET_HELP_STATUS_OK
      self
    end

    def help=(help_text)
      set_help(help_text)
      help_text
    end
  end

  def self._wrap_component_class_sink_consume_method(handle, method)
    method_wrapper = lambda { |self_component|
      method.call(BTSelfComponentSink.new(self_component, retain: false, auto_release: false))
    }
  end

  def self._wrap_component_class_finalize_method(handle, method)
    id = handle.to_i
    method_wrapper = lambda { |component_class|
      method.call(BTComponentClass.from_handle(component_class, retain: false, auto_release: false))
    }
    @@callbacks[id][:finalize_method] = method_wrapper
    method_wrapper
  end

  def self._wrap_component_class_get_supported_mip_versions_method(handle, method)
    id = handle.to_i
    method_wrapper = lambda { |component_class, params, initialize_method_data, logging_level, supported_versions|
      method.call(BTComponentClass.from_handle(component_class, retain: false, auto_release: false),
                  BTValue.from_handle(params),
                  initialize_method_data, logging_level,
                  BTIntergerRangeSetUnsigned.new(supported_versions))
    }
    @@callbacks[id][:get_supported_mip_versions_method] = method_wrapper
    method_wrapper
  end

  def self._wrap_component_class_sink_graph_is_configured_method(handle, method)
    id = handle.to_i
    method_wrapper = lambda { |self_component|
      method.call(BTSelfComponentSink.new(self_component, retain: false, auto_release: false))
    }
    @@callbacks[id][:graph_is_configured_method] = method_wrapper
    method_wrapper
  end

  def self._wrap_component_class_initialize_method(component_klass, component_configuration_klass, handle, method)
    id = handle.to_i
    method_wrapper = lambda { |self_component, configuration, params, initialize_method_data|
      method.call(component_class.new(self_component, retain: false, auto_release: false),
                        component_configuration_class.new(configuration),
                        BTValue.from_handle(params),
                        initialize_method_data)
    }
    @@callbacks[id][:initialize_method] = method_wrapper
    method_wrapper
  end

  def self._wrap_component_class_source_output_port_connected_method(handle, method)
    id = handle.to_i
    method_wrapper = lambda { |self_component, self_port, other_port|
      method.call(BTSelfComponentSource.new(self_component, retain: false, auto_release: false),
                  BTSelfComponentPortOutput.new(self_port, retain: false, auto_release: false),
                  BTPortInput.new(other_port))
    }
    @@callbacks[id][:output_port_connected_method] = method_wrapper
    method_wrapper
  end

  def self._wrap_component_class_filter_input_port_connected_method(handle, method)
    id = handle.to_i
    method_wrapper = lambda { |self_component, self_port, other_port|
      method.call(BTSelfComponentFilter.new(self_component, retain: false, auto_release: false),
                  BTSelfComponentPortInput.new(self_port, retain: false, auto_release: false),
                  BTPortOutput.new(other_port, retain: false, auto_release: false))
    }
    @@callbacks[id][:input_port_connected_method] = method_wrapper
    method_wrapper
  end

  def self._wrap_component_class_filter_output_port_connected_method(handle, method)
    id = handle.to_i
    method_wrapper = lambda { |self_component, self_port, other_port|
      method.call(BTSelfComponentFilter.new(self_component, retain: false, auto_release: false),
                  BTSelfComponentPortOutput.new(self_port, retain: false, auto_release: false),
                  BTPortInput.new(other_port, retain: false, auto_release: false))
    }
    @@callbacks[id][:output_port_connected_method] = method_wrapper
    method_wrapper
  end

  def self._wrap_component_class_sink_input_port_connected_method(handle, method)
    id = handle.to_i
    method_wrapper = lambda { |self_component, self_port, other_port|
      method.call(BTSelfComponentSink.new(self_component, retain: false, auto_release: false),
                  BTSelfComponentPortInput.new(self_port, retain: false, auto_release: false),
                  BTPortOutput.new(other_port, retain: false, auto_release: false))
    }
    @@callbacks[id][:input_port_connected_method] = method_wrapper
    method_wrapper
  end

  def self._wrap_component_class_query_method(component_class, handle, method)
    id = handle.to_i
    method_wrapper = lambda { |self_component_class, query_executor, object_name, params, method_data, result|
      res, rvalue = method.call(component_class.new(self_component_class, retain: false, auto_release: false),
                                BTPrivateQueryExecutor.new(query_executor),
                                object_name, BTValue.from_handle(params), method_data)
      result.write_pointer(rvalue.handle)
      res
    }
    @@callbacks[id][:query_method] = method_wrapper
    method_wrapper
  end

  BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK = BT_FUNC_STATUS_OK
  BTComponentClassSetMethodStatus =
    enum :bt_component_class_set_method_status,
    [ :BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK,
       BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK ]

  class BTComponentClass
    def set_finalize_method(method = nil, &block)
      if method.nil?
        raise ArgumentError, "method or block must be provided" unless block_given?
        method = block
      end
      if method.kind_of?(Proc)
        method = Babeltrace2._wrap_component_class_finalize_method(@handle, method)
      end
      res = _set_finalize_method(method)
      raise res if res != :BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK
      self
    end

    def finalize_method=(method)
      set_finalize_method(method)
      method
    end

    def set_get_supported_mip_versions_method(method = nil, &block)
      if method.nil?
        raise ArgumentError, "method or block must be provided" unless block_given?
        method = block
      end
      if method.kind_of?(Proc)
        method = Babeltrace2._wrap_component_class_get_supported_mip_versions_method(@handle, method)
      end
      res = _set_get_supported_mip_versions_method(method)
      raise res if res != :BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK
      self
    end

    def get_supported_mip_versions_method=(method)
      set_get_supported_mip_versions_method(method)
      method
    end

    def set_initialize_method(method = nil, &block)
      if method.nil?
        raise ArgumentError, "method or block must be provided" unless block_given?
        method = block
      end
      if method.kind_of?(Proc)
        method = _wrap_initialize_method(method)
      end
      res = _set_initialize_method(method)
      raise res if res != :BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK
      self
    end

    def initialize_method=(method)
      set_initialize_method(method)
      method
    end

    def set_query_method(method = nil, &block)
      if method.nil?
        raise ArgumentError, "method or block must be provided" unless block_given?
        method = block
      end
      if method.kind_of?(Proc)
        method = _wrap_query_method(method)
      end
      res = _set_query_method(method)
      raise res if res != :BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK
      self
    end

    def query_method=(method)
      set_query_method(method)
      method
    end
  end

  attach_function :bt_component_class_source_set_finalize_method,
                  [ :bt_component_class_source_handle,
                    :bt_component_class_source_finalize_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_source_set_get_supported_mip_versions_method,
                  [ :bt_component_class_source_handle,
                    :bt_component_class_source_get_supported_mip_versions_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_source_set_initialize_method,
                  [ :bt_component_class_source_handle,
                    :bt_component_class_source_initialize_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_source_set_output_port_connected_method,
                  [ :bt_component_class_source_handle,
                    :bt_component_class_source_output_port_connected_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_source_set_query_method,
                  [ :bt_component_class_source_handle,
                    :bt_component_class_source_query_method ],
                  :bt_component_class_set_method_status

  class BTComponentClass::Source
    private
    def _set_finalize_method(method)
      Babeltrace2.bt_component_class_source_set_finalize_method(@handle, method)
    end

    def _set_get_supported_mip_versions_method(method)
      Babeltrace2.bt_component_class_source_set_get_supported_mip_versions_method(@handle, method)
    end

    def _wrap_initialize_method(method)
      Babeltrace2._wrap_component_class_initialize_method(BTSelfComponentSource, BTSelfComponentSourceConfiguration, @handle, method)
    end

    def _set_initialize_method(method)
      Babeltrace2.bt_component_class_source_set_initialize_method(@handle, method)
    end

    public
    def set_output_port_connected_method(method, &block)
      if method.nil?
        raise ArgumentError, "method or block must be provided" unless block_given?
        method = block
      end
      if method.kind_of?(Proc)
        method = Babeltrace2._wrap_component_class_source_output_port_connected_method(@handle, method)
      end
      res = Babeltrace2.bt_component_class_source_set_output_port_connected_method(method)
      raise res if res != :BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK
      self
    end

    def output_port_connected_method=(method)
      set_output_port_connected_method(method)
      method
    end

    private
    def _wrap_query_method(method)
      Babeltrace2._wrap_component_class_query_method(BTSelfComponentClassSource, @handle, method)
    end

    def _set_query_method(method)
      Babeltrace2.bt_component_class_source_set_query_method(@handle, method)
    end
  end


  attach_function :bt_component_class_filter_set_finalize_method,
                  [ :bt_component_class_filter_handle,
                    :bt_component_class_filter_finalize_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_filter_set_get_supported_mip_versions_method,
                  [ :bt_component_class_filter_handle,
                    :bt_component_class_filter_get_supported_mip_versions_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_filter_set_initialize_method,
                  [ :bt_component_class_filter_handle,
                    :bt_component_class_filter_initialize_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_filter_set_input_port_connected_method,
                  [ :bt_component_class_filter_handle,
                    :bt_component_class_filter_input_port_connected_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_filter_set_output_port_connected_method,
                  [ :bt_component_class_filter_handle,
                    :bt_component_class_filter_output_port_connected_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_filter_set_query_method,
                  [ :bt_component_class_filter_handle,
                    :bt_component_class_filter_query_method ],
                  :bt_component_class_set_method_status

  class BTComponentClass::Filter
    private
    def _set_finalize_method(method)
      Babeltrace2.bt_component_class_filter_set_finalize_method(@handle, method)
    end

    def _set_get_supported_mip_versions_method(method)
      Babeltrace2.bt_component_class_filter_set_get_supported_mip_versions_method(@handle, method)
    end

    def _wrap_initialize_method(method)
      Babeltrace2._wrap_component_class_initialize_method(BTSelfComponentFilter, BTSelfComponentFilterConfiguration, @handle, method)
    end

    def _set_initialize_method(method)
      Babeltrace2.bt_component_class_filter_set_initialize_method(@handle, method)
    end

    public
    def set_input_port_connected_method(method, &block)
      if method.nil?
        raise ArgumentError, "method or block must be provided" unless block_given?
        method = block
      end
      if method.kind_of?(Proc)
        method = Babeltrace2._wrap_component_class_filter_input_port_connected_method(@handle, method)
      end
      res = Babeltrace2.bt_component_class_filter_set_input_port_connected_method(method)
      raise res if res != :BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK
      self
    end

    def input_port_connected_method=(method)
      set_input_port_connected_method(method)
      method
    end

    def set_output_port_connected_method(method, &block)
      if method.nil?
        raise ArgumentError, "method or block must be provided" unless block_given?
        method = block
      end
      if method.kind_of?(Proc)
        method = Babeltrace2._wrap_component_class_filter_output_port_connected_method(@handle, method)
      end
      res = Babeltrace2.bt_component_class_filter_set_output_port_connected_method(method)
      raise res if res != :BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK
      self
    end

    def output_port_connected_method=(method)
      set_output_port_connected_method(method)
      method
    end

    private
    def _wrap_query_method(method)
      Babeltrace2._wrap_component_class_query_method(BTSelfComponentClassFilter, @handle, method)
    end

    def _set_query_method(method)
      Babeltrace2.bt_component_class_filter_set_query_method(@handle, method)
    end
  end

  attach_function :bt_component_class_sink_set_finalize_method,
                  [ :bt_component_class_sink_handle,
                    :bt_component_class_sink_finalize_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_sink_set_get_supported_mip_versions_method,
                  [ :bt_component_class_sink_handle,
                    :bt_component_class_sink_get_supported_mip_versions_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_sink_set_graph_is_configured_method,
                  [ :bt_component_class_sink_handle,
                    :bt_component_class_sink_graph_is_configured_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_sink_set_initialize_method,
                  [ :bt_component_class_sink_handle,
                    :bt_component_class_sink_initialize_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_sink_set_input_port_connected_method,
                  [ :bt_component_class_sink_handle,
                    :bt_component_class_sink_input_port_connected_method ],
                  :bt_component_class_set_method_status

  attach_function :bt_component_class_sink_set_query_method,
                  [ :bt_component_class_sink_handle,
                    :bt_component_class_sink_query_method ],
                  :bt_component_class_set_method_status

  class BTComponentClass::Sink
    private
    def _set_finalize_method(method)
      Babeltrace2.bt_component_class_sink_set_finalize_method(@handle, method)
    end

    def _set_get_supported_mip_versions_method(method)
      Babeltrace2.bt_component_class_sink_set_get_supported_mip_versions_method(@handle, method)
    end

    public
    def set_graph_is_configured_method(method, &block)
      if method.nil?
        raise ArgumentError, "method or block must be provided" unless block_given?
        method = block
      end
      if method.kind_of?(Proc)
        method = Babeltrace2._wrap_component_class_sink_graph_is_configured_method(@handle, method)
      end
      res = Babeltrace2.bt_component_class_sink_set_graph_is_configured_method(method)
      raise res if res != :BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK
      self
    end

    def graph_is_configured_method=(method)
      set_graph_is_configured_method(method)
      mathod
    end

    private
    def _wrap_initialize_method(method)
      Babeltrace2._wrap_component_class_initialize_method(BTSelfComponentSink, BTSelfComponentSinkConfiguration, @handle, method)
    end

    def _set_initialize_method(method)
      Babeltrace2.bt_component_class_sink_set_initialize_method(@handle, method)
    end

    public
    def set_input_port_connected_method(method, &block)
      if method.nil?
        raise ArgumentError, "method or block must be provided" unless block_given?
        method = block
      end
      if method.kind_of?(Proc)
        method = Babeltrace2._wrap_component_class_sink_input_port_connected_method(@handle, method)
      end
      res = Babeltrace2.bt_component_class_sink_set_input_port_connected_method(method)
      raise res if res != :BT_COMPONENT_CLASS_SET_METHOD_STATUS_OK
      self
    end

    def input_port_connected_method=(method)
      set_input_port_connected_method(method)
      method
    end

    private
    def _wrap_query_method(method)
      Babeltrace2._wrap_component_class_query_method(BTSelfComponentClassSink, @handle, method)
    end

    def _set_query_method(method)
      Babeltrace2.bt_component_class_sink_set_query_method(@handle, method)
    end
  end
end