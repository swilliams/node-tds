class RowPacket extends Packet
  
  @type: 0xD1
  
  @name: 'ROW'
  
  values: []
  
  fromBuffer: (stream, context) ->
    for column in context.columns
      # TODO - I know this is all wrong
      @values.push stream.readBuffer(column.length) 
