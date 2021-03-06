{*******************************************************}
{                                                       }
{           CodeGear Delphi Runtime Library             }
{                                                       }
{ Copyright(c) 2015-2015 Embarcadero Technologies, Inc. }
{                                                       }
{*******************************************************}

unit WinAPI.Data;

interface
uses 
  // Fixed Uses...
  // Internal Uses...
//  WinAPI.UI,
  WinAPI.Foundation,
  WinAPI.Storage.Streams,
  WinAPI.Storage,
  WinAPI.Foundation.Collections,
  WinAPI.Foundation.Types,
  WinAPI.CommonTypes,
  Winapi.Winrt,
  System.Types;


{$SCOPEDENUMS ON}

const
  // Windows.Data Class Names
  // Windows.Data.Html.HtmlUtilities
  // WinRT Only
  SHtml_HtmlUtilities = 'Windows.Data.Html.HtmlUtilities';
  // Windows.Data.Json.JsonArray
  // DualAPI
  SJson_JsonArray = 'Windows.Data.Json.JsonArray';
  // Windows.Data.Json.JsonObject
  // DualAPI
  SJson_JsonObject = 'Windows.Data.Json.JsonObject';
  // Windows.Data.Json.JsonValue
  // DualAPI
  SJson_JsonValue = 'Windows.Data.Json.JsonValue';
  // Windows.Data.Json.JsonError
  // DualAPI
  SJson_JsonError = 'Windows.Data.Json.JsonError';
  // Windows.Data.Pdf.PdfPageRenderOptions
  // WinRT Only
  SPdf_PdfPageRenderOptions = 'Windows.Data.Pdf.PdfPageRenderOptions';
  // Windows.Data.Pdf.PdfPageDimensions
  // WinRT Only
  SPdf_PdfPageDimensions = 'Windows.Data.Pdf.PdfPageDimensions';
  // Windows.Data.Pdf.PdfPage
  // WinRT Only
  SPdf_PdfPage = 'Windows.Data.Pdf.PdfPage';
  // Windows.Data.Pdf.PdfDocument
  // WinRT Only
  SPdf_PdfDocument = 'Windows.Data.Pdf.PdfDocument';
  // Windows.Data.Text.SemanticTextQuery
  // WinRT Only
  SText_SemanticTextQuery = 'Windows.Data.Text.SemanticTextQuery';
  // Windows.Data.Xml.Dom.XmlNodeList
  // WinRT Only
  SXml_Dom_XmlNodeList = 'Windows.Data.Xml.Dom.XmlNodeList';
  // Windows.Data.Xml.Dom.XmlNamedNodeMap
  // WinRT Only
  SXml_Dom_XmlNamedNodeMap = 'Windows.Data.Xml.Dom.XmlNamedNodeMap';
  // Windows.Data.Xml.Dom.XmlDocument
  // WinRT Only
  SXml_Dom_XmlDocument = 'Windows.Data.Xml.Dom.XmlDocument';
  // Windows.Data.Xml.Dom.XmlAttribute
  // WinRT Only
  SXml_Dom_XmlAttribute = 'Windows.Data.Xml.Dom.XmlAttribute';
  // Windows.Data.Xml.Dom.XmlDocumentType
  // WinRT Only
  SXml_Dom_XmlDocumentType = 'Windows.Data.Xml.Dom.XmlDocumentType';
  // Windows.Data.Xml.Dom.XmlDomImplementation
  // WinRT Only
  SXml_Dom_XmlDomImplementation = 'Windows.Data.Xml.Dom.XmlDomImplementation';
  // Windows.Data.Xml.Dom.XmlElement
  // WinRT Only
  SXml_Dom_XmlElement = 'Windows.Data.Xml.Dom.XmlElement';
  // Windows.Data.Xml.Dom.XmlDocumentFragment
  // WinRT Only
  SXml_Dom_XmlDocumentFragment = 'Windows.Data.Xml.Dom.XmlDocumentFragment';
  // Windows.Data.Xml.Dom.XmlText
  // WinRT Only
  SXml_Dom_XmlText = 'Windows.Data.Xml.Dom.XmlText';
  // Windows.Data.Xml.Dom.XmlComment
  // WinRT Only
  SXml_Dom_XmlComment = 'Windows.Data.Xml.Dom.XmlComment';
  // Windows.Data.Xml.Dom.XmlProcessingInstruction
  // WinRT Only
  SXml_Dom_XmlProcessingInstruction = 'Windows.Data.Xml.Dom.XmlProcessingInstruction';
  // Windows.Data.Xml.Dom.XmlEntityReference
  // WinRT Only
  SXml_Dom_XmlEntityReference = 'Windows.Data.Xml.Dom.XmlEntityReference';
  // Windows.Data.Xml.Dom.XmlCDataSection
  // WinRT Only
  SXml_Dom_XmlCDataSection = 'Windows.Data.Xml.Dom.XmlCDataSection';
  // Windows.Data.Xml.Dom.XmlLoadSettings
  // WinRT Only
  SXml_Dom_XmlLoadSettings = 'Windows.Data.Xml.Dom.XmlLoadSettings';
  // Windows.Data.Xml.Dom.DtdNotation
  // WinRT Only
  SXml_Dom_DtdNotation = 'Windows.Data.Xml.Dom.DtdNotation';
  // Windows.Data.Xml.Dom.DtdEntity
  // WinRT Only
  SXml_Dom_DtdEntity = 'Windows.Data.Xml.Dom.DtdEntity';
  // Windows.Data.Xml.Xsl.XsltProcessor
  // WinRT Only
  SXml_Xsl_XsltProcessor = 'Windows.Data.Xml.Xsl.XsltProcessor';
  // Windows.Data.Text.UnicodeCharacters
  // DualAPI
  SText_UnicodeCharacters = 'Windows.Data.Text.UnicodeCharacters';
  // Windows.Data.Text.AlternateWordForm
  // DualAPI
  SText_AlternateWordForm = 'Windows.Data.Text.AlternateWordForm';
  // Windows.Data.Text.WordSegment
  // DualAPI
  SText_WordSegment = 'Windows.Data.Text.WordSegment';
  // Windows.Data.Text.WordsSegmenter
  // DualAPI
  SText_WordsSegmenter = 'Windows.Data.Text.WordsSegmenter';
  // Windows.Data.Text.SelectableWordSegment
  // DualAPI
  SText_SelectableWordSegment = 'Windows.Data.Text.SelectableWordSegment';
  // Windows.Data.Text.SelectableWordsSegmenter
  // DualAPI
  SText_SelectableWordsSegmenter = 'Windows.Data.Text.SelectableWordsSegmenter';
  // Windows.Data.Text.TextPredictionGenerator
  // WinRT Only
  SText_TextPredictionGenerator = 'Windows.Data.Text.TextPredictionGenerator';
  // Windows.Data.Text.TextConversionGenerator
  // WinRT Only
  SText_TextConversionGenerator = 'Windows.Data.Text.TextConversionGenerator';
  // Windows.Data.Text.TextReverseConversionGenerator
  // WinRT Only
  SText_TextReverseConversionGenerator = 'Windows.Data.Text.TextReverseConversionGenerator';


type

  // Forward declare interfaces
  // Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.TextSegment>
  IIterator_1__Text_TextSegment = interface;
  PIIterator_1__Text_TextSegment = ^IIterator_1__Text_TextSegment;

  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.TextSegment>
  IIterable_1__Text_TextSegment = interface;
  PIIterable_1__Text_TextSegment = ^IIterable_1__Text_TextSegment;

  // Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>
  IVectorView_1__Text_TextSegment = interface;
  PIVectorView_1__Text_TextSegment = ^IVectorView_1__Text_TextSegment;

  // Windows.Data.Html.IHtmlUtilities
  Html_IHtmlUtilities = interface;
  PHtml_IHtmlUtilities = ^Html_IHtmlUtilities;

  // Windows.Data.Json.IJsonObject
  Json_IJsonObject = interface;
  PJson_IJsonObject = ^Json_IJsonObject;

  // Windows.Data.Json.IJsonArray
  Json_IJsonArray = interface;
  PJson_IJsonArray = ^Json_IJsonArray;

  // Windows.Data.Json.IJsonValue
  Json_IJsonValue = interface;
  PJson_IJsonValue = ^Json_IJsonValue;

  // Windows.Data.Json.IJsonValueStatics
  Json_IJsonValueStatics = interface;
  PJson_IJsonValueStatics = ^Json_IJsonValueStatics;

  // Windows.Data.Json.IJsonValueStatics2
  Json_IJsonValueStatics2 = interface;
  PJson_IJsonValueStatics2 = ^Json_IJsonValueStatics2;

  // Windows.Data.Json.IJsonObjectWithDefaultValues
  Json_IJsonObjectWithDefaultValues = interface;
  PJson_IJsonObjectWithDefaultValues = ^Json_IJsonObjectWithDefaultValues;

  // Windows.Data.Json.IJsonObjectStatics
  Json_IJsonObjectStatics = interface;
  PJson_IJsonObjectStatics = ^Json_IJsonObjectStatics;

  // Windows.Data.Json.IJsonArrayStatics
  Json_IJsonArrayStatics = interface;
  PJson_IJsonArrayStatics = ^Json_IJsonArrayStatics;

  // Windows.Data.Json.IJsonErrorStatics
  Json_IJsonErrorStatics = interface;
  PJson_IJsonErrorStatics = ^Json_IJsonErrorStatics;

  // Windows.Data.Json.IJsonErrorStatics2
  Json_IJsonErrorStatics2 = interface;
  PJson_IJsonErrorStatics2 = ^Json_IJsonErrorStatics2;

(*
  // Windows.Data.Pdf.IPdfPageDimensions
  Pdf_IPdfPageDimensions = interface;
  PPdf_IPdfPageDimensions = ^Pdf_IPdfPageDimensions;

*)

(*
  // Windows.Data.Pdf.IPdfPageRenderOptions
  Pdf_IPdfPageRenderOptions = interface;
  PPdf_IPdfPageRenderOptions = ^Pdf_IPdfPageRenderOptions;

*)

(*
  // Windows.Data.Pdf.IPdfPage
  Pdf_IPdfPage = interface;
  PPdf_IPdfPage = ^Pdf_IPdfPage;

*)

(*
  // Windows.Data.Pdf.IPdfDocument
  Pdf_IPdfDocument = interface;
  PPdf_IPdfDocument = ^Pdf_IPdfDocument;

*)

(*
  // Windows.Foundation.AsyncOperationCompletedHandler`1<Windows.Data.Pdf.IPdfDocument>
  AsyncOperationCompletedHandler_1__Pdf_IPdfDocument = interface;
  PAsyncOperationCompletedHandler_1__Pdf_IPdfDocument = ^AsyncOperationCompletedHandler_1__Pdf_IPdfDocument;

*)

(*
  // Windows.Foundation.IAsyncOperation`1<Windows.Data.Pdf.IPdfDocument>
  IAsyncOperation_1__Pdf_IPdfDocument = interface;
  PIAsyncOperation_1__Pdf_IPdfDocument = ^IAsyncOperation_1__Pdf_IPdfDocument;

*)

(*
  // Windows.Data.Pdf.IPdfDocumentStatics
  Pdf_IPdfDocumentStatics = interface;
  PPdf_IPdfDocumentStatics = ^Pdf_IPdfDocumentStatics;

*)

(*
  // Windows.Data.Text.ISemanticTextQuery
  Text_ISemanticTextQuery = interface;
  PText_ISemanticTextQuery = ^Text_ISemanticTextQuery;

*)

(*
  // Windows.Data.Text.ISemanticTextQueryFactory
  Text_ISemanticTextQueryFactory = interface;
  PText_ISemanticTextQueryFactory = ^Text_ISemanticTextQueryFactory;

*)

  // Windows.Foundation.Collections.IIterator`1<Windows.Data.Xml.Dom.IXmlNode>
  IIterator_1__Xml_Dom_IXmlNode = interface;
  PIIterator_1__Xml_Dom_IXmlNode = ^IIterator_1__Xml_Dom_IXmlNode;

(*
  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Xml.Dom.IXmlNode>
  IIterable_1__Xml_Dom_IXmlNode = interface;
  PIIterable_1__Xml_Dom_IXmlNode = ^IIterable_1__Xml_Dom_IXmlNode;

*)

(*
  // Windows.Foundation.Collections.IVectorView`1<Windows.Data.Xml.Dom.IXmlNode>
  IVectorView_1__Xml_Dom_IXmlNode = interface;
  PIVectorView_1__Xml_Dom_IXmlNode = ^IVectorView_1__Xml_Dom_IXmlNode;

*)

  // Windows.Data.Xml.Dom.IXmlNodeList
  Xml_Dom_IXmlNodeList = interface;
  PXml_Dom_IXmlNodeList = ^Xml_Dom_IXmlNodeList;

  // Windows.Data.Xml.Dom.IXmlNamedNodeMap
  Xml_Dom_IXmlNamedNodeMap = interface;
  PXml_Dom_IXmlNamedNodeMap = ^Xml_Dom_IXmlNamedNodeMap;

  // Windows.Data.Xml.Dom.IXmlDocumentType
  Xml_Dom_IXmlDocumentType = interface;
  PXml_Dom_IXmlDocumentType = ^Xml_Dom_IXmlDocumentType;

  // Windows.Data.Xml.Dom.IXmlDomImplementation
  Xml_Dom_IXmlDomImplementation = interface;
  PXml_Dom_IXmlDomImplementation = ^Xml_Dom_IXmlDomImplementation;

  // Windows.Data.Xml.Dom.IXmlAttribute
  Xml_Dom_IXmlAttribute = interface;
  PXml_Dom_IXmlAttribute = ^Xml_Dom_IXmlAttribute;

  // Windows.Data.Xml.Dom.IXmlElement
  Xml_Dom_IXmlElement = interface;
  PXml_Dom_IXmlElement = ^Xml_Dom_IXmlElement;

  // Windows.Data.Xml.Dom.IXmlDocumentFragment
  Xml_Dom_IXmlDocumentFragment = interface;
  PXml_Dom_IXmlDocumentFragment = ^Xml_Dom_IXmlDocumentFragment;

(*
  // Windows.Data.Xml.Dom.IXmlCharacterData
  Xml_Dom_IXmlCharacterData = interface;
  PXml_Dom_IXmlCharacterData = ^Xml_Dom_IXmlCharacterData;

*)

  // Windows.Data.Xml.Dom.IXmlText
  Xml_Dom_IXmlText = interface;
  PXml_Dom_IXmlText = ^Xml_Dom_IXmlText;

  // Windows.Data.Xml.Dom.IXmlComment
  Xml_Dom_IXmlComment = interface;
  PXml_Dom_IXmlComment = ^Xml_Dom_IXmlComment;

  // Windows.Data.Xml.Dom.IXmlProcessingInstruction
  Xml_Dom_IXmlProcessingInstruction = interface;
  PXml_Dom_IXmlProcessingInstruction = ^Xml_Dom_IXmlProcessingInstruction;

  // Windows.Data.Xml.Dom.IXmlEntityReference
  Xml_Dom_IXmlEntityReference = interface;
  PXml_Dom_IXmlEntityReference = ^Xml_Dom_IXmlEntityReference;

  // Windows.Data.Xml.Dom.IXmlCDataSection
  Xml_Dom_IXmlCDataSection = interface;
  PXml_Dom_IXmlCDataSection = ^Xml_Dom_IXmlCDataSection;

  // Windows.Data.Xml.Dom.IXmlDocument
  Xml_Dom_IXmlDocument = interface;
  PXml_Dom_IXmlDocument = ^Xml_Dom_IXmlDocument;

  // Windows.Data.Xml.Dom.IXmlNode
  Xml_Dom_IXmlNode = interface;
  PXml_Dom_IXmlNode = ^Xml_Dom_IXmlNode;

(*
  // Windows.Data.Xml.Dom.IXmlNodeSelector
  Xml_Dom_IXmlNodeSelector = interface;
  PXml_Dom_IXmlNodeSelector = ^Xml_Dom_IXmlNodeSelector;

*)

(*
  // Windows.Data.Xml.Dom.IXmlNodeSerializer
  Xml_Dom_IXmlNodeSerializer = interface;
  PXml_Dom_IXmlNodeSerializer = ^Xml_Dom_IXmlNodeSerializer;

*)

(*
  // Windows.Data.Xml.Dom.IDtdNotation
  Xml_Dom_IDtdNotation = interface;
  PXml_Dom_IDtdNotation = ^Xml_Dom_IDtdNotation;

*)

(*
  // Windows.Data.Xml.Dom.IDtdEntity
  Xml_Dom_IDtdEntity = interface;
  PXml_Dom_IDtdEntity = ^Xml_Dom_IDtdEntity;

*)

(*
  // Windows.Data.Xml.Dom.IXmlLoadSettings
  Xml_Dom_IXmlLoadSettings = interface;
  PXml_Dom_IXmlLoadSettings = ^Xml_Dom_IXmlLoadSettings;

*)

(*
  // Windows.Data.Xml.Dom.IXmlDocumentIO
  Xml_Dom_IXmlDocumentIO = interface;
  PXml_Dom_IXmlDocumentIO = ^Xml_Dom_IXmlDocumentIO;

*)

(*
  // Windows.Data.Xml.Dom.IXmlDocumentIO2
  Xml_Dom_IXmlDocumentIO2 = interface;
  PXml_Dom_IXmlDocumentIO2 = ^Xml_Dom_IXmlDocumentIO2;

*)

  // Windows.Foundation.AsyncOperationCompletedHandler`1<Windows.Data.Xml.Dom.IXmlDocument>
  AsyncOperationCompletedHandler_1__Xml_Dom_IXmlDocument = interface;
  PAsyncOperationCompletedHandler_1__Xml_Dom_IXmlDocument = ^AsyncOperationCompletedHandler_1__Xml_Dom_IXmlDocument;

  // Windows.Foundation.IAsyncOperation`1<Windows.Data.Xml.Dom.IXmlDocument>
  IAsyncOperation_1__Xml_Dom_IXmlDocument = interface;
  PIAsyncOperation_1__Xml_Dom_IXmlDocument = ^IAsyncOperation_1__Xml_Dom_IXmlDocument;

(*
  // Windows.Data.Xml.Dom.IXmlDocumentStatics
  Xml_Dom_IXmlDocumentStatics = interface;
  PXml_Dom_IXmlDocumentStatics = ^Xml_Dom_IXmlDocumentStatics;

*)

(*
  // Windows.Data.Xml.Xsl.IXsltProcessor
  Xml_Xsl_IXsltProcessor = interface;
  PXml_Xsl_IXsltProcessor = ^Xml_Xsl_IXsltProcessor;

*)

(*
  // Windows.Data.Xml.Xsl.IXsltProcessor2
  Xml_Xsl_IXsltProcessor2 = interface;
  PXml_Xsl_IXsltProcessor2 = ^Xml_Xsl_IXsltProcessor2;

*)

(*
  // Windows.Data.Xml.Xsl.IXsltProcessorFactory
  Xml_Xsl_IXsltProcessorFactory = interface;
  PXml_Xsl_IXsltProcessorFactory = ^Xml_Xsl_IXsltProcessorFactory;

*)

  // Windows.Data.Text.IUnicodeCharactersStatics
  Text_IUnicodeCharactersStatics = interface;
  PText_IUnicodeCharactersStatics = ^Text_IUnicodeCharactersStatics;

  // Windows.Data.Text.IAlternateWordForm
  Text_IAlternateWordForm = interface;
  PText_IAlternateWordForm = ^Text_IAlternateWordForm;

  // Windows.Data.Text.ISelectableWordSegment
  Text_ISelectableWordSegment = interface;
  PText_ISelectableWordSegment = ^Text_ISelectableWordSegment;

  // Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.IAlternateWordForm>
  IIterator_1__Text_IAlternateWordForm = interface;
  PIIterator_1__Text_IAlternateWordForm = ^IIterator_1__Text_IAlternateWordForm;

  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.IAlternateWordForm>
  IIterable_1__Text_IAlternateWordForm = interface;
  PIIterable_1__Text_IAlternateWordForm = ^IIterable_1__Text_IAlternateWordForm;

  // Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.IAlternateWordForm>
  IVectorView_1__Text_IAlternateWordForm = interface;
  PIVectorView_1__Text_IAlternateWordForm = ^IVectorView_1__Text_IAlternateWordForm;

  // Windows.Data.Text.IWordSegment
  Text_IWordSegment = interface;
  PText_IWordSegment = ^Text_IWordSegment;

  // Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.IWordSegment>
  IIterator_1__Text_IWordSegment = interface;
  PIIterator_1__Text_IWordSegment = ^IIterator_1__Text_IWordSegment;

  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.IWordSegment>
  IIterable_1__Text_IWordSegment = interface;
  PIIterable_1__Text_IWordSegment = ^IIterable_1__Text_IWordSegment;

  // Windows.Data.Text.WordSegmentsTokenizingHandler
  Text_WordSegmentsTokenizingHandler = interface;
  PText_WordSegmentsTokenizingHandler = ^Text_WordSegmentsTokenizingHandler;

  // Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.IWordSegment>
  IVectorView_1__Text_IWordSegment = interface;
  PIVectorView_1__Text_IWordSegment = ^IVectorView_1__Text_IWordSegment;

  // Windows.Data.Text.IWordsSegmenter
  Text_IWordsSegmenter = interface;
  PText_IWordsSegmenter = ^Text_IWordsSegmenter;

  // Windows.Data.Text.IWordsSegmenterFactory
  Text_IWordsSegmenterFactory = interface;
  PText_IWordsSegmenterFactory = ^Text_IWordsSegmenterFactory;

  // Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.ISelectableWordSegment>
  IIterator_1__Text_ISelectableWordSegment = interface;
  PIIterator_1__Text_ISelectableWordSegment = ^IIterator_1__Text_ISelectableWordSegment;

  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.ISelectableWordSegment>
  IIterable_1__Text_ISelectableWordSegment = interface;
  PIIterable_1__Text_ISelectableWordSegment = ^IIterable_1__Text_ISelectableWordSegment;

  // Windows.Data.Text.SelectableWordSegmentsTokenizingHandler
  Text_SelectableWordSegmentsTokenizingHandler = interface;
  PText_SelectableWordSegmentsTokenizingHandler = ^Text_SelectableWordSegmentsTokenizingHandler;

  // Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.ISelectableWordSegment>
  IVectorView_1__Text_ISelectableWordSegment = interface;
  PIVectorView_1__Text_ISelectableWordSegment = ^IVectorView_1__Text_ISelectableWordSegment;

  // Windows.Data.Text.ISelectableWordsSegmenter
  Text_ISelectableWordsSegmenter = interface;
  PText_ISelectableWordsSegmenter = ^Text_ISelectableWordsSegmenter;

  // Windows.Data.Text.ISelectableWordsSegmenterFactory
  Text_ISelectableWordsSegmenterFactory = interface;
  PText_ISelectableWordsSegmenterFactory = ^Text_ISelectableWordsSegmenterFactory;

(*
  // Windows.Data.Text.ITextPredictionGenerator
  Text_ITextPredictionGenerator = interface;
  PText_ITextPredictionGenerator = ^Text_ITextPredictionGenerator;

*)

(*
  // Windows.Data.Text.ITextPredictionGeneratorFactory
  Text_ITextPredictionGeneratorFactory = interface;
  PText_ITextPredictionGeneratorFactory = ^Text_ITextPredictionGeneratorFactory;

*)

(*
  // Windows.Data.Text.ITextConversionGenerator
  Text_ITextConversionGenerator = interface;
  PText_ITextConversionGenerator = ^Text_ITextConversionGenerator;

*)

(*
  // Windows.Data.Text.ITextConversionGeneratorFactory
  Text_ITextConversionGeneratorFactory = interface;
  PText_ITextConversionGeneratorFactory = ^Text_ITextConversionGeneratorFactory;

*)

(*
  // Windows.Data.Text.ITextReverseConversionGenerator
  Text_ITextReverseConversionGenerator = interface;
  PText_ITextReverseConversionGenerator = ^Text_ITextReverseConversionGenerator;

*)

(*
  // Windows.Data.Text.ITextReverseConversionGeneratorFactory
  Text_ITextReverseConversionGeneratorFactory = interface;
  PText_ITextReverseConversionGeneratorFactory = ^Text_ITextReverseConversionGeneratorFactory;

*)

  // Windows.Foundation.Collections.IKeyValuePair`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>
  IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment = interface;
  PIKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment = ^IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment;

  // Windows.Foundation.Collections.IIterator`1<Windows.Foundation.Collections.IKeyValuePair`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>>
  IIterator_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment = interface;
  PIIterator_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment = ^IIterator_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment;

  // Windows.Foundation.Collections.IIterable`1<Windows.Foundation.Collections.IKeyValuePair`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>>
  IIterable_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment = interface;
  PIIterable_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment = ^IIterable_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment;

  // Windows.Foundation.Collections.IMapView`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>
  IMapView_2__HSTRING__IVectorView_1__Text_TextSegment = interface;
  PIMapView_2__HSTRING__IVectorView_1__Text_TextSegment = ^IMapView_2__HSTRING__IVectorView_1__Text_TextSegment;

  // Windows.Foundation.Collections.IMap`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>
  IMap_2__HSTRING__IVectorView_1__Text_TextSegment = interface;
  PIMap_2__HSTRING__IVectorView_1__Text_TextSegment = ^IMap_2__HSTRING__IVectorView_1__Text_TextSegment;



  // Emit Forwarded interfaces
  // Windows.Data Interfaces
  {
  // Used Types:  Windows.Data.Text.TextSegment
  // Used Types:  Boolean
  // Used Types:  UInt32
  }
  // Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.TextSegment>
  IIterator_1__Text_TextSegment = interface(IInspectable)
  ['{752850B9-5ED2-5655-8DE2-262EFC26CF39}']
    function get_Current: Text_TextSegment; safecall;
    function get_HasCurrent: Boolean; safecall;
    function MoveNext: Boolean; safecall;
    function GetMany(out {TODO: verify}items: PText_TextSegment): Cardinal; safecall;
    property Current: Text_TextSegment read get_Current;
    property HasCurrent: Boolean read get_HasCurrent;
  end;

  // Generic Delegate for 
  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.TextSegment>
  IIterable_1__Text_TextSegment_Delegate_Base = interface(IUnknown)
  ['{5498F4F3-CEE4-5B72-9729-815C4AD7B9DC}']
  end;
  {
  // Used Types:  Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.TextSegment>
  }
  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.TextSegment>
  IIterable_1__Text_TextSegment = interface(IIterable_1__Text_TextSegment_Delegate_Base)
  ['{1B6614A1-8FC5-567D-9157-410A9E0ECBC5}']
    function First: IIterator_1__Text_TextSegment; safecall;
  end;

  {
  // Used Types:  Windows.Data.Text.TextSegment
  // Used Types:  UInt32
  // Used Types:  Boolean
  }
  // Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>
  IVectorView_1__Text_TextSegment = interface(IInspectable)
  ['{86D0B56E-CB4E-58F0-B9A2-1528619DCD26}']
    function GetAt(index: Cardinal): Text_TextSegment; safecall;
    function get_Size: Cardinal; safecall;
    function IndexOf(value: Text_TextSegment; out index: Cardinal): Boolean; safecall;
    function GetMany(startIndex: Cardinal; out {TODO: verify}items: PText_TextSegment): Cardinal; safecall;
    property Size: Cardinal read get_Size;
  end;

  {
  // Used Types:  String
  }
  // Windows.Data.Html.IHtmlUtilities
  Html_IHtmlUtilities = interface(IInspectable)
  ['{FEC00ADD-2399-4FAC-B5A7-05E9ACD7181D}']
    function ConvertToText(html: HSTRING): HSTRING; safecall;
  end;

  // DualAPI Interface
  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Json.IJsonValue
  // Used Types:  String
  // Used Types:  Void
  // Used Types:  Windows.Data.Json.IJsonObject
  // Used Types:  Windows.Data.Json.IJsonArray
  // Used Types:  Double
  // Used Types:  Boolean
  }
  // Windows.Data.Json.IJsonObject
  Json_IJsonObject = interface(IInspectable)
  ['{064E24DD-29C2-4F83-9AC1-9EE11578BEB3}']
    function GetNamedValue(name: HSTRING): Json_IJsonValue; safecall;
    procedure SetNamedValue(name: HSTRING; value: Json_IJsonValue); safecall;
    function GetNamedObject(name: HSTRING): Json_IJsonObject; safecall;
    function GetNamedArray(name: HSTRING): Json_IJsonArray; safecall;
    function GetNamedString(name: HSTRING): HSTRING; safecall;
    function GetNamedNumber(name: HSTRING): Double; safecall;
    function GetNamedBoolean(name: HSTRING): Boolean; safecall;
  end;

  // DualAPI Interface
  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Json.IJsonObject
  // Used Types:  UInt32
  // Used Types:  Windows.Data.Json.IJsonArray
  // Used Types:  String
  // Used Types:  Double
  // Used Types:  Boolean
  }
  // Windows.Data.Json.IJsonArray
  Json_IJsonArray = interface(IInspectable)
  ['{08C1DDB6-0CBD-4A9A-B5D3-2F852DC37E81}']
    function GetObjectAt(index: Cardinal): Json_IJsonObject; safecall;
    function GetArrayAt(index: Cardinal): Json_IJsonArray; safecall;
    function GetStringAt(index: Cardinal): HSTRING; safecall;
    function GetNumberAt(index: Cardinal): Double; safecall;
    function GetBooleanAt(index: Cardinal): Boolean; safecall;
  end;

  // DualAPI Interface
  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Json.JsonValueType
  // Used Types:  String
  // Used Types:  Double
  // Used Types:  Boolean
  // Used Types:  Windows.Data.Json.IJsonArray
  // Used Types:  Windows.Data.Json.IJsonObject
  }
  // Windows.Data.Json.IJsonValue
  Json_IJsonValue = interface(IInspectable)
  ['{A3219ECB-F0B3-4DCD-BEEE-19D48CD3ED1E}']
    function get_ValueType: Json_JsonValueType; safecall;
    function Stringify: HSTRING; safecall;
    function GetString: HSTRING; safecall;
    function GetNumber: Double; safecall;
    function GetBoolean: Boolean; safecall;
    function GetArray: Json_IJsonArray; safecall;
    function GetObject: Json_IJsonObject; safecall;
    property ValueType: Json_JsonValueType read get_ValueType;
  end;

  {
  // Used Types:  Windows.Data.Json.IJsonValue
  // Used Types:  String
  // Used Types:  Boolean
  // Used Types:  Double
  }
  // Windows.Data.Json.IJsonValueStatics
  Json_IJsonValueStatics = interface(IInspectable)
  ['{5F6B544A-2F53-48E1-91A3-F78B50A6345C}']
    function Parse(input: HSTRING): Json_IJsonValue; safecall;
    function TryParse(input: HSTRING; out result: Json_IJsonValue): Boolean; safecall;
    function CreateBooleanValue(input: Boolean): Json_IJsonValue; safecall;
    function CreateNumberValue(input: Double): Json_IJsonValue; safecall;
    function CreateStringValue(input: HSTRING): Json_IJsonValue; safecall;
  end;

  {
  // Used Types:  Windows.Data.Json.IJsonValue
  }
  // Windows.Data.Json.IJsonValueStatics2
  Json_IJsonValueStatics2 = interface(IInspectable)
  ['{1D9ECBE4-3FE8-4335-8392-93D8E36865F0}']
    function CreateNullValue: Json_IJsonValue; safecall;
  end;

  // DualAPI Interface
  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Json.IJsonValue
  // Used Types:  String
  // Used Types:  Windows.Data.Json.IJsonObject
  // Used Types:  Windows.Data.Json.IJsonArray
  // Used Types:  Double
  // Used Types:  Boolean
  }
  // Windows.Data.Json.IJsonObjectWithDefaultValues
  Json_IJsonObjectWithDefaultValues = interface(IInspectable)
  ['{D960D2A2-B7F0-4F00-8E44-D82CF415EA13}']
    function GetNamedValue(name: HSTRING; defaultValue: Json_IJsonValue): Json_IJsonValue; safecall;
    function GetNamedObject(name: HSTRING; defaultValue: Json_IJsonObject): Json_IJsonObject; safecall;
    function GetNamedString(name: HSTRING; defaultValue: HSTRING): HSTRING; safecall;
    function GetNamedArray(name: HSTRING; defaultValue: Json_IJsonArray): Json_IJsonArray; safecall;
    function GetNamedNumber(name: HSTRING; defaultValue: Double): Double; safecall;
    function GetNamedBoolean(name: HSTRING; defaultValue: Boolean): Boolean; safecall;
  end;

  {
  // Used Types:  Windows.Data.Json.IJsonObject
  // Used Types:  String
  // Used Types:  Boolean
  }
  // Windows.Data.Json.IJsonObjectStatics
  Json_IJsonObjectStatics = interface(IInspectable)
  ['{2289F159-54DE-45D8-ABCC-22603FA066A0}']
    function Parse(input: HSTRING): Json_IJsonObject; safecall;
    function TryParse(input: HSTRING; out result: Json_IJsonObject): Boolean; safecall;
  end;

  {
  // Used Types:  Windows.Data.Json.IJsonArray
  // Used Types:  String
  // Used Types:  Boolean
  }
  // Windows.Data.Json.IJsonArrayStatics
  Json_IJsonArrayStatics = interface(IInspectable)
  ['{DB1434A9-E164-499F-93E2-8A8F49BB90BA}']
    function Parse(input: HSTRING): Json_IJsonArray; safecall;
    function TryParse(input: HSTRING; out result: Json_IJsonArray): Boolean; safecall;
  end;

  {
  // Used Types:  Windows.Data.Json.JsonErrorStatus
  // Used Types:  Int32
  }
  // Windows.Data.Json.IJsonErrorStatics
  Json_IJsonErrorStatics = interface(IInspectable)
  ['{FE616766-BF27-4064-87B7-6563BB11CE2E}']
    function GetStatus(hresult: Integer): Json_JsonErrorStatus; safecall;
  end deprecated;

  {
  // Used Types:  Windows.Data.Json.JsonErrorStatus
  // Used Types:  Int32
  }
  // Windows.Data.Json.IJsonErrorStatics2
  Json_IJsonErrorStatics2 = interface(IInspectable)
  ['{404030DA-87D0-436C-83AB-FC7B12C0CC26}']
    function GetJsonStatus(hresult: Integer): Json_JsonErrorStatus; safecall;
  end;

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Foundation.Rect
  }
  // Windows.Data.Pdf.IPdfPageDimensions
  Pdf_IPdfPageDimensions = interface(IInspectable)
  ['{22170471-313E-44E8-835D-63A3E7624A10}']
    function get_MediaBox: TRectF; safecall;
    function get_CropBox: TRectF; safecall;
    function get_BleedBox: TRectF; safecall;
    function get_TrimBox: TRectF; safecall;
    function get_ArtBox: TRectF; safecall;
    property ArtBox: TRectF read get_ArtBox;
    property BleedBox: TRectF read get_BleedBox;
    property CropBox: TRectF read get_CropBox;
    property MediaBox: TRectF read get_MediaBox;
    property TrimBox: TRectF read get_TrimBox;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Foundation.Rect
  // Used Types:  Void
  // Used Types:  UInt32
  // Used Types:  Windows.UI.Color
  // Used Types:  Boolean
  // Used Types:  Guid
  }
  // Windows.Data.Pdf.IPdfPageRenderOptions
  Pdf_IPdfPageRenderOptions = interface(IInspectable)
  ['{3C98056F-B7CF-4C29-9A04-52D90267F425}']
    function get_SourceRect: TRectF; safecall;
    procedure put_SourceRect(value: TRectF); safecall;
    function get_DestinationWidth: Cardinal; safecall;
    procedure put_DestinationWidth(value: Cardinal); safecall;
    function get_DestinationHeight: Cardinal; safecall;
    procedure put_DestinationHeight(value: Cardinal); safecall;
    function get_BackgroundColor: Color; safecall;
    procedure put_BackgroundColor(value: Color); safecall;
    function get_IsIgnoringHighContrast: Boolean; safecall;
    procedure put_IsIgnoringHighContrast(value: Boolean); safecall;
    function get_BitmapEncoderId: TGuid; safecall;
    procedure put_BitmapEncoderId(value: TGuid); safecall;
    property BackgroundColor: Color read get_BackgroundColor write put_BackgroundColor;
    property BitmapEncoderId: TGuid read get_BitmapEncoderId write put_BitmapEncoderId;
    property DestinationHeight: Cardinal read get_DestinationHeight write put_DestinationHeight;
    property DestinationWidth: Cardinal read get_DestinationWidth write put_DestinationWidth;
    property IsIgnoringHighContrast: Boolean read get_IsIgnoringHighContrast write put_IsIgnoringHighContrast;
    property SourceRect: TRectF read get_SourceRect write put_SourceRect;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Foundation.IAsyncAction
  // Used Types:  Windows.Storage.Streams.IRandomAccessStream
  // Used Types:  Windows.Data.Pdf.IPdfPageRenderOptions
  // Used Types:  UInt32
  // Used Types:  Windows.Foundation.Size
  // Used Types:  Windows.Data.Pdf.IPdfPageDimensions
  // Used Types:  Windows.Data.Pdf.PdfPageRotation
  // Used Types:  Single
  }
  // Windows.Data.Pdf.IPdfPage
  Pdf_IPdfPage = interface(IInspectable)
  ['{9DB4B0C8-5320-4CFC-AD76-493FDAD0E594}']
    function RenderToStreamAsync(outputStream: IRandomAccessStream): IAsyncAction; safecall; overload;
    function RenderToStreamAsync(outputStream: IRandomAccessStream; options: Pdf_IPdfPageRenderOptions): IAsyncAction; safecall; overload;
    function PreparePageAsync: IAsyncAction; safecall;
    function get_Index: Cardinal; safecall;
    function get_Size: TSizeF; safecall;
    function get_Dimensions: Pdf_IPdfPageDimensions; safecall;
    function get_Rotation: Pdf_PdfPageRotation; safecall;
    function get_PreferredZoom: Single; safecall;
    property Dimensions: Pdf_IPdfPageDimensions read get_Dimensions;
    property Index: Cardinal read get_Index;
    property PreferredZoom: Single read get_PreferredZoom;
    property Rotation: Pdf_PdfPageRotation read get_Rotation;
    property Size: TSizeF read get_Size;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Data.Pdf.IPdfPage
  // Used Types:  UInt32
  // Used Types:  Boolean
  }
  // Windows.Data.Pdf.IPdfDocument
  Pdf_IPdfDocument = interface(IInspectable)
  ['{AC7EBEDD-80FA-4089-846E-81B77FF5A86C}']
    function GetPage(pageIndex: Cardinal): Pdf_IPdfPage; safecall;
    function get_PageCount: Cardinal; safecall;
    function get_IsPasswordProtected: Boolean; safecall;
    property IsPasswordProtected: Boolean read get_IsPasswordProtected;
    property PageCount: Cardinal read get_PageCount;
  end;

*)

(*
  // Generic Delegate for 
  // Windows.Foundation.AsyncOperationCompletedHandler`1<Windows.Data.Pdf.IPdfDocument>
  AsyncOperationCompletedHandler_1__Pdf_IPdfDocument_Delegate_Base = interface(IUnknown)
  ['{8D4950B3-629D-5D7D-84CC-04C0DCF7942B}']
  end;
  // RemoveAPI Interface
  {
  // Used Types:  Void
  // Used Types:  Windows.Foundation.IAsyncOperation`1<Windows.Data.Pdf.IPdfDocument>
  // Used Types:  Windows.Foundation.AsyncStatus
  }
  // Windows.Foundation.AsyncOperationCompletedHandler`1<Windows.Data.Pdf.IPdfDocument>
  AsyncOperationCompletedHandler_1__Pdf_IPdfDocument = interface(AsyncOperationCompletedHandler_1__Pdf_IPdfDocument_Delegate_Base)
  ['{A81957F9-9D98-5AB4-A526-18023D7FB4E0}']
    procedure Invoke(asyncInfo: IAsyncOperation_1__Pdf_IPdfDocument; asyncStatus: AsyncStatus); safecall;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Void
  // Used Types:  Windows.Foundation.AsyncOperationCompletedHandler`1<Windows.Data.Pdf.IPdfDocument>
  // Used Types:  Windows.Data.Pdf.IPdfDocument
  }
  // Windows.Foundation.IAsyncOperation`1<Windows.Data.Pdf.IPdfDocument>
  IAsyncOperation_1__Pdf_IPdfDocument = interface(IInspectable)
  ['{B9254F13-6160-5483-8E4F-B236B46EF350}']
    procedure put_Completed(handler: AsyncOperationCompletedHandler_1__Pdf_IPdfDocument); safecall;
    function get_Completed: AsyncOperationCompletedHandler_1__Pdf_IPdfDocument; safecall;
    function GetResults: Pdf_IPdfDocument; safecall;
    property Completed: AsyncOperationCompletedHandler_1__Pdf_IPdfDocument read get_Completed write put_Completed;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Foundation.IAsyncOperation`1<Windows.Data.Pdf.IPdfDocument>
  // Used Types:  Windows.Storage.IStorageFile
  // Used Types:  String
  // Used Types:  Windows.Storage.Streams.IRandomAccessStream
  }
  // Windows.Data.Pdf.IPdfDocumentStatics
  Pdf_IPdfDocumentStatics = interface(IInspectable)
  ['{433A0B5F-C007-4788-90F2-08143D922599}']
    function LoadFromFileAsync(&file: IStorageFile): IAsyncOperation_1__Pdf_IPdfDocument; safecall; overload;
    function LoadFromFileAsync(&file: IStorageFile; password: HSTRING): IAsyncOperation_1__Pdf_IPdfDocument; safecall; overload;
    function LoadFromStreamAsync(inputStream: IRandomAccessStream): IAsyncOperation_1__Pdf_IPdfDocument; safecall; overload;
    function LoadFromStreamAsync(inputStream: IRandomAccessStream; password: HSTRING): IAsyncOperation_1__Pdf_IPdfDocument; safecall; overload;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>
  // Used Types:  String
  }
  // Windows.Data.Text.ISemanticTextQuery
  Text_ISemanticTextQuery = interface(IInspectable)
  ['{6A1CAB51-1FB2-4909-80B8-35731A2B3E7F}']
    function Find(content: HSTRING): IVectorView_1__Text_TextSegment; safecall;
    function FindInProperty(propertyContent: HSTRING; propertyName: HSTRING): IVectorView_1__Text_TextSegment; safecall;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Data.Text.ISemanticTextQuery
  // Used Types:  String
  }
  // Windows.Data.Text.ISemanticTextQueryFactory
  Text_ISemanticTextQueryFactory = interface(IInspectable)
  ['{238C0503-F995-4587-8777-A2B7D80ACFEF}']
    function Create(aqsFilter: HSTRING): Text_ISemanticTextQuery; safecall;
    function CreateWithLanguage(aqsFilter: HSTRING; filterLanguage: HSTRING): Text_ISemanticTextQuery; safecall;
  end;

*)

  {
  // Used Types:  Windows.Data.Xml.Dom.IXmlNode
  // Used Types:  Boolean
  // Used Types:  UInt32
  }
  // Windows.Foundation.Collections.IIterator`1<Windows.Data.Xml.Dom.IXmlNode>
  IIterator_1__Xml_Dom_IXmlNode = interface(IInspectable)
  ['{3833A35E-2C61-56BD-B093-3694165F8898}']
    function get_Current: Xml_Dom_IXmlNode; safecall;
    function get_HasCurrent: Boolean; safecall;
    function MoveNext: Boolean; safecall;
    function GetMany(out {TODO: verify}items: PXml_Dom_IXmlNode): Cardinal; safecall;
    property Current: Xml_Dom_IXmlNode read get_Current;
    property HasCurrent: Boolean read get_HasCurrent;
  end;

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Foundation.Collections.IIterator`1<Windows.Data.Xml.Dom.IXmlNode>
  }
  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Xml.Dom.IXmlNode>
  IIterable_1__Xml_Dom_IXmlNode = interface(IInspectable)
  ['{F1146FFC-8C92-56E8-93F1-711F86722633}']
    function First: IIterator_1__Xml_Dom_IXmlNode; safecall;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Data.Xml.Dom.IXmlNode
  // Used Types:  UInt32
  // Used Types:  Boolean
  }
  // Windows.Foundation.Collections.IVectorView`1<Windows.Data.Xml.Dom.IXmlNode>
  IVectorView_1__Xml_Dom_IXmlNode = interface(IInspectable)
  ['{139D959E-E7B5-5CB6-A596-4B544478DA9B}']
    function GetAt(index: Cardinal): Xml_Dom_IXmlNode; safecall;
    function get_Size: Cardinal; safecall;
    function IndexOf(value: Xml_Dom_IXmlNode; out index: Cardinal): Boolean; safecall;
    function GetMany(startIndex: Cardinal; out {TODO: verify}items: PXml_Dom_IXmlNode): Cardinal; safecall;
    property Size: Cardinal read get_Size;
  end;

*)

  // UsedAPI Interface
  {
  // Used Types:  UInt32
  // Used Types:  Windows.Data.Xml.Dom.IXmlNode
  }
  // Windows.Data.Xml.Dom.IXmlNodeList
  Xml_Dom_IXmlNodeList = interface(IInspectable)
  ['{8C60AD77-83A4-4EC1-9C54-7BA429E13DA6}']
    function get_Length: Cardinal; safecall;
    function Item(index: Cardinal): Xml_Dom_IXmlNode; safecall;
    property Length: Cardinal read get_Length;
  end;

  // UsedAPI Interface
  {
  // Used Types:  UInt32
  // Used Types:  Windows.Data.Xml.Dom.IXmlNode
  // Used Types:  String
  // Used Types:  Object
  }
  // Windows.Data.Xml.Dom.IXmlNamedNodeMap
  Xml_Dom_IXmlNamedNodeMap = interface(IInspectable)
  ['{B3A69EB0-AAB0-4B82-A6FA-B1453F7C021B}']
    function get_Length: Cardinal; safecall;
    function Item(index: Cardinal): Xml_Dom_IXmlNode; safecall;
    function GetNamedItem(name: HSTRING): Xml_Dom_IXmlNode; safecall;
    function SetNamedItem(node: Xml_Dom_IXmlNode): Xml_Dom_IXmlNode; safecall;
    function RemoveNamedItem(name: HSTRING): Xml_Dom_IXmlNode; safecall;
    function GetNamedItemNS(namespaceUri: IInspectable; name: HSTRING): Xml_Dom_IXmlNode; safecall;
    function RemoveNamedItemNS(namespaceUri: IInspectable; name: HSTRING): Xml_Dom_IXmlNode; safecall;
    function SetNamedItemNS(node: Xml_Dom_IXmlNode): Xml_Dom_IXmlNode; safecall;
    property Length: Cardinal read get_Length;
  end;

  // UsedAPI Interface
  {
  // Used Types:  String
  // Used Types:  Windows.Data.Xml.Dom.IXmlNamedNodeMap
  }
  // Windows.Data.Xml.Dom.IXmlDocumentType
  Xml_Dom_IXmlDocumentType = interface(IInspectable)
  ['{F7342425-9781-4964-8E94-9B1C6DFC9BC7}']
    function get_Name: HSTRING; safecall;
    function get_Entities: Xml_Dom_IXmlNamedNodeMap; safecall;
    function get_Notations: Xml_Dom_IXmlNamedNodeMap; safecall;
    property Entities: Xml_Dom_IXmlNamedNodeMap read get_Entities;
    property Name: HSTRING read get_Name;
    property Notations: Xml_Dom_IXmlNamedNodeMap read get_Notations;
  end;

  // UsedAPI Interface
  {
  // Used Types:  Boolean
  // Used Types:  String
  // Used Types:  Object
  }
  // Windows.Data.Xml.Dom.IXmlDomImplementation
  Xml_Dom_IXmlDomImplementation = interface(IInspectable)
  ['{6DE58132-F11D-4FBB-8CC6-583CBA93112F}']
    function HasFeature(feature: HSTRING; version: IInspectable): Boolean; safecall;
  end;

  // UsedAPI Interface
  {
  // Used Types:  String
  // Used Types:  Boolean
  // Used Types:  Void
  }
  // Windows.Data.Xml.Dom.IXmlAttribute
  Xml_Dom_IXmlAttribute = interface(IInspectable)
  ['{AC144AA4-B4F1-4DB6-B206-8A22C308DB0A}']
    function get_Name: HSTRING; safecall;
    function get_Specified: Boolean; safecall;
    function get_Value: HSTRING; safecall;
    procedure put_Value(value: HSTRING); safecall;
    property Name: HSTRING read get_Name;
    property Specified: Boolean read get_Specified;
    property Value: HSTRING read get_Value write put_Value;
  end;

  // UsedAPI Interface
  {
  // Used Types:  String
  // Used Types:  Void
  // Used Types:  Windows.Data.Xml.Dom.IXmlAttribute
  // Used Types:  Windows.Data.Xml.Dom.IXmlNodeList
  // Used Types:  Object
  }
  // Windows.Data.Xml.Dom.IXmlElement
  Xml_Dom_IXmlElement = interface(IInspectable)
  ['{2DFB8A1F-6B10-4EF8-9F83-EFCCE8FAEC37}']
    function get_TagName: HSTRING; safecall;
    function GetAttribute(attributeName: HSTRING): HSTRING; safecall;
    procedure SetAttribute(attributeName: HSTRING; attributeValue: HSTRING); safecall;
    procedure RemoveAttribute(attributeName: HSTRING); safecall;
    function GetAttributeNode(attributeName: HSTRING): Xml_Dom_IXmlAttribute; safecall;
    function SetAttributeNode(newAttribute: Xml_Dom_IXmlAttribute): Xml_Dom_IXmlAttribute; safecall;
    function RemoveAttributeNode(attributeNode: Xml_Dom_IXmlAttribute): Xml_Dom_IXmlAttribute; safecall;
    function GetElementsByTagName(tagName: HSTRING): Xml_Dom_IXmlNodeList; safecall;
    procedure SetAttributeNS(namespaceUri: IInspectable; qualifiedName: HSTRING; value: HSTRING); safecall;
    function GetAttributeNS(namespaceUri: IInspectable; localName: HSTRING): HSTRING; safecall;
    procedure RemoveAttributeNS(namespaceUri: IInspectable; localName: HSTRING); safecall;
    function SetAttributeNodeNS(newAttribute: Xml_Dom_IXmlAttribute): Xml_Dom_IXmlAttribute; safecall;
    function GetAttributeNodeNS(namespaceUri: IInspectable; localName: HSTRING): Xml_Dom_IXmlAttribute; safecall;
    property TagName: HSTRING read get_TagName;
  end;

  // UsedAPI Interface
  {
  }
  // Windows.Data.Xml.Dom.IXmlDocumentFragment
  Xml_Dom_IXmlDocumentFragment = interface(IInspectable)
  ['{E2EA6A96-0C21-44A5-8BC9-9E4A262708EC}']
  end;

(*
  // RemoveAPI Interface
  {
  // Used Types:  String
  // Used Types:  Void
  // Used Types:  UInt32
  }
  // Windows.Data.Xml.Dom.IXmlCharacterData
  Xml_Dom_IXmlCharacterData = interface(IInspectable)
  ['{132E42AB-4E36-4DF6-B1C8-0CE62FD88B26}']
    function get_Data: HSTRING; safecall;
    procedure put_Data(value: HSTRING); safecall;
    function get_Length: Cardinal; safecall;
    function SubstringData(offset: Cardinal; count: Cardinal): HSTRING; safecall;
    procedure AppendData(data: HSTRING); safecall;
    procedure InsertData(offset: Cardinal; data: HSTRING); safecall;
    procedure DeleteData(offset: Cardinal; count: Cardinal); safecall;
    procedure ReplaceData(offset: Cardinal; count: Cardinal; data: HSTRING); safecall;
    property Data: HSTRING read get_Data write put_Data;
    property Length: Cardinal read get_Length;
  end;

*)

  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Xml.Dom.IXmlText
  // Used Types:  UInt32
  }
  // Windows.Data.Xml.Dom.IXmlText
  Xml_Dom_IXmlText = interface(IInspectable)
  ['{F931A4CB-308D-4760-A1D5-43B67450AC7E}']
    function SplitText(offset: Cardinal): Xml_Dom_IXmlText; safecall;
  end;

  // UsedAPI Interface
  {
  }
  // Windows.Data.Xml.Dom.IXmlComment
  Xml_Dom_IXmlComment = interface(IInspectable)
  ['{BCA474D5-B61F-4611-9CAC-2E92E3476D47}']
  end;

  // UsedAPI Interface
  {
  // Used Types:  String
  // Used Types:  Void
  }
  // Windows.Data.Xml.Dom.IXmlProcessingInstruction
  Xml_Dom_IXmlProcessingInstruction = interface(IInspectable)
  ['{2707FD1E-1E92-4ECE-B6F4-26F069078DDC}']
    function get_Target: HSTRING; safecall;
    function get_Data: HSTRING; safecall;
    procedure put_Data(value: HSTRING); safecall;
    property Data: HSTRING read get_Data write put_Data;
    property Target: HSTRING read get_Target;
  end;

  // UsedAPI Interface
  {
  }
  // Windows.Data.Xml.Dom.IXmlEntityReference
  Xml_Dom_IXmlEntityReference = interface(IInspectable)
  ['{2E2F47BC-C3D0-4CCF-BB86-0AB8C36A61CF}']
  end;

  // UsedAPI Interface
  {
  }
  // Windows.Data.Xml.Dom.IXmlCDataSection
  Xml_Dom_IXmlCDataSection = interface(IInspectable)
  ['{4D04B46F-C8BD-45B4-8899-0400D7C2C60F}']
  end;

  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Xml.Dom.IXmlDocumentType
  // Used Types:  Windows.Data.Xml.Dom.IXmlDomImplementation
  // Used Types:  Windows.Data.Xml.Dom.IXmlElement
  // Used Types:  String
  // Used Types:  Windows.Data.Xml.Dom.IXmlDocumentFragment
  // Used Types:  Windows.Data.Xml.Dom.IXmlText
  // Used Types:  Windows.Data.Xml.Dom.IXmlComment
  // Used Types:  Windows.Data.Xml.Dom.IXmlProcessingInstruction
  // Used Types:  Windows.Data.Xml.Dom.IXmlAttribute
  // Used Types:  Windows.Data.Xml.Dom.IXmlEntityReference
  // Used Types:  Windows.Data.Xml.Dom.IXmlNodeList
  // Used Types:  Windows.Data.Xml.Dom.IXmlCDataSection
  // Used Types:  Object
  // Used Types:  Windows.Data.Xml.Dom.IXmlNode
  // Used Types:  Boolean
  }
  // Windows.Data.Xml.Dom.IXmlDocument
  Xml_Dom_IXmlDocument = interface(IInspectable)
  ['{F7F3A506-1E87-42D6-BCFB-B8C809FA5494}']
    function get_Doctype: Xml_Dom_IXmlDocumentType; safecall;
    function get_Implementation: Xml_Dom_IXmlDomImplementation; safecall;
    function get_DocumentElement: Xml_Dom_IXmlElement; safecall;
    function CreateElement(tagName: HSTRING): Xml_Dom_IXmlElement; safecall;
    function CreateDocumentFragment: Xml_Dom_IXmlDocumentFragment; safecall;
    function CreateTextNode(data: HSTRING): Xml_Dom_IXmlText; safecall;
    function CreateComment(data: HSTRING): Xml_Dom_IXmlComment; safecall;
    function CreateProcessingInstruction(target: HSTRING; data: HSTRING): Xml_Dom_IXmlProcessingInstruction; safecall;
    function CreateAttribute(name: HSTRING): Xml_Dom_IXmlAttribute; safecall;
    function CreateEntityReference(name: HSTRING): Xml_Dom_IXmlEntityReference; safecall;
    function GetElementsByTagName(tagName: HSTRING): Xml_Dom_IXmlNodeList; safecall;
    function CreateCDataSection(data: HSTRING): Xml_Dom_IXmlCDataSection; safecall;
    function get_DocumentUri: HSTRING; safecall;
    function CreateAttributeNS(namespaceUri: IInspectable; qualifiedName: HSTRING): Xml_Dom_IXmlAttribute; safecall;
    function CreateElementNS(namespaceUri: IInspectable; qualifiedName: HSTRING): Xml_Dom_IXmlElement; safecall;
    function GetElementById(elementId: HSTRING): Xml_Dom_IXmlElement; safecall;
    function ImportNode(node: Xml_Dom_IXmlNode; deep: Boolean): Xml_Dom_IXmlNode; safecall;
    property Doctype: Xml_Dom_IXmlDocumentType read get_Doctype;
    property DocumentElement: Xml_Dom_IXmlElement read get_DocumentElement;
    property DocumentUri: HSTRING read get_DocumentUri;
    property &Implementation: Xml_Dom_IXmlDomImplementation read get_Implementation;
  end;

  // UsedAPI Interface
  {
  // Used Types:  Object
  // Used Types:  Void
  // Used Types:  Windows.Data.Xml.Dom.NodeType
  // Used Types:  String
  // Used Types:  Windows.Data.Xml.Dom.IXmlNode
  // Used Types:  Windows.Data.Xml.Dom.IXmlNodeList
  // Used Types:  Windows.Data.Xml.Dom.IXmlNamedNodeMap
  // Used Types:  Boolean
  // Used Types:  Windows.Data.Xml.Dom.IXmlDocument
  }
  // Windows.Data.Xml.Dom.IXmlNode
  Xml_Dom_IXmlNode = interface(IInspectable)
  ['{1C741D59-2122-47D5-A856-83F3D4214875}']
    function get_NodeValue: IInspectable; safecall;
    procedure put_NodeValue(value: IInspectable); safecall;
    function get_NodeType: Xml_Dom_NodeType; safecall;
    function get_NodeName: HSTRING; safecall;
    function get_ParentNode: Xml_Dom_IXmlNode; safecall;
    function get_ChildNodes: Xml_Dom_IXmlNodeList; safecall;
    function get_FirstChild: Xml_Dom_IXmlNode; safecall;
    function get_LastChild: Xml_Dom_IXmlNode; safecall;
    function get_PreviousSibling: Xml_Dom_IXmlNode; safecall;
    function get_NextSibling: Xml_Dom_IXmlNode; safecall;
    function get_Attributes: Xml_Dom_IXmlNamedNodeMap; safecall;
    function HasChildNodes: Boolean; safecall;
    function get_OwnerDocument: Xml_Dom_IXmlDocument; safecall;
    function InsertBefore(newChild: Xml_Dom_IXmlNode; referenceChild: Xml_Dom_IXmlNode): Xml_Dom_IXmlNode; safecall;
    function ReplaceChild(newChild: Xml_Dom_IXmlNode; referenceChild: Xml_Dom_IXmlNode): Xml_Dom_IXmlNode; safecall;
    function RemoveChild(childNode: Xml_Dom_IXmlNode): Xml_Dom_IXmlNode; safecall;
    function AppendChild(newChild: Xml_Dom_IXmlNode): Xml_Dom_IXmlNode; safecall;
    function CloneNode(deep: Boolean): Xml_Dom_IXmlNode; safecall;
    function get_NamespaceUri: IInspectable; safecall;
    function get_LocalName: IInspectable; safecall;
    function get_Prefix: IInspectable; safecall;
    procedure Normalize; safecall;
    procedure put_Prefix(value: IInspectable); safecall;
    property Attributes: Xml_Dom_IXmlNamedNodeMap read get_Attributes;
    property ChildNodes: Xml_Dom_IXmlNodeList read get_ChildNodes;
    property FirstChild: Xml_Dom_IXmlNode read get_FirstChild;
    property LastChild: Xml_Dom_IXmlNode read get_LastChild;
    property LocalName: IInspectable read get_LocalName;
    property NamespaceUri: IInspectable read get_NamespaceUri;
    property NextSibling: Xml_Dom_IXmlNode read get_NextSibling;
    property NodeName: HSTRING read get_NodeName;
    property NodeType: Xml_Dom_NodeType read get_NodeType;
    property NodeValue: IInspectable read get_NodeValue write put_NodeValue;
    property OwnerDocument: Xml_Dom_IXmlDocument read get_OwnerDocument;
    property ParentNode: Xml_Dom_IXmlNode read get_ParentNode;
    property Prefix: IInspectable read get_Prefix write put_Prefix;
    property PreviousSibling: Xml_Dom_IXmlNode read get_PreviousSibling;
  end;

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Data.Xml.Dom.IXmlNode
  // Used Types:  String
  // Used Types:  Windows.Data.Xml.Dom.IXmlNodeList
  // Used Types:  Object
  }
  // Windows.Data.Xml.Dom.IXmlNodeSelector
  Xml_Dom_IXmlNodeSelector = interface(IInspectable)
  ['{63DBBA8B-D0DB-4FE1-B745-F9433AFDC25B}']
    function SelectSingleNode(xpath: HSTRING): Xml_Dom_IXmlNode; safecall;
    function SelectNodes(xpath: HSTRING): Xml_Dom_IXmlNodeList; safecall;
    function SelectSingleNodeNS(xpath: HSTRING; namespaces: IInspectable): Xml_Dom_IXmlNode; safecall;
    function SelectNodesNS(xpath: HSTRING; namespaces: IInspectable): Xml_Dom_IXmlNodeList; safecall;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  String
  // Used Types:  Void
  }
  // Windows.Data.Xml.Dom.IXmlNodeSerializer
  Xml_Dom_IXmlNodeSerializer = interface(IInspectable)
  ['{5CC5B382-E6DD-4991-ABEF-06D8D2E7BD0C}']
    function GetXml: HSTRING; safecall;
    function get_InnerText: HSTRING; safecall;
    procedure put_InnerText(value: HSTRING); safecall;
    property InnerText: HSTRING read get_InnerText write put_InnerText;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Object
  }
  // Windows.Data.Xml.Dom.IDtdNotation
  Xml_Dom_IDtdNotation = interface(IInspectable)
  ['{8CB4E04D-6D46-4EDB-AB73-DF83C51AD397}']
    function get_PublicId: IInspectable; safecall;
    function get_SystemId: IInspectable; safecall;
    property PublicId: IInspectable read get_PublicId;
    property SystemId: IInspectable read get_SystemId;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Object
  }
  // Windows.Data.Xml.Dom.IDtdEntity
  Xml_Dom_IDtdEntity = interface(IInspectable)
  ['{6A0B5FFC-63B4-480F-9E6A-8A92816AADE4}']
    function get_PublicId: IInspectable; safecall;
    function get_SystemId: IInspectable; safecall;
    function get_NotationName: IInspectable; safecall;
    property NotationName: IInspectable read get_NotationName;
    property PublicId: IInspectable read get_PublicId;
    property SystemId: IInspectable read get_SystemId;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  UInt32
  // Used Types:  Void
  // Used Types:  Boolean
  }
  // Windows.Data.Xml.Dom.IXmlLoadSettings
  Xml_Dom_IXmlLoadSettings = interface(IInspectable)
  ['{58AA07A8-FED6-46F7-B4C5-FB1BA72108D6}']
    function get_MaxElementDepth: Cardinal; safecall;
    procedure put_MaxElementDepth(value: Cardinal); safecall;
    function get_ProhibitDtd: Boolean; safecall;
    procedure put_ProhibitDtd(value: Boolean); safecall;
    function get_ResolveExternals: Boolean; safecall;
    procedure put_ResolveExternals(value: Boolean); safecall;
    function get_ValidateOnParse: Boolean; safecall;
    procedure put_ValidateOnParse(value: Boolean); safecall;
    function get_ElementContentWhiteSpace: Boolean; safecall;
    procedure put_ElementContentWhiteSpace(value: Boolean); safecall;
    property ElementContentWhiteSpace: Boolean read get_ElementContentWhiteSpace write put_ElementContentWhiteSpace;
    property MaxElementDepth: Cardinal read get_MaxElementDepth write put_MaxElementDepth;
    property ProhibitDtd: Boolean read get_ProhibitDtd write put_ProhibitDtd;
    property ResolveExternals: Boolean read get_ResolveExternals write put_ResolveExternals;
    property ValidateOnParse: Boolean read get_ValidateOnParse write put_ValidateOnParse;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Void
  // Used Types:  String
  // Used Types:  Windows.Data.Xml.Dom.IXmlLoadSettings
  // Used Types:  Windows.Foundation.IAsyncAction
  // Used Types:  Windows.Storage.IStorageFile
  }
  // Windows.Data.Xml.Dom.IXmlDocumentIO
  Xml_Dom_IXmlDocumentIO = interface(IInspectable)
  ['{6CD0E74E-EE65-4489-9EBF-CA43E87BA637}']
    procedure LoadXml(xml: HSTRING); safecall; overload;
    procedure LoadXml(xml: HSTRING; loadSettings: Xml_Dom_IXmlLoadSettings); safecall; overload;
    function SaveToFileAsync(&file: IStorageFile): IAsyncAction; safecall;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Void
  // Used Types:  Windows.Storage.Streams.IBuffer
  // Used Types:  Windows.Data.Xml.Dom.IXmlLoadSettings
  }
  // Windows.Data.Xml.Dom.IXmlDocumentIO2
  Xml_Dom_IXmlDocumentIO2 = interface(IInspectable)
  ['{5D034661-7BD8-4AD5-9EBF-81E6347263B1}']
    procedure LoadXmlFromBuffer(buffer: IBuffer); safecall; overload;
    procedure LoadXmlFromBuffer(buffer: IBuffer; loadSettings: Xml_Dom_IXmlLoadSettings); safecall; overload;
  end;

*)

  // Generic Delegate for 
  // Windows.Foundation.AsyncOperationCompletedHandler`1<Windows.Data.Xml.Dom.IXmlDocument>
  AsyncOperationCompletedHandler_1__Xml_Dom_IXmlDocument_Delegate_Base = interface(IUnknown)
  ['{5EEF7817-93DD-5C0B-9E5A-EB490408F3A9}']
  end;
  {
  // Used Types:  Void
  // Used Types:  Windows.Foundation.IAsyncOperation`1<Windows.Data.Xml.Dom.IXmlDocument>
  // Used Types:  Windows.Foundation.AsyncStatus
  }
  // Windows.Foundation.AsyncOperationCompletedHandler`1<Windows.Data.Xml.Dom.IXmlDocument>
  AsyncOperationCompletedHandler_1__Xml_Dom_IXmlDocument = interface(AsyncOperationCompletedHandler_1__Xml_Dom_IXmlDocument_Delegate_Base)
  ['{4D733BCA-331A-59A6-8361-D703C963C6D1}']
    procedure Invoke(asyncInfo: IAsyncOperation_1__Xml_Dom_IXmlDocument; asyncStatus: AsyncStatus); safecall;
  end;

  {
  // Used Types:  Void
  // Used Types:  Windows.Foundation.AsyncOperationCompletedHandler`1<Windows.Data.Xml.Dom.IXmlDocument>
  // Used Types:  Windows.Data.Xml.Dom.IXmlDocument
  }
  // Windows.Foundation.IAsyncOperation`1<Windows.Data.Xml.Dom.IXmlDocument>
  IAsyncOperation_1__Xml_Dom_IXmlDocument = interface(IInspectable)
  ['{CA3E8F7C-BBE4-5C32-B42F-CBA0C469E42C}']
    procedure put_Completed(handler: AsyncOperationCompletedHandler_1__Xml_Dom_IXmlDocument); safecall;
    function get_Completed: AsyncOperationCompletedHandler_1__Xml_Dom_IXmlDocument; safecall;
    function GetResults: Xml_Dom_IXmlDocument; safecall;
    property Completed: AsyncOperationCompletedHandler_1__Xml_Dom_IXmlDocument read get_Completed write put_Completed;
  end;

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Foundation.IAsyncOperation`1<Windows.Data.Xml.Dom.IXmlDocument>
  // Used Types:  Windows.Foundation.IUriRuntimeClass
  // Used Types:  Windows.Data.Xml.Dom.IXmlLoadSettings
  // Used Types:  Windows.Storage.IStorageFile
  }
  // Windows.Data.Xml.Dom.IXmlDocumentStatics
  Xml_Dom_IXmlDocumentStatics = interface(IInspectable)
  ['{5543D254-D757-4B79-9539-232B18F50BF1}']
    function LoadFromUriAsync(uri: IUriRuntimeClass): IAsyncOperation_1__Xml_Dom_IXmlDocument; safecall; overload;
    function LoadFromUriAsync(uri: IUriRuntimeClass; loadSettings: Xml_Dom_IXmlLoadSettings): IAsyncOperation_1__Xml_Dom_IXmlDocument; safecall; overload;
    function LoadFromFileAsync(&file: IStorageFile): IAsyncOperation_1__Xml_Dom_IXmlDocument; safecall; overload;
    function LoadFromFileAsync(&file: IStorageFile; loadSettings: Xml_Dom_IXmlLoadSettings): IAsyncOperation_1__Xml_Dom_IXmlDocument; safecall; overload;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  String
  // Used Types:  Windows.Data.Xml.Dom.IXmlNode
  }
  // Windows.Data.Xml.Xsl.IXsltProcessor
  Xml_Xsl_IXsltProcessor = interface(IInspectable)
  ['{7B64703F-550C-48C6-A90F-93A5B964518F}']
    function TransformToString(inputNode: Xml_Dom_IXmlNode): HSTRING; safecall;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Data.Xml.Dom.IXmlDocument
  // Used Types:  Windows.Data.Xml.Dom.IXmlNode
  }
  // Windows.Data.Xml.Xsl.IXsltProcessor2
  Xml_Xsl_IXsltProcessor2 = interface(IInspectable)
  ['{8DA45C56-97A5-44CB-A8BE-27D86280C70A}']
    function TransformToDocument(inputNode: Xml_Dom_IXmlNode): Xml_Dom_IXmlDocument; safecall;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Data.Xml.Xsl.IXsltProcessor
  // Used Types:  Windows.Data.Xml.Dom.IXmlDocument
  }
  // Windows.Data.Xml.Xsl.IXsltProcessorFactory
  Xml_Xsl_IXsltProcessorFactory = interface(IInspectable)
  ['{274146C0-9A51-4663-BF30-0EF742146F20}']
    function CreateInstance(document: Xml_Dom_IXmlDocument): Xml_Xsl_IXsltProcessor; safecall;
  end;

*)

  {
  // Used Types:  UInt32
  // Used Types:  Void
  // Used Types:  Char
  // Used Types:  Boolean
  // Used Types:  Windows.Data.Text.UnicodeNumericType
  // Used Types:  Windows.Data.Text.UnicodeGeneralCategory
  }
  // Windows.Data.Text.IUnicodeCharactersStatics
  Text_IUnicodeCharactersStatics = interface(IInspectable)
  ['{97909E87-9291-4F91-B6C8-B6E359D7A7FB}']
    function GetCodepointFromSurrogatePair(highSurrogate: Cardinal; lowSurrogate: Cardinal): Cardinal; safecall;
    procedure GetSurrogatePairFromCodepoint(codepoint: Cardinal; out highSurrogate: Char; out lowSurrogate: Char); safecall;
    function IsHighSurrogate(codepoint: Cardinal): Boolean; safecall;
    function IsLowSurrogate(codepoint: Cardinal): Boolean; safecall;
    function IsSupplementary(codepoint: Cardinal): Boolean; safecall;
    function IsNoncharacter(codepoint: Cardinal): Boolean; safecall;
    function IsWhitespace(codepoint: Cardinal): Boolean; safecall;
    function IsAlphabetic(codepoint: Cardinal): Boolean; safecall;
    function IsCased(codepoint: Cardinal): Boolean; safecall;
    function IsUppercase(codepoint: Cardinal): Boolean; safecall;
    function IsLowercase(codepoint: Cardinal): Boolean; safecall;
    function IsIdStart(codepoint: Cardinal): Boolean; safecall;
    function IsIdContinue(codepoint: Cardinal): Boolean; safecall;
    function IsGraphemeBase(codepoint: Cardinal): Boolean; safecall;
    function IsGraphemeExtend(codepoint: Cardinal): Boolean; safecall;
    function GetNumericType(codepoint: Cardinal): Text_UnicodeNumericType; safecall;
    function GetGeneralCategory(codepoint: Cardinal): Text_UnicodeGeneralCategory; safecall;
  end;

  // DualAPI Interface
  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Text.TextSegment
  // Used Types:  String
  // Used Types:  Windows.Data.Text.AlternateNormalizationFormat
  }
  // Windows.Data.Text.IAlternateWordForm
  Text_IAlternateWordForm = interface(IInspectable)
  ['{47396C1E-51B9-4207-9146-248E636A1D1D}']
    function get_SourceTextSegment: Text_TextSegment; safecall;
    function get_AlternateText: HSTRING; safecall;
    function get_NormalizationFormat: Text_AlternateNormalizationFormat; safecall;
    property AlternateText: HSTRING read get_AlternateText;
    property NormalizationFormat: Text_AlternateNormalizationFormat read get_NormalizationFormat;
    property SourceTextSegment: Text_TextSegment read get_SourceTextSegment;
  end;

  // DualAPI Interface
  // UsedAPI Interface
  {
  // Used Types:  String
  // Used Types:  Windows.Data.Text.TextSegment
  }
  // Windows.Data.Text.ISelectableWordSegment
  Text_ISelectableWordSegment = interface(IInspectable)
  ['{916A4CB7-8AA7-4C78-B374-5DEDB752E60B}']
    function get_Text: HSTRING; safecall;
    function get_SourceTextSegment: Text_TextSegment; safecall;
    property SourceTextSegment: Text_TextSegment read get_SourceTextSegment;
    property Text: HSTRING read get_Text;
  end;

  {
  // Used Types:  Windows.Data.Text.IAlternateWordForm
  // Used Types:  Boolean
  // Used Types:  UInt32
  }
  // Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.IAlternateWordForm>
  IIterator_1__Text_IAlternateWordForm = interface(IInspectable)
  ['{0D806514-0F6A-5579-BC4C-BF0B91C511E2}']
    function get_Current: Text_IAlternateWordForm; safecall;
    function get_HasCurrent: Boolean; safecall;
    function MoveNext: Boolean; safecall;
    function GetMany(out {TODO: verify}items: PText_IAlternateWordForm): Cardinal; safecall;
    property Current: Text_IAlternateWordForm read get_Current;
    property HasCurrent: Boolean read get_HasCurrent;
  end;

  // Generic Delegate for 
  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.IAlternateWordForm>
  IIterable_1__Text_IAlternateWordForm_Delegate_Base = interface(IUnknown)
  ['{AE838C29-60C1-5093-AE61-0ED22857DB05}']
  end;
  {
  // Used Types:  Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.IAlternateWordForm>
  }
  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.IAlternateWordForm>
  IIterable_1__Text_IAlternateWordForm = interface(IIterable_1__Text_IAlternateWordForm_Delegate_Base)
  ['{3A8C90F6-6AAC-5697-8EF8-ECDB54D25DDF}']
    function First: IIterator_1__Text_IAlternateWordForm; safecall;
  end;

  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Text.IAlternateWordForm
  // Used Types:  UInt32
  // Used Types:  Boolean
  }
  // Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.IAlternateWordForm>
  IVectorView_1__Text_IAlternateWordForm = interface(IInspectable)
  ['{118A250E-A55C-5CF2-ABF9-0FAE89D20E85}']
    function GetAt(index: Cardinal): Text_IAlternateWordForm; safecall;
    function get_Size: Cardinal; safecall;
    function IndexOf(value: Text_IAlternateWordForm; out index: Cardinal): Boolean; safecall;
    function GetMany(startIndex: Cardinal; out {TODO: verify}items: PText_IAlternateWordForm): Cardinal; safecall;
    property Size: Cardinal read get_Size;
  end;

  // DualAPI Interface
  // UsedAPI Interface
  {
  // Used Types:  String
  // Used Types:  Windows.Data.Text.TextSegment
  // Used Types:  Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.IAlternateWordForm>
  }
  // Windows.Data.Text.IWordSegment
  Text_IWordSegment = interface(IInspectable)
  ['{D2D4BA6D-987C-4CC0-B6BD-D49A11B38F9A}']
    function get_Text: HSTRING; safecall;
    function get_SourceTextSegment: Text_TextSegment; safecall;
    function get_AlternateForms: IVectorView_1__Text_IAlternateWordForm; safecall;
    property AlternateForms: IVectorView_1__Text_IAlternateWordForm read get_AlternateForms;
    property SourceTextSegment: Text_TextSegment read get_SourceTextSegment;
    property Text: HSTRING read get_Text;
  end;

  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Text.IWordSegment
  // Used Types:  Boolean
  // Used Types:  UInt32
  }
  // Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.IWordSegment>
  IIterator_1__Text_IWordSegment = interface(IInspectable)
  ['{5AE16A4D-93C9-57B6-8811-249A7E7C07A0}']
    function get_Current: Text_IWordSegment; safecall;
    function get_HasCurrent: Boolean; safecall;
    function MoveNext: Boolean; safecall;
    function GetMany(out {TODO: verify}items: PText_IWordSegment): Cardinal; safecall;
    property Current: Text_IWordSegment read get_Current;
    property HasCurrent: Boolean read get_HasCurrent;
  end;

  // Generic Delegate for 
  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.IWordSegment>
  IIterable_1__Text_IWordSegment_Delegate_Base = interface(IUnknown)
  ['{D14DC94A-A311-5DDC-BF8B-D58795D87D6D}']
  end;
  // UsedAPI Interface
  {
  // Used Types:  Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.IWordSegment>
  }
  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.IWordSegment>
  IIterable_1__Text_IWordSegment = interface(IIterable_1__Text_IWordSegment_Delegate_Base)
  ['{DE2D0496-8160-501B-825B-933D35601BA4}']
    function First: IIterator_1__Text_IWordSegment; safecall;
  end;

  // UsedAPI Interface
  {
  // Used Types:  Void
  // Used Types:  Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.IWordSegment>
  }
  // Windows.Data.Text.WordSegmentsTokenizingHandler
  Text_WordSegmentsTokenizingHandler = interface(IUnknown)
  ['{A5DD6357-BF2A-4C4F-A31F-29E71C6F8B35}']
    procedure Invoke(precedingWords: IIterable_1__Text_IWordSegment; words: IIterable_1__Text_IWordSegment); safecall;
  end;

  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Text.IWordSegment
  // Used Types:  UInt32
  // Used Types:  Boolean
  }
  // Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.IWordSegment>
  IVectorView_1__Text_IWordSegment = interface(IInspectable)
  ['{F931F534-BDA4-593C-97C1-072B3CDB05E9}']
    function GetAt(index: Cardinal): Text_IWordSegment; safecall;
    function get_Size: Cardinal; safecall;
    function IndexOf(value: Text_IWordSegment; out index: Cardinal): Boolean; safecall;
    function GetMany(startIndex: Cardinal; out {TODO: verify}items: PText_IWordSegment): Cardinal; safecall;
    property Size: Cardinal read get_Size;
  end;

  // DualAPI Interface
  // UsedAPI Interface
  {
  // Used Types:  String
  // Used Types:  Windows.Data.Text.IWordSegment
  // Used Types:  UInt32
  // Used Types:  Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.IWordSegment>
  // Used Types:  Void
  // Used Types:  Windows.Data.Text.WordSegmentsTokenizingHandler
  }
  // Windows.Data.Text.IWordsSegmenter
  Text_IWordsSegmenter = interface(IInspectable)
  ['{86B4D4D1-B2FE-4E34-A81D-66640300454F}']
    function get_ResolvedLanguage: HSTRING; safecall;
    function GetTokenAt(text: HSTRING; startIndex: Cardinal): Text_IWordSegment; safecall;
    function GetTokens(text: HSTRING): IVectorView_1__Text_IWordSegment; safecall;
    procedure Tokenize(text: HSTRING; startIndex: Cardinal; handler: Text_WordSegmentsTokenizingHandler); safecall;
    property ResolvedLanguage: HSTRING read get_ResolvedLanguage;
  end;

  {
  // Used Types:  Windows.Data.Text.IWordsSegmenter
  // Used Types:  String
  }
  // Windows.Data.Text.IWordsSegmenterFactory
  Text_IWordsSegmenterFactory = interface(IInspectable)
  ['{E6977274-FC35-455C-8BFB-6D7F4653CA97}']
    function CreateWithLanguage(language: HSTRING): Text_IWordsSegmenter; safecall;
  end;

  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Text.ISelectableWordSegment
  // Used Types:  Boolean
  // Used Types:  UInt32
  }
  // Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.ISelectableWordSegment>
  IIterator_1__Text_ISelectableWordSegment = interface(IInspectable)
  ['{C0E508BB-A33E-5D60-B630-6F92DF91252C}']
    function get_Current: Text_ISelectableWordSegment; safecall;
    function get_HasCurrent: Boolean; safecall;
    function MoveNext: Boolean; safecall;
    function GetMany(out {TODO: verify}items: PText_ISelectableWordSegment): Cardinal; safecall;
    property Current: Text_ISelectableWordSegment read get_Current;
    property HasCurrent: Boolean read get_HasCurrent;
  end;

  // Generic Delegate for 
  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.ISelectableWordSegment>
  IIterable_1__Text_ISelectableWordSegment_Delegate_Base = interface(IUnknown)
  ['{784B0CEC-1348-5334-91E5-2E013294E211}']
  end;
  // UsedAPI Interface
  {
  // Used Types:  Windows.Foundation.Collections.IIterator`1<Windows.Data.Text.ISelectableWordSegment>
  }
  // Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.ISelectableWordSegment>
  IIterable_1__Text_ISelectableWordSegment = interface(IIterable_1__Text_ISelectableWordSegment_Delegate_Base)
  ['{01806953-9F16-574D-B498-A026DCA5D767}']
    function First: IIterator_1__Text_ISelectableWordSegment; safecall;
  end;

  // UsedAPI Interface
  {
  // Used Types:  Void
  // Used Types:  Windows.Foundation.Collections.IIterable`1<Windows.Data.Text.ISelectableWordSegment>
  }
  // Windows.Data.Text.SelectableWordSegmentsTokenizingHandler
  Text_SelectableWordSegmentsTokenizingHandler = interface(IUnknown)
  ['{3A3DFC9C-AEDE-4DC7-9E6C-41C044BD3592}']
    procedure Invoke(precedingWords: IIterable_1__Text_ISelectableWordSegment; words: IIterable_1__Text_ISelectableWordSegment); safecall;
  end;

  // UsedAPI Interface
  {
  // Used Types:  Windows.Data.Text.ISelectableWordSegment
  // Used Types:  UInt32
  // Used Types:  Boolean
  }
  // Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.ISelectableWordSegment>
  IVectorView_1__Text_ISelectableWordSegment = interface(IInspectable)
  ['{08BCD90D-CDB2-5FE6-B17D-8675BDF1482A}']
    function GetAt(index: Cardinal): Text_ISelectableWordSegment; safecall;
    function get_Size: Cardinal; safecall;
    function IndexOf(value: Text_ISelectableWordSegment; out index: Cardinal): Boolean; safecall;
    function GetMany(startIndex: Cardinal; out {TODO: verify}items: PText_ISelectableWordSegment): Cardinal; safecall;
    property Size: Cardinal read get_Size;
  end;

  // DualAPI Interface
  // UsedAPI Interface
  {
  // Used Types:  String
  // Used Types:  Windows.Data.Text.ISelectableWordSegment
  // Used Types:  UInt32
  // Used Types:  Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.ISelectableWordSegment>
  // Used Types:  Void
  // Used Types:  Windows.Data.Text.SelectableWordSegmentsTokenizingHandler
  }
  // Windows.Data.Text.ISelectableWordsSegmenter
  Text_ISelectableWordsSegmenter = interface(IInspectable)
  ['{F6DC31E7-4B13-45C5-8897-7D71269E085D}']
    function get_ResolvedLanguage: HSTRING; safecall;
    function GetTokenAt(text: HSTRING; startIndex: Cardinal): Text_ISelectableWordSegment; safecall;
    function GetTokens(text: HSTRING): IVectorView_1__Text_ISelectableWordSegment; safecall;
    procedure Tokenize(text: HSTRING; startIndex: Cardinal; handler: Text_SelectableWordSegmentsTokenizingHandler); safecall;
    property ResolvedLanguage: HSTRING read get_ResolvedLanguage;
  end;

  {
  // Used Types:  Windows.Data.Text.ISelectableWordsSegmenter
  // Used Types:  String
  }
  // Windows.Data.Text.ISelectableWordsSegmenterFactory
  Text_ISelectableWordsSegmenterFactory = interface(IInspectable)
  ['{8C7A7648-6057-4339-BC70-F210010A4150}']
    function CreateWithLanguage(language: HSTRING): Text_ISelectableWordsSegmenter; safecall;
  end;

(*
  // RemoveAPI Interface
  {
  // Used Types:  String
  // Used Types:  Boolean
  // Used Types:  Windows.Foundation.IAsyncOperation`1<Windows.Foundation.Collections.IVectorView`1<String>>
  // Used Types:  UInt32
  }
  // Windows.Data.Text.ITextPredictionGenerator
  Text_ITextPredictionGenerator = interface(IInspectable)
  ['{5EACAB07-ABF1-4CB6-9D9E-326F2B468756}']
    function get_ResolvedLanguage: HSTRING; safecall;
    function get_LanguageAvailableButNotInstalled: Boolean; safecall;
    function GetCandidatesAsync(input: HSTRING): IAsyncOperation_1__IVectorView_1__HSTRING; safecall; overload;
    function GetCandidatesAsync(input: HSTRING; maxCandidates: Cardinal): IAsyncOperation_1__IVectorView_1__HSTRING; safecall; overload;
    property LanguageAvailableButNotInstalled: Boolean read get_LanguageAvailableButNotInstalled;
    property ResolvedLanguage: HSTRING read get_ResolvedLanguage;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Data.Text.ITextPredictionGenerator
  // Used Types:  String
  }
  // Windows.Data.Text.ITextPredictionGeneratorFactory
  Text_ITextPredictionGeneratorFactory = interface(IInspectable)
  ['{7257B416-8BA2-4751-9D30-9D85435653A2}']
    function Create(languageTag: HSTRING): Text_ITextPredictionGenerator; safecall;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  String
  // Used Types:  Boolean
  // Used Types:  Windows.Foundation.IAsyncOperation`1<Windows.Foundation.Collections.IVectorView`1<String>>
  // Used Types:  UInt32
  }
  // Windows.Data.Text.ITextConversionGenerator
  Text_ITextConversionGenerator = interface(IInspectable)
  ['{03606A5E-2AA9-4AB6-AF8B-A562B63A8992}']
    function get_ResolvedLanguage: HSTRING; safecall;
    function get_LanguageAvailableButNotInstalled: Boolean; safecall;
    function GetCandidatesAsync(input: HSTRING): IAsyncOperation_1__IVectorView_1__HSTRING; safecall; overload;
    function GetCandidatesAsync(input: HSTRING; maxCandidates: Cardinal): IAsyncOperation_1__IVectorView_1__HSTRING; safecall; overload;
    property LanguageAvailableButNotInstalled: Boolean read get_LanguageAvailableButNotInstalled;
    property ResolvedLanguage: HSTRING read get_ResolvedLanguage;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Data.Text.ITextConversionGenerator
  // Used Types:  String
  }
  // Windows.Data.Text.ITextConversionGeneratorFactory
  Text_ITextConversionGeneratorFactory = interface(IInspectable)
  ['{FCAA3781-3083-49AB-BE15-56DFBBB74D6F}']
    function Create(languageTag: HSTRING): Text_ITextConversionGenerator; safecall;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  String
  // Used Types:  Boolean
  // Used Types:  Windows.Foundation.IAsyncOperation`1<String>
  }
  // Windows.Data.Text.ITextReverseConversionGenerator
  Text_ITextReverseConversionGenerator = interface(IInspectable)
  ['{51E7F514-9C51-4D86-AE1B-B498FBAD8313}']
    function get_ResolvedLanguage: HSTRING; safecall;
    function get_LanguageAvailableButNotInstalled: Boolean; safecall;
    function ConvertBackAsync(input: HSTRING): IAsyncOperation_1__HSTRING; safecall;
    property LanguageAvailableButNotInstalled: Boolean read get_LanguageAvailableButNotInstalled;
    property ResolvedLanguage: HSTRING read get_ResolvedLanguage;
  end;

*)

(*
  // RemoveAPI Interface
  {
  // Used Types:  Windows.Data.Text.ITextReverseConversionGenerator
  // Used Types:  String
  }
  // Windows.Data.Text.ITextReverseConversionGeneratorFactory
  Text_ITextReverseConversionGeneratorFactory = interface(IInspectable)
  ['{63BED326-1FDA-41F6-89D5-23DDEA3C729A}']
    function Create(languageTag: HSTRING): Text_ITextReverseConversionGenerator; safecall;
  end;

*)

  {
  // Used Types:  String
  // Used Types:  Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>
  }
  // Windows.Foundation.Collections.IKeyValuePair`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>
  IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment = interface(IInspectable)
  ['{55F778D6-F408-5E83-84AA-7E359540639A}']
    function get_Key: HSTRING; safecall;
    function get_Value: IVectorView_1__Text_TextSegment; safecall;
    property Key: HSTRING read get_Key;
    property Value: IVectorView_1__Text_TextSegment read get_Value;
  end;

  {
  // Used Types:  Windows.Foundation.Collections.IKeyValuePair`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>
  // Used Types:  Boolean
  // Used Types:  UInt32
  }
  // Windows.Foundation.Collections.IIterator`1<Windows.Foundation.Collections.IKeyValuePair`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>>
  IIterator_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment = interface(IInspectable)
  ['{87CF56D8-0231-5FC8-8E9D-E06E7237F991}']
    function get_Current: IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment; safecall;
    function get_HasCurrent: Boolean; safecall;
    function MoveNext: Boolean; safecall;
    function GetMany(out {TODO: verify}items: PIKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment): Cardinal; safecall;
    property Current: IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment read get_Current;
    property HasCurrent: Boolean read get_HasCurrent;
  end;

  // Generic Delegate for 
  // Windows.Foundation.Collections.IIterable`1<Windows.Foundation.Collections.IKeyValuePair`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>>
  IIterable_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment_Delegate_Base = interface(IUnknown)
  ['{F819A276-B3F5-54D4-B8FD-C9ADB7F700E3}']
  end;
  {
  // Used Types:  Windows.Foundation.Collections.IIterator`1<Windows.Foundation.Collections.IKeyValuePair`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>>
  }
  // Windows.Foundation.Collections.IIterable`1<Windows.Foundation.Collections.IKeyValuePair`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>>
  IIterable_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment = interface(IIterable_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment_Delegate_Base)
  ['{09FC0D28-9CF3-5562-8129-3EE9B34BB332}']
    function First: IIterator_1__IKeyValuePair_2__HSTRING__IVectorView_1__Text_TextSegment; safecall;
  end;

  // Generic Delegate for 
  // Windows.Foundation.Collections.IMapView`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>
  IMapView_2__HSTRING__IVectorView_1__Text_TextSegment_Delegate_Base = interface(IUnknown)
  ['{91D443D6-3777-5102-B0BC-3D4183A26FF9}']
  end;
  {
  // Used Types:  Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>
  // Used Types:  String
  // Used Types:  UInt32
  // Used Types:  Boolean
  // Used Types:  Void
  // Used Types:  Windows.Foundation.Collections.IMapView`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>
  }
  // Windows.Foundation.Collections.IMapView`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>
  IMapView_2__HSTRING__IVectorView_1__Text_TextSegment = interface(IMapView_2__HSTRING__IVectorView_1__Text_TextSegment_Delegate_Base)
  ['{61C67A85-7658-508B-A585-D9DEFFED6302}']
    function Lookup(key: HSTRING): IVectorView_1__Text_TextSegment; safecall;
    function get_Size: Cardinal; safecall;
    function HasKey(key: HSTRING): Boolean; safecall;
    procedure Split(out first: IMapView_2__HSTRING__IVectorView_1__Text_TextSegment; out second: IMapView_2__HSTRING__IVectorView_1__Text_TextSegment); safecall;
    property Size: Cardinal read get_Size;
  end;

  {
  // Used Types:  Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>
  // Used Types:  String
  // Used Types:  UInt32
  // Used Types:  Boolean
  // Used Types:  Windows.Foundation.Collections.IMapView`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>
  // Used Types:  Void
  }
  // Windows.Foundation.Collections.IMap`2<String,Windows.Foundation.Collections.IVectorView`1<Windows.Data.Text.TextSegment>>
  IMap_2__HSTRING__IVectorView_1__Text_TextSegment = interface(IInspectable)
  ['{DD54B51A-FF01-544B-9FA7-A6213845628C}']
    function Lookup(key: HSTRING): IVectorView_1__Text_TextSegment; safecall;
    function get_Size: Cardinal; safecall;
    function HasKey(key: HSTRING): Boolean; safecall;
    function GetView: IMapView_2__HSTRING__IVectorView_1__Text_TextSegment; safecall;
    function Insert(key: HSTRING; value: IVectorView_1__Text_TextSegment): Boolean; safecall;
    procedure Remove(key: HSTRING); safecall;
    procedure Clear; safecall;
    property Size: Cardinal read get_Size;
  end;


implementation

end.
