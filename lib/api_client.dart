//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.spatio.app', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AcceptOrganizationInvitationRequest':
          return AcceptOrganizationInvitationRequest.fromJson(value);
        case 'AccountChoice':
          return AccountChoice.fromJson(value);
        case 'AccountError':
          return AccountError.fromJson(value);
        case 'AccountListResponse':
          return AccountListResponse.fromJson(value);
        case 'AccountPlan':
          return AccountPlan.fromJson(value);
        case 'AccountStatus':
          return AccountStatus.fromJson(value);
        case 'AccountTierDetails':
          return AccountTierDetails.fromJson(value);
        case 'AccountUsage':
          return AccountUsage.fromJson(value);
        case 'ActionDescriptor':
          return ActionDescriptor.fromJson(value);
        case 'AddOrganizationMemberRequest':
          return AddOrganizationMemberRequest.fromJson(value);
        case 'AddWorkspaceMemberRequest':
          return AddWorkspaceMemberRequest.fromJson(value);
        case 'Agent':
          return Agent.fromJson(value);
        case 'AgentConversation':
          return AgentConversation.fromJson(value);
        case 'AgentConversationListResponse':
          return AgentConversationListResponse.fromJson(value);
        case 'AgentListResponse':
          return AgentListResponse.fromJson(value);
        case 'AgentMessage':
          return AgentMessage.fromJson(value);
        case 'AgentMessageListResponse':
          return AgentMessageListResponse.fromJson(value);
        case 'AgentSessionContext':
          return AgentSessionContext.fromJson(value);
        case 'AgentTaskUsage':
          return AgentTaskUsage.fromJson(value);
        case 'AmbiguousAccountError':
          return AmbiguousAccountError.fromJson(value);
        case 'ApiError':
          return ApiError.fromJson(value);
        case 'App':
          return App.fromJson(value);
        case 'AppFileContentResponse':
          return AppFileContentResponse.fromJson(value);
        case 'AppFileListResponse':
          return AppFileListResponse.fromJson(value);
        case 'AppListResponse':
          return AppListResponse.fromJson(value);
        case 'AssignContactCategoryRequest':
          return AssignContactCategoryRequest.fromJson(value);
        case 'Attachment':
          return Attachment.fromJson(value);
        case 'AttachmentInput':
          return AttachmentInput.fromJson(value);
        case 'AttachmentMeta':
          return AttachmentMeta.fromJson(value);
        case 'Attendee':
          return Attendee.fromJson(value);
        case 'AttendeeRole':
          return AttendeeRoleTypeTransformer().decode(value);
        case 'AttendeeStatus':
          return AttendeeStatusTypeTransformer().decode(value);
        case 'Block':
          return Block.fromJson(value);
        case 'BlockContent':
          return BlockContent.fromJson(value);
        case 'BlockListResponse':
          return BlockListResponse.fromJson(value);
        case 'BlockType':
          return BlockTypeTypeTransformer().decode(value);
        case 'BulkArchiveRequest':
          return BulkArchiveRequest.fromJson(value);
        case 'BulkArchiveResponse':
          return BulkArchiveResponse.fromJson(value);
        case 'BulkArchiveResponseFailedInner':
          return BulkArchiveResponseFailedInner.fromJson(value);
        case 'BulkDeleteEmailsRequest':
          return BulkDeleteEmailsRequest.fromJson(value);
        case 'BulkDeleteEmailsResponse':
          return BulkDeleteEmailsResponse.fromJson(value);
        case 'BulkDeleteFilesRequest':
          return BulkDeleteFilesRequest.fromJson(value);
        case 'BulkDeleteTasksRequest':
          return BulkDeleteTasksRequest.fromJson(value);
        case 'BulkDeleteTasksResponse':
          return BulkDeleteTasksResponse.fromJson(value);
        case 'BulkDeleteTasksResponseFailedInner':
          return BulkDeleteTasksResponseFailedInner.fromJson(value);
        case 'BulkFilesResponse':
          return BulkFilesResponse.fromJson(value);
        case 'BulkFilesResponseFailedInner':
          return BulkFilesResponseFailedInner.fromJson(value);
        case 'BulkMarkReadRequest':
          return BulkMarkReadRequest.fromJson(value);
        case 'BulkMarkReadResponse':
          return BulkMarkReadResponse.fromJson(value);
        case 'BulkMarkReadResponseFailedInner':
          return BulkMarkReadResponseFailedInner.fromJson(value);
        case 'BulkMoveFilesRequest':
          return BulkMoveFilesRequest.fromJson(value);
        case 'BulkUpdateTasksRequest':
          return BulkUpdateTasksRequest.fromJson(value);
        case 'BulkUpdateTasksResponse':
          return BulkUpdateTasksResponse.fromJson(value);
        case 'CalendarAccountError':
          return CalendarAccountError.fromJson(value);
        case 'CalendarCapabilitiesResponse':
          return CalendarCapabilitiesResponse.fromJson(value);
        case 'CalendarOperationResult':
          return CalendarOperationResult.fromJson(value);
        case 'CalendarProviderInfo':
          return CalendarProviderInfo.fromJson(value);
        case 'CalendarProvidersInfo':
          return CalendarProvidersInfo.fromJson(value);
        case 'CalendarSyncResponse':
          return CalendarSyncResponse.fromJson(value);
        case 'CallListResponse':
          return CallListResponse.fromJson(value);
        case 'CallRecording':
          return CallRecording.fromJson(value);
        case 'CallRecordingListResponse':
          return CallRecordingListResponse.fromJson(value);
        case 'Cell':
          return Cell.fromJson(value);
        case 'ChangePasswordRequest':
          return ChangePasswordRequest.fromJson(value);
        case 'Channel':
          return Channel.fromJson(value);
        case 'ChannelMembershipRequest':
          return ChannelMembershipRequest.fromJson(value);
        case 'ChatActionDefinition':
          return ChatActionDefinition.fromJson(value);
        case 'ChatActionsList':
          return ChatActionsList.fromJson(value);
        case 'ChatMessage':
          return ChatMessage.fromJson(value);
        case 'ChatUser':
          return ChatUser.fromJson(value);
        case 'ChunkedFileManifest':
          return ChunkedFileManifest.fromJson(value);
        case 'ClientRegistrationRequest':
          return ClientRegistrationRequest.fromJson(value);
        case 'ClientRegistrationResponse':
          return ClientRegistrationResponse.fromJson(value);
        case 'Comment':
          return Comment.fromJson(value);
        case 'CommentAuthor':
          return CommentAuthor.fromJson(value);
        case 'CommentListResponse':
          return CommentListResponse.fromJson(value);
        case 'CommentMutationResponse':
          return CommentMutationResponse.fromJson(value);
        case 'CommentResponse':
          return CommentResponse.fromJson(value);
        case 'CommitChunkedUploadRequest':
          return CommitChunkedUploadRequest.fromJson(value);
        case 'CommitChunkedUploadResponse':
          return CommitChunkedUploadResponse.fromJson(value);
        case 'ConferenceData':
          return ConferenceData.fromJson(value);
        case 'ConnectedAppItem':
          return ConnectedAppItem.fromJson(value);
        case 'ConnectedAppsListResponse':
          return ConnectedAppsListResponse.fromJson(value);
        case 'ConnectionAccountListResponse':
          return ConnectionAccountListResponse.fromJson(value);
        case 'ConnectionListResponse':
          return ConnectionListResponse.fromJson(value);
        case 'ConsumeAgentTaskResponse':
          return ConsumeAgentTaskResponse.fromJson(value);
        case 'Contact':
          return Contact.fromJson(value);
        case 'ContactCategory':
          return ContactCategory.fromJson(value);
        case 'ContactCategoryListResponse':
          return ContactCategoryListResponse.fromJson(value);
        case 'ContactListResponse':
          return ContactListResponse.fromJson(value);
        case 'ContactProvider':
          return ContactProvider.fromJson(value);
        case 'ContactProviderListResponse':
          return ContactProviderListResponse.fromJson(value);
        case 'Conversation':
          return Conversation.fromJson(value);
        case 'ConversationMessage':
          return ConversationMessage.fromJson(value);
        case 'CoreAction':
          return CoreAction.fromJson(value);
        case 'CoreActionListResponse':
          return CoreActionListResponse.fromJson(value);
        case 'CreateAgentConversationRequest':
          return CreateAgentConversationRequest.fromJson(value);
        case 'CreateAgentMessageRequest':
          return CreateAgentMessageRequest.fromJson(value);
        case 'CreateAgentRequest':
          return CreateAgentRequest.fromJson(value);
        case 'CreateAppRequest':
          return CreateAppRequest.fromJson(value);
        case 'CreateBlockRequest':
          return CreateBlockRequest.fromJson(value);
        case 'CreateCalendarEvent201Response':
          return CreateCalendarEvent201Response.fromJson(value);
        case 'CreateCallRequest':
          return CreateCallRequest.fromJson(value);
        case 'CreateChannelRequest':
          return CreateChannelRequest.fromJson(value);
        case 'CreateChannelResponse':
          return CreateChannelResponse.fromJson(value);
        case 'CreateCommentRequest':
          return CreateCommentRequest.fromJson(value);
        case 'CreateContactCategoryRequest':
          return CreateContactCategoryRequest.fromJson(value);
        case 'CreateContactRequest':
          return CreateContactRequest.fromJson(value);
        case 'CreateConversationRequest':
          return CreateConversationRequest.fromJson(value);
        case 'CreateDraftRequest':
          return CreateDraftRequest.fromJson(value);
        case 'CreateEmailFolderRequest':
          return CreateEmailFolderRequest.fromJson(value);
        case 'CreateEventRequest':
          return CreateEventRequest.fromJson(value);
        case 'CreateFolderRequest':
          return CreateFolderRequest.fromJson(value);
        case 'CreateLabelRequest':
          return CreateLabelRequest.fromJson(value);
        case 'CreateLabelResponse':
          return CreateLabelResponse.fromJson(value);
        case 'CreateMeetingRoomRequest':
          return CreateMeetingRoomRequest.fromJson(value);
        case 'CreateNote400Response':
          return CreateNote400Response.fromJson(value);
        case 'CreateNoteRequest':
          return CreateNoteRequest.fromJson(value);
        case 'CreateOrganizationInvitationRequest':
          return CreateOrganizationInvitationRequest.fromJson(value);
        case 'CreateOrganizationRequest':
          return CreateOrganizationRequest.fromJson(value);
        case 'CreatePATRequest':
          return CreatePATRequest.fromJson(value);
        case 'CreatePATResponse':
          return CreatePATResponse.fromJson(value);
        case 'CreatePresentationRequest':
          return CreatePresentationRequest.fromJson(value);
        case 'CreateRecordRequest':
          return CreateRecordRequest.fromJson(value);
        case 'CreateRecordTypeRequest':
          return CreateRecordTypeRequest.fromJson(value);
        case 'CreateRoutineRequest':
          return CreateRoutineRequest.fromJson(value);
        case 'CreateRowRequest':
          return CreateRowRequest.fromJson(value);
        case 'CreateSheetRequest':
          return CreateSheetRequest.fromJson(value);
        case 'CreateSlideElementRequest':
          return CreateSlideElementRequest.fromJson(value);
        case 'CreateSlideRequest':
          return CreateSlideRequest.fromJson(value);
        case 'CreateTaskRequest':
          return CreateTaskRequest.fromJson(value);
        case 'CreateWorkspaceInvitationRequest':
          return CreateWorkspaceInvitationRequest.fromJson(value);
        case 'CreateWorkspaceRequest':
          return CreateWorkspaceRequest.fromJson(value);
        case 'DMAttachRequest':
          return DMAttachRequest.fromJson(value);
        case 'DMForwardRequest':
          return DMForwardRequest.fromJson(value);
        case 'DMMarkReadRequest':
          return DMMarkReadRequest.fromJson(value);
        case 'DMMessageEnvelope':
          return DMMessageEnvelope.fromJson(value);
        case 'DMMuteRequest':
          return DMMuteRequest.fromJson(value);
        case 'DMMuteResponse':
          return DMMuteResponse.fromJson(value);
        case 'DMPinnedList':
          return DMPinnedList.fromJson(value);
        case 'DMReactionRequest':
          return DMReactionRequest.fromJson(value);
        case 'DMReactionResponse':
          return DMReactionResponse.fromJson(value);
        case 'DMSearchResults':
          return DMSearchResults.fromJson(value);
        case 'DMSetDraftRequest':
          return DMSetDraftRequest.fromJson(value);
        case 'DMThreadReplyRequest':
          return DMThreadReplyRequest.fromJson(value);
        case 'DisconnectConnectionRequest':
          return DisconnectConnectionRequest.fromJson(value);
        case 'DiscoveryDocument':
          return DiscoveryDocument.fromJson(value);
        case 'DownloadFileResponse':
          return DownloadFileResponse.fromJson(value);
        case 'Draft':
          return Draft.fromJson(value);
        case 'DraftResponse':
          return DraftResponse.fromJson(value);
        case 'Email':
          return Email.fromJson(value);
        case 'EmailFolder':
          return EmailFolder.fromJson(value);
        case 'EmailFolderListResponse':
          return EmailFolderListResponse.fromJson(value);
        case 'EnableShareRequest':
          return EnableShareRequest.fromJson(value);
        case 'ExecuteActionRequest':
          return ExecuteActionRequest.fromJson(value);
        case 'ExecuteActionResponse':
          return ExecuteActionResponse.fromJson(value);
        case 'ExecuteChatActionRequest':
          return ExecuteChatActionRequest.fromJson(value);
        case 'ExecuteChatActionResponse':
          return ExecuteChatActionResponse.fromJson(value);
        case 'ExportPDFR2Response':
          return ExportPDFR2Response.fromJson(value);
        case 'ExportPDFRequest':
          return ExportPDFRequest.fromJson(value);
        case 'ExportPDFRequestRasterizedSlidesInner':
          return ExportPDFRequestRasterizedSlidesInner.fromJson(value);
        case 'ExtractTextResult':
          return ExtractTextResult.fromJson(value);
        case 'FederatedSearch200Response':
          return FederatedSearch200Response.fromJson(value);
        case 'FederatedSearch200ResponseItemsInner':
          return FederatedSearch200ResponseItemsInner.fromJson(value);
        case 'FederatedSearch200ResponsePerPlatformValue':
          return FederatedSearch200ResponsePerPlatformValue.fromJson(value);
        case 'FederatedSearchRequest':
          return FederatedSearchRequest.fromJson(value);
        case 'FileListEnvelope':
          return FileListEnvelope.fromJson(value);
        case 'FilesAndFoldersResponse':
          return FilesAndFoldersResponse.fromJson(value);
        case 'Folder':
          return Folder.fromJson(value);
        case 'FolderListEnvelope':
          return FolderListEnvelope.fromJson(value);
        case 'GetChatUserResponse':
          return GetChatUserResponse.fromJson(value);
        case 'GetDomainLogo200Response':
          return GetDomainLogo200Response.fromJson(value);
        case 'GetEmailResponse':
          return GetEmailResponse.fromJson(value);
        case 'GetThreadResponse':
          return GetThreadResponse.fromJson(value);
        case 'InboxCounts':
          return InboxCounts.fromJson(value);
        case 'InboxItem':
          return InboxItem.fromJson(value);
        case 'InboxListResponse':
          return InboxListResponse.fromJson(value);
        case 'InitChunkedUploadRequest':
          return InitChunkedUploadRequest.fromJson(value);
        case 'InitChunkedUploadResponse':
          return InitChunkedUploadResponse.fromJson(value);
        case 'InstallConnectionRequest':
          return InstallConnectionRequest.fromJson(value);
        case 'IntrospectionResponse':
          return IntrospectionResponse.fromJson(value);
        case 'IssueCollaborationToken200Response':
          return IssueCollaborationToken200Response.fromJson(value);
        case 'IssueCollaborationTokenRequest':
          return IssueCollaborationTokenRequest.fromJson(value);
        case 'JWK':
          return JWK.fromJson(value);
        case 'JWKS':
          return JWKS.fromJson(value);
        case 'KeyBinding':
          return KeyBinding.fromJson(value);
        case 'KeyBindingListResponse':
          return KeyBindingListResponse.fromJson(value);
        case 'Label':
          return Label.fromJson(value);
        case 'LabelColor':
          return LabelColor.fromJson(value);
        case 'LinkRepoTaskRequest':
          return LinkRepoTaskRequest.fromJson(value);
        case 'ListCalendarEvents200Response':
          return ListCalendarEvents200Response.fromJson(value);
        case 'ListChannelsResponse':
          return ListChannelsResponse.fromJson(value);
        case 'ListChatUsersResponse':
          return ListChatUsersResponse.fromJson(value);
        case 'ListDraftsResponse':
          return ListDraftsResponse.fromJson(value);
        case 'ListEmailsResponse':
          return ListEmailsResponse.fromJson(value);
        case 'ListEventsData':
          return ListEventsData.fromJson(value);
        case 'ListLabelsResponse':
          return ListLabelsResponse.fromJson(value);
        case 'ListMessagesResponse':
          return ListMessagesResponse.fromJson(value);
        case 'MeetingRoom':
          return MeetingRoom.fromJson(value);
        case 'MoveBlockRequest':
          return MoveBlockRequest.fromJson(value);
        case 'MoveEmailsRequest':
          return MoveEmailsRequest.fromJson(value);
        case 'MoveFileRequest':
          return MoveFileRequest.fromJson(value);
        case 'MoveFileResponse':
          return MoveFileResponse.fromJson(value);
        case 'Note':
          return Note.fromJson(value);
        case 'NoteListEnvelope':
          return NoteListEnvelope.fromJson(value);
        case 'OAuthError':
          return OAuthError.fromJson(value);
        case 'Organization':
          return Organization.fromJson(value);
        case 'OrganizationDetailLegacy':
          return OrganizationDetailLegacy.fromJson(value);
        case 'OrganizationInvitation':
          return OrganizationInvitation.fromJson(value);
        case 'OrganizationInvitationListResponse':
          return OrganizationInvitationListResponse.fromJson(value);
        case 'OrganizationListResponse':
          return OrganizationListResponse.fromJson(value);
        case 'OrganizationMember':
          return OrganizationMember.fromJson(value);
        case 'OrganizationMemberInvitedBy':
          return OrganizationMemberInvitedBy.fromJson(value);
        case 'OrganizationMemberListResponse':
          return OrganizationMemberListResponse.fromJson(value);
        case 'OrganizationWorkspacesInner':
          return OrganizationWorkspacesInner.fromJson(value);
        case 'PATListResponse':
          return PATListResponse.fromJson(value);
        case 'PATScopesResponse':
          return PATScopesResponse.fromJson(value);
        case 'PasswordRequiredError':
          return PasswordRequiredError.fromJson(value);
        case 'PersonalAccessToken':
          return PersonalAccessToken.fromJson(value);
        case 'PreconfiguredAgent':
          return PreconfiguredAgent.fromJson(value);
        case 'Presentation':
          return Presentation.fromJson(value);
        case 'PresentationListEnvelope':
          return PresentationListEnvelope.fromJson(value);
        case 'ProposeRecommendationRequest':
          return ProposeRecommendationRequest.fromJson(value);
        case 'PublicInvitationPayload':
          return PublicInvitationPayload.fromJson(value);
        case 'QuotaExceededError':
          return QuotaExceededError.fromJson(value);
        case 'Recommendation':
          return Recommendation.fromJson(value);
        case 'RecommendationListResponse':
          return RecommendationListResponse.fromJson(value);
        case 'Record':
          return Record.fromJson(value);
        case 'RecordListResponse':
          return RecordListResponse.fromJson(value);
        case 'RecordType':
          return RecordType.fromJson(value);
        case 'RecordTypeListResponse':
          return RecordTypeListResponse.fromJson(value);
        case 'RefreshConnectionRequest':
          return RefreshConnectionRequest.fromJson(value);
        case 'Reminder':
          return Reminder.fromJson(value);
        case 'ReminderMethod':
          return ReminderMethodTypeTransformer().decode(value);
        case 'ReplyEmailRequest':
          return ReplyEmailRequest.fromJson(value);
        case 'RevokeOtherSessionsResponse':
          return RevokeOtherSessionsResponse.fromJson(value);
        case 'RichTextObject':
          return RichTextObject.fromJson(value);
        case 'Routine':
          return Routine.fromJson(value);
        case 'RoutineListResponse':
          return RoutineListResponse.fromJson(value);
        case 'RoutineRun':
          return RoutineRun.fromJson(value);
        case 'RoutineRunCompleteRequest':
          return RoutineRunCompleteRequest.fromJson(value);
        case 'RoutineRunListResponse':
          return RoutineRunListResponse.fromJson(value);
        case 'RoutineRunProgressRequest':
          return RoutineRunProgressRequest.fromJson(value);
        case 'Row':
          return Row.fromJson(value);
        case 'RowList':
          return RowList.fromJson(value);
        case 'SaveMessageRequest':
          return SaveMessageRequest.fromJson(value);
        case 'SearchEmailsResponse':
          return SearchEmailsResponse.fromJson(value);
        case 'SearchFilesResponse':
          return SearchFilesResponse.fromJson(value);
        case 'SendChatMessageRequest':
          return SendChatMessageRequest.fromJson(value);
        case 'SendChatMessageResponse':
          return SendChatMessageResponse.fromJson(value);
        case 'SendEmailRequest':
          return SendEmailRequest.fromJson(value);
        case 'SendEmailResponse':
          return SendEmailResponse.fromJson(value);
        case 'Session':
          return Session.fromJson(value);
        case 'SessionListResponse':
          return SessionListResponse.fromJson(value);
        case 'ShareSettings':
          return ShareSettings.fromJson(value);
        case 'Sheet':
          return Sheet.fromJson(value);
        case 'SheetListEnvelope':
          return SheetListEnvelope.fromJson(value);
        case 'SignInMethods':
          return SignInMethods.fromJson(value);
        case 'SignInMethodsProvidersInner':
          return SignInMethodsProvidersInner.fromJson(value);
        case 'Slide':
          return Slide.fromJson(value);
        case 'SlideElement':
          return SlideElement.fromJson(value);
        case 'SlideElementList':
          return SlideElementList.fromJson(value);
        case 'SlideList':
          return SlideList.fromJson(value);
        case 'SpatioCall':
          return SpatioCall.fromJson(value);
        case 'SpatioConnection':
          return SpatioConnection.fromJson(value);
        case 'SpatioEvent':
          return SpatioEvent.fromJson(value);
        case 'SpatioFile':
          return SpatioFile.fromJson(value);
        case 'SpatioThread':
          return SpatioThread.fromJson(value);
        case 'SuccessFlag':
          return SuccessFlag.fromJson(value);
        case 'Task':
          return Task.fromJson(value);
        case 'TaskComment':
          return TaskComment.fromJson(value);
        case 'TaskCommentAuthor':
          return TaskCommentAuthor.fromJson(value);
        case 'TaskCommentList':
          return TaskCommentList.fromJson(value);
        case 'TaskCommentMutationResponse':
          return TaskCommentMutationResponse.fromJson(value);
        case 'TaskCommentRequest':
          return TaskCommentRequest.fromJson(value);
        case 'TaskListEnvelope':
          return TaskListEnvelope.fromJson(value);
        case 'TaskProvidersInfo':
          return TaskProvidersInfo.fromJson(value);
        case 'TaskProvidersInfoPlatform':
          return TaskProvidersInfoPlatform.fromJson(value);
        case 'TextAnnotations':
          return TextAnnotations.fromJson(value);
        case 'TokenResponse':
          return TokenResponse.fromJson(value);
        case 'UpdateAccountRequest':
          return UpdateAccountRequest.fromJson(value);
        case 'UpdateAgentRequest':
          return UpdateAgentRequest.fromJson(value);
        case 'UpdateAppRequest':
          return UpdateAppRequest.fromJson(value);
        case 'UpdateBlockRequest':
          return UpdateBlockRequest.fromJson(value);
        case 'UpdateCellRequest':
          return UpdateCellRequest.fromJson(value);
        case 'UpdateCommentRequest':
          return UpdateCommentRequest.fromJson(value);
        case 'UpdateContactCategoryRequest':
          return UpdateContactCategoryRequest.fromJson(value);
        case 'UpdateContactRequest':
          return UpdateContactRequest.fromJson(value);
        case 'UpdateConversationRequest':
          return UpdateConversationRequest.fromJson(value);
        case 'UpdateDraftRequest':
          return UpdateDraftRequest.fromJson(value);
        case 'UpdateEmailFolderRequest':
          return UpdateEmailFolderRequest.fromJson(value);
        case 'UpdateEmailRequest':
          return UpdateEmailRequest.fromJson(value);
        case 'UpdateEmailResponse':
          return UpdateEmailResponse.fromJson(value);
        case 'UpdateEventRequest':
          return UpdateEventRequest.fromJson(value);
        case 'UpdateFileRequest':
          return UpdateFileRequest.fromJson(value);
        case 'UpdateKeyBindingRequest':
          return UpdateKeyBindingRequest.fromJson(value);
        case 'UpdateMessageMetadataRequest':
          return UpdateMessageMetadataRequest.fromJson(value);
        case 'UpdateNoteRequest':
          return UpdateNoteRequest.fromJson(value);
        case 'UpdateOrganizationMemberRequest':
          return UpdateOrganizationMemberRequest.fromJson(value);
        case 'UpdateOrganizationRequest':
          return UpdateOrganizationRequest.fromJson(value);
        case 'UpdatePATRequest':
          return UpdatePATRequest.fromJson(value);
        case 'UpdateParticipantStateRequest':
          return UpdateParticipantStateRequest.fromJson(value);
        case 'UpdatePresentationRequest':
          return UpdatePresentationRequest.fromJson(value);
        case 'UpdateRecommendationStatusRequest':
          return UpdateRecommendationStatusRequest.fromJson(value);
        case 'UpdateRecordRequest':
          return UpdateRecordRequest.fromJson(value);
        case 'UpdateRecordTypeRequest':
          return UpdateRecordTypeRequest.fromJson(value);
        case 'UpdateRoutineRequest':
          return UpdateRoutineRequest.fromJson(value);
        case 'UpdateRowRequest':
          return UpdateRowRequest.fromJson(value);
        case 'UpdateSheetRequest':
          return UpdateSheetRequest.fromJson(value);
        case 'UpdateSlideElementRequest':
          return UpdateSlideElementRequest.fromJson(value);
        case 'UpdateSlideRequest':
          return UpdateSlideRequest.fromJson(value);
        case 'UpdateTaskRequest':
          return UpdateTaskRequest.fromJson(value);
        case 'UpdateWorkspaceMemberRequest':
          return UpdateWorkspaceMemberRequest.fromJson(value);
        case 'UpdateWorkspaceRequest':
          return UpdateWorkspaceRequest.fromJson(value);
        case 'UploadChunkedBlockResponse':
          return UploadChunkedBlockResponse.fromJson(value);
        case 'UploadFileBase64Request':
          return UploadFileBase64Request.fromJson(value);
        case 'UserInfoResponse':
          return UserInfoResponse.fromJson(value);
        case 'ValidateKeyBindingRequest':
          return ValidateKeyBindingRequest.fromJson(value);
        case 'ValidateKeyBindingResponse':
          return ValidateKeyBindingResponse.fromJson(value);
        case 'Workspace':
          return Workspace.fromJson(value);
        case 'WorkspaceEnvelope':
          return WorkspaceEnvelope.fromJson(value);
        case 'WorkspaceInvitation':
          return WorkspaceInvitation.fromJson(value);
        case 'WorkspaceInvitationListResponse':
          return WorkspaceInvitationListResponse.fromJson(value);
        case 'WorkspaceListResponse':
          return WorkspaceListResponse.fromJson(value);
        case 'WorkspaceMember':
          return WorkspaceMember.fromJson(value);
        case 'WorkspaceMemberListResponse':
          return WorkspaceMemberListResponse.fromJson(value);
        case 'WorkspaceOrganization':
          return WorkspaceOrganization.fromJson(value);
        case 'WriteAppFileRequest':
          return WriteAppFileRequest.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
