import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';

part "model.g.dart";

const seqIdentity = SqfEntitySequence(
  sequenceName: "identity",
);

const tableUser = SqfEntityTable(
  tableName: "user",
  primaryKeyName: "id",
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  useSoftDeleting: false,
  fields: [
    SqfEntityField("name", DbType.text),
    SqfEntityField("email", DbType.text),
    SqfEntityField("phone", DbType.text),
    SqfEntityField("photo", DbType.text),
  ],
);

@SqfEntityBuilder(dbModel)
const dbModel = SqfEntityModel(
    dbVersion: 1,
    modelName: "teste",
    databaseName: "teste.db",
    databaseTables: [tableUser],
    sequences: [seqIdentity],
    bundledDatabasePath: null);
