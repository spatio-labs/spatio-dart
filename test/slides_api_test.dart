//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:spatio_sdk/api.dart';
import 'package:test/test.dart';


/// tests for SlidesApi
void main() {
  // final instance = SlidesApi();

  group('tests for SlidesApi', () {
    // Create a presentation.
    //
    // Creates a new deck under the target account. Target resolution mirrors `POST /v1/notes` and `/v1/sheets`: body `accountId` → `?accountId=` → body `provider` → `?provider=` → caller's single connected account (errors with `ambiguous_account` otherwise). The new deck is auto-seeded with one blank slide so the renderer has something to display immediately. 
    //
    //Future<Presentation> createPresentation(CreatePresentationRequest createPresentationRequest, { String accountId, String provider, String xWorkspaceID }) async
    test('test createPresentation', () async {
      // TODO
    });

    // Insert a slide.
    //
    //Future<Slide> createSlide(String id, CreateSlideRequest createSlideRequest, { String accountId, String xWorkspaceID }) async
    test('test createSlide', () async {
      // TODO
    });

    // Add a canvas element (text/shape/image) to a slide.
    //
    //Future<SlideElement> createSlideElement(String id, String slideId, CreateSlideElementRequest createSlideElementRequest, { String accountId, String xWorkspaceID }) async
    test('test createSlideElement', () async {
      // TODO
    });

    // Delete a presentation.
    //
    //Future<SuccessFlag> deletePresentation(String id, { String accountId, String xWorkspaceID }) async
    test('test deletePresentation', () async {
      // TODO
    });

    // Delete a slide.
    //
    //Future<SuccessFlag> deleteSlide(String id, String slideId, { String accountId, String xWorkspaceID }) async
    test('test deleteSlide', () async {
      // TODO
    });

    // Delete a slide element.
    //
    //Future<SuccessFlag> deleteSlideElement(String id, String slideId, String elementId, { String accountId, String xWorkspaceID }) async
    test('test deleteSlideElement', () async {
      // TODO
    });

    // Disable public sharing.
    //
    // Owner-only. Subsequent public viewer requests 404.
    //
    //Future disablePresentationShare(String id, { String accountId, String xWorkspaceID }) async
    test('test disablePresentationShare', () async {
      // TODO
    });

    // Enable (or update password on) public sharing.
    //
    // Owner-only. With `setPassword: false` (or empty body), flips the deck public without changing the password. With `setPassword: true`, applies `password` (empty clears). 
    //
    //Future<ShareSettings> enablePresentationShare(String id, { String accountId, String xWorkspaceID, EnableShareRequest enableShareRequest }) async
    test('test enablePresentationShare', () async {
      // TODO
    });

    // Render the presentation as a PDF.
    //
    // Proxies to the Spatio export sidecar (Playwright). Two response modes selected via `?storage=`:    - `stream` (default) — response body is the PDF binary     (`application/pdf`).   - `r2` — uploads the rendered PDF to R2 storage and returns     a JSON envelope with a 24-hour signed URL.  Returns `503 Service Unavailable` when the export sidecar is not configured (dev fallback to the client-side exporter). 
    //
    //Future<MultipartFile> exportPresentationPdf(String id, { String accountId, String xWorkspaceID, String storage, String filename, ExportPDFRequest exportPDFRequest }) async
    test('test exportPresentationPdf', () async {
      // TODO
    });

    // Render the presentation as a PowerPoint (.pptx) file.
    //
    // Proxies to the Spatio export sidecar (Playwright + pptxgenjs). Each slide is screenshotted at 2× device-pixel ratio and wrapped into a PowerPoint .pptx as a full-bleed image. Visual fidelity is preserved exactly — what renders in Spatio renders identically in PowerPoint, Keynote, Google Slides — at the cost of in-PowerPoint editability of slide content. Users edit slide content back in Spatio (the source of truth), not inside PowerPoint.  Two response modes selected via `?storage=`:    - `stream` (default) — response body is the PPTX binary     (`application/vnd.openxmlformats-officedocument.presentationml.presentation`).   - `r2` — uploads the rendered PPTX to R2 storage and returns     a JSON envelope with a 24-hour signed URL.  Returns `503 Service Unavailable` when the export sidecar is not configured. 
    //
    //Future<MultipartFile> exportPresentationPptx(String id, { String accountId, String xWorkspaceID, String storage, String filename, ExportPDFRequest exportPDFRequest }) async
    test('test exportPresentationPptx', () async {
      // TODO
    });

    // Fetch one presentation.
    //
    //Future<Presentation> getPresentation(String id, { String accountId, String xWorkspaceID }) async
    test('test getPresentation', () async {
      // TODO
    });

    // Fetch share settings for a presentation.
    //
    // Owner-only. Mirror of `GET /v1/notes/{id}/share` — same shape, same fields. Returns the current public-share configuration, including the share token and computed public viewer URL when the deck is currently public. 
    //
    //Future<ShareSettings> getPresentationShareSettings(String id, { String accountId, String xWorkspaceID }) async
    test('test getPresentationShareSettings', () async {
      // TODO
    });

    // Fetch a publicly shared presentation.
    //
    // Unauthenticated. Mirror of `GET /public/notes/{token}`. The share token is the credential. For password-protected decks the password is supplied via `?password=`; the response distinguishes \"no password supplied\" from \"wrong password\" so the viewer can render the right prompt. Unknown tokens and disabled-share decks both return `404` to prevent enumeration. 
    //
    //Future<Map<String, Object>> getPublicPresentation(String token, { String password }) async
    test('test getPublicPresentation', () async {
      // TODO
    });

    // Fetch one slide.
    //
    //Future<Slide> getSlide(String id, String slideId, { String accountId, String xWorkspaceID }) async
    test('test getSlide', () async {
      // TODO
    });

    // Fetch one slide element.
    //
    //Future<SlideElement> getSlideElement(String id, String slideId, String elementId, { String accountId, String xWorkspaceID }) async
    test('test getSlideElement', () async {
      // TODO
    });

    // List presentations across connected accounts.
    //
    // Fan-out list. Returns every presentation visible to the caller across every connected slides provider. Pass `?accountId=` or `?provider=` to scope to a single source. 
    //
    //Future<PresentationListEnvelope> listPresentations({ String accountId, String provider, String xWorkspaceID, int limit, int offset }) async
    test('test listPresentations', () async {
      // TODO
    });

    // List the canvas elements on a slide.
    //
    //Future<SlideElementList> listSlideElements(String id, String slideId, { String accountId, String xWorkspaceID }) async
    test('test listSlideElements', () async {
      // TODO
    });

    // List slides in a presentation.
    //
    // Single-account list. Returns slides in the order set by their `position` field. 
    //
    //Future<SlideList> listSlidesInPresentation(String id, { String accountId, String xWorkspaceID }) async
    test('test listSlidesInPresentation', () async {
      // TODO
    });

    // Rotate the share token, invalidating outstanding URLs.
    //
    //Future<ShareSettings> rotatePresentationShareToken(String id, { String accountId, String xWorkspaceID }) async
    test('test rotatePresentationShareToken', () async {
      // TODO
    });

    // Update presentation metadata (partial).
    //
    //Future<Presentation> updatePresentation(String id, UpdatePresentationRequest updatePresentationRequest, { String accountId, String xWorkspaceID }) async
    test('test updatePresentation', () async {
      // TODO
    });

    // Update a slide (partial).
    //
    //Future<Slide> updateSlide(String id, String slideId, UpdateSlideRequest updateSlideRequest, { String accountId, String xWorkspaceID }) async
    test('test updateSlide', () async {
      // TODO
    });

    // Update a slide element (partial).
    //
    //Future<SlideElement> updateSlideElement(String id, String slideId, String elementId, UpdateSlideElementRequest updateSlideElementRequest, { String accountId, String xWorkspaceID }) async
    test('test updateSlideElement', () async {
      // TODO
    });

  });
}
