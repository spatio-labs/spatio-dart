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


/// tests for SheetsApi
void main() {
  // final instance = SheetsApi();

  group('tests for SheetsApi', () {
    // Create a sheet.
    //
    // Creates a new sheet under the target account. Target resolution mirrors `POST /v1/notes`: body `accountId` → `?accountId=` → body `provider` → `?provider=` → caller's single connected account (errors with `ambiguous_account` if more than one is connected and no selector is supplied). 
    //
    //Future<Sheet> createSheet(CreateSheetRequest createSheetRequest, { String accountId, String provider, String xWorkspaceID }) async
    test('test createSheet', () async {
      // TODO
    });

    // Insert a row.
    //
    // Inserts a row at `index` (zero-based) or appends to the end when `index` is omitted. 
    //
    //Future<Row> createSheetRow(String id, CreateRowRequest createRowRequest, { String accountId, String xWorkspaceID }) async
    test('test createSheetRow', () async {
      // TODO
    });

    // Delete a sheet.
    //
    //Future<SuccessFlag> deleteSheet(String id, { String accountId, String xWorkspaceID }) async
    test('test deleteSheet', () async {
      // TODO
    });

    // Delete a row.
    //
    //Future<SuccessFlag> deleteSheetRow(String id, int rowIndex, { String accountId, String xWorkspaceID }) async
    test('test deleteSheetRow', () async {
      // TODO
    });

    // Fetch one sheet.
    //
    //Future<Sheet> getSheet(String id, { String accountId, String xWorkspaceID }) async
    test('test getSheet', () async {
      // TODO
    });

    // List rows in a sheet.
    //
    // Single-account row list. Unlike `GET /v1/sheets`, row listing always targets the one account that owns the sheet, so the response is a plain `{ rows, total }` rather than a fan-out envelope. 
    //
    //Future<RowList> listSheetRows(String id, { String accountId, String xWorkspaceID, int limit, int offset }) async
    test('test listSheetRows', () async {
      // TODO
    });

    // List sheets across connected accounts.
    //
    // Fan-out list. Returns every sheet visible to the caller across every connected sheets provider, paginated by `limit` / `offset`. Pass `?accountId=` or `?provider=` to scope to a single source. 
    //
    //Future<SheetListEnvelope> listSheets({ String accountId, String provider, String xWorkspaceID, int limit, int offset }) async
    test('test listSheets', () async {
      // TODO
    });

    // Update a sheet (partial).
    //
    // Partial update of sheet metadata. The renderer also calls this via `PUT /v1/sheets/{id}` for autosave parity; both verbs invoke the same handler. Per-cell and per-row mutations live on their dedicated endpoints, not here. 
    //
    //Future<Sheet> updateSheet(String id, UpdateSheetRequest updateSheetRequest, { String accountId, String xWorkspaceID }) async
    test('test updateSheet', () async {
      // TODO
    });

    // Update a single cell.
    //
    //Future<Cell> updateSheetCell(String id, int rowIndex, String column, UpdateCellRequest updateCellRequest, { String accountId, String xWorkspaceID }) async
    test('test updateSheetCell', () async {
      // TODO
    });

    // Update a row (sparse).
    //
    // Sparse update — keys present in `cells` overwrite that column; keys absent are preserved. 
    //
    //Future<Row> updateSheetRow(String id, int rowIndex, UpdateRowRequest updateRowRequest, { String accountId, String xWorkspaceID }) async
    test('test updateSheetRow', () async {
      // TODO
    });

  });
}
