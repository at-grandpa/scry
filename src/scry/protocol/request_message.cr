require "./initialize_params"
require "./text_document_position_params"
require "./workspace_symbol_params"

module Scry
  struct RequestMessage
    alias RequestType = (TextDocumentPositionParams |
                         InitializeParams |
                         DocumentFormattingParams |
                         TextDocumentParams |
                         WorkspaceSymbolParams |
                         CompletionItem)?

    JSON.mapping({
      jsonrpc: String,
      id:      Int32,
      method:  String,
      params:  RequestType,
    })
  end
end
